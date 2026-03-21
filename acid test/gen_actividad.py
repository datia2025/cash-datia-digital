"""
Generador de CSVs para módulo ACTIVIDAD
Usa la misma lógica DAX-aligned de calculate_indicators.py
Output: acid test/GENERADOS/ACTIVIDAD/
"""
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'sources'))
from calculate_indicators import *

OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'GENERADOS', 'ACTIVIDAD')
os.makedirs(OUTPUT_DIR, exist_ok=True)

print("=" * 60)
print("GENERADOR — Módulo ACTIVIDAD")
print("=" * 60)

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

ACTIVIDAD_INDICATORS = {
    'Ciclo de Conversión de Efectivo': 'Days',
    'Días de Cartera (DSO)': 'Days',
    'Días de Inventario (DIO)': 'Days',
    'Días de Proveedores (DPO)': 'Days',
    'Rotación de Activos': 'Times',
    'Rotación de Cartera': 'Times',
    'Rotación de Inventarios': 'Times',
    'Rotación de Proveedores': 'Times',
}

print(f"\n[7] Writing {len(ACTIVIDAD_INDICATORS)} CSVs to {OUTPUT_DIR}")

import csv
for indicator_name, header in ACTIVIDAD_INDICATORS.items():
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
                full_precision = header in ('Times', '$ COP')
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
print(f"GENERADOS: {len(ACTIVIDAD_INDICATORS)} archivos en {OUTPUT_DIR}")
print(f"{'=' * 60}")
