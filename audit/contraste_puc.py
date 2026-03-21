"""
contraste_puc.py - Contraste entre PUC.xlsx nuevo vs Master Account.xlsx original
LiquidityDashboard v2.0 - MAS CONSULTA SAS

Corre los mismos archivos Mov a traves de ambas fuentes de clasificacion y compara:
  1. Estructura: diferencias de cuentas, clases y grupos entre ambos archivos
  2. Clasificacion: cuentas que cambian de Tipo/Termino/EBITDA entre fuentes
  3. Indicadores: delta de los indicadores clave por periodo

Uso:
    python audit/contraste_puc.py
"""

import sys
import os
import glob
import re
from collections import defaultdict

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8', errors='replace')

# ============================================================
# RUTAS
# ============================================================
BASE_DIR    = os.path.dirname(os.path.abspath(__file__))
PROJECT_DIR = os.path.abspath(os.path.join(BASE_DIR, '..'))

# Fuente A: PUC.xlsx nuevo (DATOS ADICIONALES)
DATOS_ADICIONALES = os.path.abspath(
    os.path.join(PROJECT_DIR, '..', 'DATOS ADICIONALES')
)
PUC_NUEVO = os.path.join(DATOS_ADICIONALES, 'PUC.xlsx')

# Fuente B: Master Account.xlsx original (sources/)
SOURCES_DIR    = os.path.join(PROJECT_DIR, 'sources')
MASTER_ACCOUNT = os.path.join(SOURCES_DIR, 'Master Account.xlsx')

# Movimientos: preferir DATOS ADICIONALES (xlsx), fallback a sources (csv)
WORKER_DIR = os.path.join(PROJECT_DIR, 'worker')
sys.path.insert(0, WORKER_DIR)


# ============================================================
# HELPERS
# ============================================================
def discover_mov(folder):
    found = {}
    for ext in ('csv', 'xlsx'):
        for fp in glob.glob(os.path.join(folder, f'Mov*.{ext}')):
            m = re.search(r'(\d{4})', os.path.basename(fp))
            if m:
                year = int(m.group(1))
                if year not in found or ext == 'xlsx':
                    found[year] = fp
    return [found[y] for y in sorted(found.keys())]


def infer_years(mov_files):
    years = []
    for fp in mov_files:
        m = re.search(r'(\d{4})', os.path.basename(fp))
        if m:
            years.append(int(m.group(1)))
    return sorted(set(years)) if years else [2023, 2024, 2025]


def run_motor(master_file, mov_files, analysis_years, label):
    """Corre el pipeline completo con una fuente de clasificacion dada."""
    import calculate_indicators as ci

    # Override dinamico del motor
    ci.MASTER_FILE    = master_file
    ci.MOV_FILES      = mov_files
    ci.ANALYSIS_YEARS = analysis_years
    # SOURCES_DIR no se usa para la carga de datos, solo para rutas
    ci.SOURCES_DIR    = os.path.dirname(master_file)

    print(f"\n  [{label}] Cargando: {os.path.basename(master_file)}")
    accounts, group_termino = ci.load_account_classification()

    print(f"  [{label}] Parseando movimientos...")
    movements = ci.parse_mov_files()

    print(f"  [{label}] Calculando balances...")
    classifications = ci.classify_accounts(accounts, group_termino)
    (mb_full, mb_ytd, mf_op, mb_ex998, mf_ytd_op,
     mf_ytd_all, mf_closing, mf_all_single) = ci.build_monthly_balances(movements, accounts)

    aggregates = ci.compute_aggregates(
        mb_full, mb_ytd, mf_op, classifications,
        mb_ex998, mf_ytd_op, mf_ytd_all, mf_closing, mf_all_single
    )
    print(f"  [{label}] Periodos: {len(aggregates)}")

    return accounts, group_termino, aggregates, classifications, movements, ci


# ============================================================
# PARTE 1: Contraste estructural de cuentas
# ============================================================
def contraste_estructura(accts_a, accts_b, label_a, label_b):
    print("\n" + "="*65)
    print(f"PARTE 1: CONTRASTE ESTRUCTURAL DE CUENTAS")
    print(f"  A = {label_a}   |   B = {label_b}")
    print("="*65)

    set_a = set(accts_a.keys())
    set_b = set(accts_b.keys())

    solo_a = sorted(set_a - set_b)
    solo_b = sorted(set_b - set_a)
    comunes = set_a & set_b

    print(f"\n  Cuentas en A ({label_a}):      {len(set_a)}")
    print(f"  Cuentas en B ({label_b}): {len(set_b)}")
    print(f"  Cuentas comunes:                {len(comunes)}")
    print(f"  Solo en A (nuevas/extras):      {len(solo_a)}")
    print(f"  Solo en B (solo en Master):     {len(solo_b)}")

    # Cuentas que cambian de clasificacion
    conflictos = []
    for c in sorted(comunes):
        a_data = accts_a[c]
        b_data = accts_b[c]
        diffs = []
        for campo in ('tipo', 'grupo', 'termino', 'ebitda'):
            va = a_data.get(campo, '')
            vb = b_data.get(campo, '')
            if va != vb:
                diffs.append(f"{campo}: '{va}'->'{vb}'")
        if diffs:
            conflictos.append((c, diffs))

    print(f"\n  Cuentas comunes con clasificacion diferente: {len(conflictos)}")
    if conflictos:
        print(f"  (Formato: cuenta | campo: A->B)")
        for c, diffs in conflictos[:20]:
            nombre = accts_a[c].get('nombre', '')[:30]
            print(f"    {c}  {nombre:<32} {' | '.join(diffs)}")
        if len(conflictos) > 20:
            print(f"    ... y {len(conflictos)-20} mas")

    # Solo en A: por grupo
    if solo_a:
        por_grupo = defaultdict(list)
        for c in solo_a[:50]:
            g = c[:2]
            por_grupo[g].append(c)
        print(f"\n  Cuentas solo en {label_a} (muestra por grupo):")
        for g, cs in sorted(por_grupo.items())[:10]:
            clase = accts_a[cs[0]].get('clase', '?')[:20]
            print(f"    Grupo {g} ({clase}): {len(cs)} cuentas")

    # Solo en B: por grupo
    if solo_b:
        por_grupo = defaultdict(list)
        for c in solo_b:
            g = c[:2]
            por_grupo[g].append(c)
        print(f"\n  Cuentas solo en {label_b} (grupos):")
        for g, cs in sorted(por_grupo.items()):
            clase = accts_b[cs[0]].get('clase', '?')[:20]
            print(f"    Grupo {g} ({clase}): {len(cs)} cuentas")

    return solo_a, solo_b, conflictos


# ============================================================
# PARTE 2: Contraste de indicadores por periodo
# ============================================================
INDICADORES_CLAVE = [
    ('Razon Corriente',   lambda a, d, ci: ci.safe_div(d['ac'], d['pc'])),
    ('Prueba Acida',      lambda a, d, ci: ci.safe_div(d['ac'] - d['inv'], d['pc'])),
    ('Capital Trabajo',   lambda a, d, ci: d['ac'] - d['pc']),
    ('EBIT YTD',          lambda a, d, ci: a['ebit']),
    ('EBITDA YTD',        lambda a, d, ci: a['ebitda_dax']),
    ('Utilidad Neta',     lambda a, d, ci: a['util_neta']),
    ('Activo Corriente',  lambda a, d, ci: d['ac']),
    ('Pasivo Corriente',  lambda a, d, ci: d['pc']),
]

def contraste_indicadores(agg_a, agg_b, ci_a, ci_b, label_a, label_b):
    print("\n" + "="*65)
    print(f"PARTE 2: CONTRASTE DE INDICADORES POR PERIODO")
    print(f"  A = {label_a}   |   B = {label_b}")
    print("="*65)

    periodos_comunes = sorted(set(agg_a.keys()) & set(agg_b.keys()))
    if not periodos_comunes:
        print("  [WARN] No hay periodos comunes entre las dos fuentes.")
        return

    # Tabla resumen: mostrar ultimos 6 periodos
    periodos_mostrar = periodos_comunes[-6:]

    # Header
    header = f"  {'Indicador':<20} {'Año-Mes':<9} {'A':>15} {'B':>15} {'Delta':>12} {'Delta%':>8}"
    print(f"\n{header}")
    print("  " + "-"*82)

    max_delta_pct = []

    for ind_name, fn in INDICADORES_CLAVE:
        for (year, month) in periodos_mostrar:
            a_agg = agg_a[(year, month)]
            b_agg = agg_b[(year, month)]

            anio_base_a = ci_a.ANALYSIS_YEARS[0] if ci_a.ANALYSIS_YEARS else year
            anio_base_b = ci_b.ANALYSIS_YEARS[0] if ci_b.ANALYSIS_YEARS else year
            mode_a = 'ytd' if year == anio_base_a else 'full_rebase'
            mode_b = 'ytd' if year == anio_base_b else 'full_rebase'

            val_a = fn(a_agg, a_agg['modes'][mode_a], ci_a)
            val_b = fn(b_agg, b_agg['modes'][mode_b], ci_b)
            delta = val_a - val_b
            delta_pct = abs(delta / val_b * 100) if val_b != 0 else (0 if delta == 0 else float('inf'))

            flag = ""
            if delta_pct > 10:
                flag = " <<<"
                max_delta_pct.append((ind_name, year, month, delta_pct))
            elif delta_pct > 2:
                flag = " <"

            periodo_str = f"{year}-{month:02d}"
            print(f"  {ind_name:<20} {periodo_str:<9} {val_a:>15,.2f} {val_b:>15,.2f} {delta:>12,.2f} {delta_pct:>7.1f}%{flag}")
        print()

    if max_delta_pct:
        print(f"  [WARN] Indicadores con delta > 10%:")
        for ind, y, m, d in max_delta_pct:
            print(f"    {ind} en {y}-{m:02d}: {d:.1f}%")
    else:
        print(f"  [OK] Todos los indicadores tienen delta <= 10% — clasificacion consistente")


# ============================================================
# PARTE 3: Impacto de cuentas huerfanas
# ============================================================
def impacto_huerfanas(solo_a, accts_a, movements_a, label_a):
    """Cuantifica el peso de las cuentas que estan solo en A."""
    if not solo_a:
        return

    print("\n" + "="*65)
    print(f"PARTE 3: IMPACTO DE CUENTAS EXTRA EN {label_a}")
    print("="*65)

    # Sumar todos los debitos-creditos de esas cuentas
    totales = defaultdict(float)
    for (year, month, codigo), entries in movements_a.items():
        if codigo in solo_a:
            for e in entries:
                totales[codigo] += e['debito'] - e['credito']

    # Ordenar por valor absoluto
    por_impacto = sorted(totales.items(), key=lambda x: abs(x[1]), reverse=True)

    print(f"\n  Top 15 cuentas extra por saldo acumulado:")
    print(f"  {'Codigo':<12} {'Clase':<25} {'Grupo':<6} {'Tipo':<10} {'Saldo':>18}")
    print("  " + "-"*75)
    for codigo, saldo in por_impacto[:15]:
        data = accts_a.get(codigo, {})
        clase = data.get('clase', '?')[:23]
        grupo = data.get('grupo', '?')
        tipo  = data.get('tipo', '?')
        print(f"  {codigo:<12} {clase:<25} {grupo:<6} {tipo:<10} {saldo:>18,.0f}")

    if por_impacto:
        total_extra = sum(abs(s) for _, s in por_impacto)
        print(f"\n  Saldo absoluto total de cuentas extra: {total_extra:>18,.0f}")
        print(f"  Estas cuentas estan en PUC.xlsx pero NO en Master Account.")
        print(f"  Su clasificacion se deriva automaticamente por el motor.")


# ============================================================
# MAIN
# ============================================================
def main():
    print("=" * 65)
    print("  LiquidityDashboard - Contraste PUC.xlsx vs Master Account")
    print("=" * 65)

    # Verificar archivos
    print(f"\n  A (PUC nuevo):      {PUC_NUEVO}")
    print(f"  B (Master Account): {MASTER_ACCOUNT}")

    for path, nombre in [(PUC_NUEVO, 'PUC.xlsx'), (MASTER_ACCOUNT, 'Master Account.xlsx')]:
        if not os.path.exists(path):
            print(f"\n  [FAIL] No encontrado: {path}")
            sys.exit(1)

    # Decidir que Mov usar (DATOS ADICIONALES primero, luego sources/)
    mov_files = discover_mov(DATOS_ADICIONALES) or discover_mov(SOURCES_DIR)
    if not mov_files:
        print("  [FAIL] No se encontraron archivos Mov*.xlsx/csv")
        sys.exit(1)
    analysis_years = infer_years(mov_files)

    print(f"\n  Mov files: {[os.path.basename(f) for f in mov_files]}")
    print(f"  Anos:      {analysis_years}")

    # ── Fuente A: PUC.xlsx nuevo
    print("\n" + "-"*65)
    accts_a, gt_a, agg_a, cls_a, mov_a, ci_a = run_motor(
        PUC_NUEVO, mov_files, analysis_years, "PUC"
    )

    # ── Fuente B: Master Account.xlsx original
    print("\n" + "-"*65)
    # Para el Master Account, usamos los mismos Mov (mismo corpus de datos)
    accts_b, gt_b, agg_b, cls_b, mov_b, ci_b = run_motor(
        MASTER_ACCOUNT, mov_files, analysis_years, "MASTER"
    )

    # ── Contrastes
    label_a = "PUC.xlsx"
    label_b = "Master Acct"

    solo_a, solo_b, conflictos = contraste_estructura(accts_a, accts_b, label_a, label_b)
    contraste_indicadores(agg_a, agg_b, ci_a, ci_b, label_a, label_b)
    impacto_huerfanas(set(solo_a), accts_a, mov_a, label_a)

    # ── Veredicto final
    print("\n" + "="*65)
    print("VEREDICTO FINAL")
    print("="*65)

    n_conflictos = len(conflictos)
    n_extra_a    = len(solo_a)
    n_extra_b    = len(solo_b)

    if n_conflictos == 0 and n_extra_b == 0:
        print("  [OK] PUC.xlsx cubre TODO lo del Master Account")
        print("       sin conflictos de clasificacion.")
        print("       El procesamiento con PUC.xlsx es CONFIABLE.")
    elif n_conflictos < 10:
        print(f"  [OK] Clasificacion muy consistente ({n_conflictos} diferencias menores).")
        print(f"       PUC.xlsx tiene {n_extra_a} cuentas adicionales bien derivadas.")
    else:
        print(f"  [WARN] {n_conflictos} cuentas con clasificacion diferente.")
        print(f"         Revisar los conflictos arriba antes de confiar en el PUC.")

    print()


if __name__ == '__main__':
    main()
