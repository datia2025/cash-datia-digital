"""
diagnostico_puc.py - Script de Diagnostico para Auditoria PUC
LiquidityDashboard v2.0 - MAS CONSULTA SAS

Valida 3 cosas criticas antes de confiar en el procesamiento:
  1. Auto-deteccion y cobertura de cuentas PUC.xlsx
  2. Deteccion de comprobante 998 (cierre anual) por anio
  3. Spot-check de indicadores clave

Uso:
    python audit/diagnostico_puc.py
"""

import sys
import os

# Fix Windows console encoding
if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8', errors='replace')

# ============================================================
# RUTAS — ajustar si los archivos estan en otra ubicacion
# ============================================================
BASE_DIR    = os.path.dirname(os.path.abspath(__file__))
PROJECT_DIR = os.path.abspath(os.path.join(BASE_DIR, '..'))

# Fuente de datos primaria: Data/ (MAS CONSULTA SAS, NIT 901271750)
# Layout: subcarpetas por año (Data/2021/, Data/2022/, etc.)
DATA_DIR = os.path.abspath(
    os.path.join(PROJECT_DIR, '..', 'Data')
)
# Fuente alternativa (DATOS ADICIONALES/ — CARLOS TAMAYO, NIT 830091650)
DATOS_ADICIONALES = os.path.abspath(
    os.path.join(PROJECT_DIR, '..', 'DATOS ADICIONALES')
)
SOURCES_DIR = os.path.join(PROJECT_DIR, 'sources')

# Apunta al worker para importar el motor
WORKER_DIR = os.path.join(PROJECT_DIR, 'worker')
sys.path.insert(0, WORKER_DIR)

# ============================================================
# VALORES DE REFERENCIA (opcional — llenar con datos del contador)
# Formato: {(year, month): {'Razon Corriente': valor, ...}}
# ============================================================
REFERENCIA = {
    # Ejemplo:
    # (2024, 12): {
    #     'Razon Corriente': 1.45,
    #     'Prueba Acida':    1.12,
    # },
}
TOLERANCIA = 0.05  # 5%

# ============================================================
# SETUP DINAMICO DE RUTAS
# ============================================================
def setup_motor(datos_dir, master_filename='PUC.xlsx'):
    """
    Configura el motor para que lea desde datos_dir.
    Retorna True si los archivos existen, False si no.
    """
    # Verificar que la carpeta existe
    if not os.path.isdir(datos_dir):
        print(f"  ERROR: No existe la carpeta de datos: {datos_dir}")
        return False

    import calculate_indicators as ci

    # Override SOURCES_DIR y MASTER_FILE en el motor
    ci.SOURCES_DIR = datos_dir
    ci.OUTPUT_DIR  = os.path.join(datos_dir, 'GENERADOS_DIAG')
    ci.MASTER_FILE = os.path.join(datos_dir, master_filename)

    if not os.path.exists(ci.MASTER_FILE):
        # Intentar con Master Account.xlsx si PUC.xlsx no existe
        alt = os.path.join(datos_dir, 'Master Account.xlsx')
        if os.path.exists(alt):
            ci.MASTER_FILE = alt
            print(f"  Usando Master Account.xlsx (no se encontro PUC.xlsx)")
        else:
            print(f"  ERROR: No hay PUC.xlsx ni Master Account.xlsx en {datos_dir}")
            return False

    # Redescubrir archivos Mov en la carpeta
    ci.MOV_FILES = ci.discover_mov_files.__wrapped__(datos_dir) if hasattr(ci.discover_mov_files, '__wrapped__') else _discover_mov(datos_dir)
    ci.ANALYSIS_YEARS = _infer_years(ci.MOV_FILES)

    return True


def _discover_mov(datos_dir):
    """
    Redescubrir Mov*.xlsx/csv en una carpeta dada.
    Soporta dos layouts:
      - Plano: datos_dir/Mov 2024.xlsx
      - Por año: datos_dir/2024/Mov 2024.xlsx
    """
    import glob, re
    found = {}
    # Layout plano
    for ext in ('csv', 'xlsx'):
        for fp in glob.glob(os.path.join(datos_dir, f'Mov*.{ext}')):
            m = re.search(r'(\d{4})', os.path.basename(fp))
            if m:
                year = int(m.group(1))
                if year not in found or ext == 'xlsx':
                    found[year] = fp
    # Layout por año (Data/2021/, Data/2022/, ...)
    for ext in ('csv', 'xlsx'):
        for fp in glob.glob(os.path.join(datos_dir, '*', f'Mov*.{ext}')):
            m = re.search(r'(\d{4})', os.path.basename(fp))
            if m:
                year = int(m.group(1))
                if year not in found or ext == 'xlsx':
                    found[year] = fp
    return [found[y] for y in sorted(found.keys())]


def _infer_years(mov_files):
    import re
    years = []
    for fp in mov_files:
        m = re.search(r'(\d{4})', os.path.basename(fp))
        if m:
            years.append(int(m.group(1)))
    return sorted(set(years)) if years else [2023, 2024, 2025]


# ============================================================
# CHECK 1: Cobertura de cuentas PUC
# ============================================================
def check_cobertura(accounts, movements):
    print("\n" + "="*60)
    print("CHECK 1: COBERTURA DE CUENTAS PUC")
    print("="*60)

    codigos_mov = set(codigo for (_, _, codigo) in movements.keys())
    codigos_puc = set(accounts.keys())

    huerfanas = codigos_mov - codigos_puc
    cubiertas = codigos_mov & codigos_puc
    cobertura_pct = len(cubiertas) / len(codigos_mov) * 100 if codigos_mov else 0

    print(f"  Cuentas en archivos Mov:           {len(codigos_mov)}")
    print(f"  Cuentas cargadas desde PUC/Master: {len(codigos_puc)}")
    print(f"  Cuentas cubiertas:                 {len(cubiertas)}")
    print(f"  Cuentas huerfanas (sin mapeo):     {len(huerfanas)}")
    print(f"  Cobertura:                         {cobertura_pct:.1f}%")

    if cobertura_pct >= 98:
        print("  [OK] COBERTURA EXCELENTE (>=98%)")
    elif cobertura_pct >= 95:
        print("  [WARN] COBERTURA ACEPTABLE (95-98%) — revisar huerfanas")
    else:
        print("  [FAIL] COBERTURA BAJA (<95%) — indicadores pueden ser inexactos")

    if huerfanas:
        print(f"\n  Cuentas huerfanas ({len(huerfanas)} total):")
        por_clase = {}
        for c in sorted(huerfanas):
            clase = c[0] if c else '?'
            por_clase.setdefault(clase, []).append(c)
        for clase, cuentas in sorted(por_clase.items()):
            print(f"    Clase {clase}: {cuentas[:10]}{'...' if len(cuentas)>10 else ''}")

    return cobertura_pct, huerfanas


# ============================================================
# CHECK 2: Deteccion comprobante 998
# ============================================================
def check_998(movements):
    print("\n" + "="*60)
    print("CHECK 2: DETECCION COMPROBANTE 998 (CIERRE ANUAL)")
    print("="*60)

    cierres_por_anio = {}
    for (year, month, _), entries in movements.items():
        for e in entries:
            if e['is_closing']:
                cierres_por_anio.setdefault(year, set()).add(month)

    anios_disponibles = sorted(set(y for y, m, c in movements.keys()))

    for anio in anios_disponibles:
        meses = sorted(cierres_por_anio.get(anio, set()))
        if meses:
            print(f"  {anio}: [OK] Entradas de cierre detectadas en mes(es): {meses}")
        else:
            print(f"  {anio}: [WARN] SIN comprobante 998 — Patrimonio/EBITDA de {anio} pueden distorsionarse")

    if not cierres_por_anio:
        print()
        print("  [FAIL] NINGUN cierre detectado en ningun anio.")
        print("  Causa probable: columna 'Clase Documento' no contiene '998'")
        print("  o las filas 'Comprobante:' no estan en los archivos .xlsx")

    return cierres_por_anio


# ============================================================
# CHECK 3: Spot-check de indicadores
# ============================================================
def check_indicadores(aggregates, ci):
    print("\n" + "="*60)
    print("CHECK 3: SPOT-CHECK DE INDICADORES CLAVE")
    print("="*60)

    periodos = sorted(aggregates.keys())
    if not periodos:
        print("  [FAIL] No hay periodos calculados. Revisar archivos Mov.")
        return

    if REFERENCIA:
        ok = 0
        total = 0
        for (year, month), ref_vals in REFERENCIA.items():
            if (year, month) not in aggregates:
                print(f"  [WARN] Periodo ({year},{month}) no encontrado")
                continue
            a = aggregates[(year, month)]
            anio_base = ci.ANALYSIS_YEARS[0] if ci.ANALYSIS_YEARS else year
            mode = 'ytd' if year == anio_base else 'full_rebase'
            d = a['modes'][mode]
            calc = {
                'Razon Corriente': ci.safe_div(d['ac'], d['pc']),
                'Prueba Acida':    ci.safe_div(d['ac'] - d['inv'], d['pc']),
                'Capital de Trabajo': d['ac'] - d['pc'],
                'Margen Bruto':    ci.safe_div(a['ing_n'] - a['cos'], a['ing_n']),
            }
            print(f"\n  -- {year}-{month:02d} --")
            for ind, ref_val in ref_vals.items():
                if ind not in calc:
                    continue
                val = calc[ind]
                diff_pct = abs(val - ref_val) / abs(ref_val) * 100 if ref_val != 0 else 0
                match = diff_pct <= TOLERANCIA * 100
                status = "[OK]" if match else "[FAIL]"
                print(f"    {status} {ind:<30} calc={val:>10.4f}  ref={ref_val:>10.4f}  diff={diff_pct:.1f}%")
                total += 1
                if match:
                    ok += 1
        if total > 0:
            print(f"\n  Resultado: {ok}/{total} indicadores dentro de tolerancia")
    else:
        # Sin referencia: mostrar ultimos 3 periodos
        print("  (Sin valores de referencia — mostrando ultimos 3 periodos)")
        for p in periodos[-3:]:
            y, m = p
            a = aggregates[p]
            anio_base = ci.ANALYSIS_YEARS[0] if ci.ANALYSIS_YEARS else y
            mode = 'ytd' if y == anio_base else 'full_rebase'
            d = a['modes'][mode]
            print(f"\n  -- {y}-{m:02d} --")
            print(f"    Razon Corriente:      {ci.safe_div(d['ac'], d['pc']):>12.4f}")
            print(f"    Prueba Acida:         {ci.safe_div(d['ac']-d['inv'], d['pc']):>12.4f}")
            print(f"    Capital de Trabajo:   {d['ac']-d['pc']:>15,.0f}")
            print(f"    Activo Corriente:     {d['ac']:>15,.0f}")
            print(f"    Pasivo Corriente:     {d['pc']:>15,.0f}")
            print(f"    EBIT (YTD):           {a['ebit']:>15,.0f}")
            print(f"    EBITDA (YTD):         {a['ebitda_dax']:>15,.0f}")
            print(f"    Utilidad Neta:        {a['util_neta']:>15,.0f}")


# ============================================================
# MAIN
# ============================================================
def main():
    print("=" * 60)
    print("  LiquidityDashboard - Diagnostico PUC")
    print("=" * 60)

    # Prioridad: Data/ (MAS CONSULTA SAS) > DATOS ADICIONALES/ > sources/
    if os.path.isdir(DATA_DIR):
        datos_dir = DATA_DIR
        print(f"\n  Carpeta de datos: Data/ (MAS CONSULTA SAS, NIT 901271750)")
    elif os.path.isdir(DATOS_ADICIONALES):
        datos_dir = DATOS_ADICIONALES
        print(f"\n  Carpeta de datos: DATOS ADICIONALES/ (ADVERTENCIA: puede ser otra empresa)")
    else:
        datos_dir = SOURCES_DIR
        print(f"\n  Carpeta de datos: sources/")

    # Lista lo que hay en la carpeta (nivel raiz)
    archivos = os.listdir(datos_dir)
    xlsx_files = [f for f in archivos if f.lower().endswith('.xlsx')]
    print(f"  Archivos .xlsx en raiz: {xlsx_files}")

    # Preferencia de PUC: PUC ADICIONAL.xlsx > PUC.xlsx > Master Account.xlsx
    if 'PUC ADICIONAL.xlsx' in archivos:
        master_fname = 'PUC ADICIONAL.xlsx'
    elif 'PUC.xlsx' in archivos:
        master_fname = 'PUC.xlsx'
    else:
        master_fname = 'Master Account.xlsx'
    print(f"  Archivo maestro: {master_fname}")

    # -- Setup del motor con las rutas correctas
    import calculate_indicators as ci

    # Redirigir rutas al motor
    ci.SOURCES_DIR = datos_dir
    ci.MASTER_FILE = os.path.join(datos_dir, master_fname)
    ci.MOV_FILES   = _discover_mov(datos_dir)
    ci.ANALYSIS_YEARS = _infer_years(ci.MOV_FILES)

    print(f"\n  Archivos Mov detectados: {[os.path.basename(f) for f in ci.MOV_FILES]}")
    print(f"  Anos de analisis:        {ci.ANALYSIS_YEARS}")

    if not ci.MOV_FILES:
        print("\n  [FAIL] No se encontraron archivos Mov*.xlsx/csv en la carpeta.")
        print(f"         Verificar que existen en: {datos_dir}")
        sys.exit(1)

    # -- Cargar clasificacion de cuentas
    print("\n-- Cargando clasificacion de cuentas...")
    accounts, group_termino = ci.load_account_classification()

    # -- Parsear movimientos
    print("\n-- Parseando archivos de movimientos...")
    movements = ci.parse_mov_files()
    periodos_unicos = set((y, m) for y, m, c in movements.keys())
    print(f"  Periodos unicos (anio, mes): {len(periodos_unicos)}")

    # -- Checks
    cobertura_pct, huerfanas = check_cobertura(accounts, movements)
    cierres = check_998(movements)

    # -- Calcular aggregates
    print("\n-- Calculando balances y aggregates...")
    classifications = ci.classify_accounts(accounts, group_termino)
    (mb_full, mb_ytd, mf_op, mb_ex998, mf_ytd_op,
     mf_ytd_all, mf_closing, mf_all_single) = ci.build_monthly_balances(movements, accounts)

    aggregates = ci.compute_aggregates(
        mb_full, mb_ytd, mf_op, classifications,
        mb_ex998, mf_ytd_op, mf_ytd_all, mf_closing, mf_all_single
    )
    print(f"  Periodos en aggregates: {len(aggregates)}")

    check_indicadores(aggregates, ci)

    # -- Resumen final
    print("\n" + "=" * 60)
    print("RESUMEN FINAL")
    print("=" * 60)
    status_cob = "[OK]" if cobertura_pct >= 98 else "[WARN]" if cobertura_pct >= 95 else "[FAIL]"
    status_998 = "[OK]" if cierres else "[WARN]"
    print(f"  {status_cob}  Cobertura PUC:       {cobertura_pct:.1f}%  ({len(huerfanas)} huerfanas)")
    print(f"  {status_998}  Cierre 998:          {'Detectado en ' + str(sorted(cierres.keys())) if cierres else 'NO detectado'}")
    print(f"  [INFO] Periodos procesados: {len(aggregates)}")
    print(f"  [INFO] Anos: {ci.ANALYSIS_YEARS}")
    if not REFERENCIA:
        print()
        print("  Para validacion completa, agrega valores de referencia")
        print("  en la seccion REFERENCIA al inicio del script y vuelve a correr.")
    print()


if __name__ == '__main__':
    main()
