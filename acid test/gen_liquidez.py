"""
Generador de CSVs para módulo LIQUIDEZ
Usa la misma lógica DAX-aligned de calculate_indicators.py
Output: acid test/GENERADOS/LIQUIDEZ/
"""
import sys, os, csv
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'sources'))
from calculate_indicators import *

OUTPUT_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'GENERADOS', 'LIQUIDEZ')
os.makedirs(OUTPUT_DIR, exist_ok=True)

print("=" * 60)
print("GENERADOR — Módulo LIQUIDEZ")
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

LIQUIDEZ_INDICATORS = {
    'Razón Corriente': 'Times',
    'Capital de Trabajo': 'MM COP',
    'Prueba Ácida': 'Times',
    'Ratio de Efectivo': 'Times'
}

print(f"\n[7] Writing {len(LIQUIDEZ_INDICATORS)} CSVs to {OUTPUT_DIR}")

for indicator_name, header in LIQUIDEZ_INDICATORS.items():
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
                # Check if this indicator uses full precision (no ROUND in DAX)
                full_precision = header in ('Times', '$ COP') and indicator_name not in (
                    'Razón Corriente', 'Prueba Ácida', 'Ratio de Efectivo'
                )
                if full_precision:
                    val_fmt = val  # Keep full precision
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
print(f"GENERADOS: {len(LIQUIDEZ_INDICATORS)} archivos en {OUTPUT_DIR}")
print(f"{'=' * 60}")
