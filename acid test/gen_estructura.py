"""
Generador de CSVs para módulo ESTRUCTURA
Usa la misma lógica DAX-aligned de calculate_indicators.py
Output: acid test/GENERADOS/ESTRUCTURA/
"""
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'sources'))
from calculate_indicators import *

OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'GENERADOS', 'ESTRUCTURA')
os.makedirs(OUTPUT_DIR, exist_ok=True)

print("=" * 60)
print("GENERADOR — Módulo ESTRUCTURA")
print("=" * 60)

# Run full pipeline
print("\n[1] Loading Master Account...")
accounts, group_termino = load_account_classification()

print("\n[2] Parsing movements...")
movements = parse_mov_files()

print("\n[3] Building balances...")
m_full, m_ytd, m_flows_op, m_full_ex998, m_ytd_op, m_ytd_all, m_closing, m_flows_all_single = build_monthly_balances(movements, accounts)

print("\n[4] Classifying accounts...")
classifications = classify_accounts(accounts, group_termino)

print("\n[5] Computing aggregates...")
aggregates = compute_aggregates(m_full, m_ytd, m_flows_op, classifications,
                                m_full_ex998, m_ytd_op, m_ytd_all, m_closing,
                                m_flows_all_single)

print("\n[6] Calculating indicators...")
results = calculate_indicators(aggregates)

# ESTRUCTURA indicators
ESTRUCTURA_INDICATORS = {
    'Ratio de Capitalización': '$ COP',
    'Cobertura de Activos Fijos': 'Times',
    'Estructura de la Deuda': 'Times',
    'Multiplicador de Capital': 'Times',
    'Ratio de PropiedadAutonomía': '%',
    'Relación DeudaPatrimonio': '$ COP',
    'Ratio de Deuda a Activos Tangibles': '$ COP',
}

print(f"\n[7] Writing {len(ESTRUCTURA_INDICATORS)} CSVs to {OUTPUT_DIR}")

import csv
for indicator_name, header in ESTRUCTURA_INDICATORS.items():
    data = results.get(indicator_name, [])
    if not data:
        print(f"  ⚠ No data for {indicator_name}")
        continue

    filepath = os.path.join(OUTPUT_DIR, f"{indicator_name}.csv")
    with open(filepath, 'w', newline='', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['Quarter', header, 'Period', 'Año Texto'])
        for q, val, period, year in data:
            if isinstance(val, float):
                full_precision = header in ('Times', '$ COP') and indicator_name not in (
                    'Cobertura de Activos Fijos', 'Estructura de la Deuda'
                )
                if full_precision:
                    val_fmt = val
                else:
                    rounded = round(val, 2)
                    if rounded == int(rounded):
                        val_fmt = int(rounded)
                    else:
                        val_fmt = rounded
            else:
                val_fmt = val
            writer.writerow([q, val_fmt, period, year])

    print(f"  ✓ {indicator_name}.csv ({len(data)} rows)")

print(f"\n{'=' * 60}")
print(f"GENERADOS: {len(ESTRUCTURA_INDICATORS)} archivos en {OUTPUT_DIR}")
print(f"{'=' * 60}")
