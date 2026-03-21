import csv
import os
from datetime import datetime

BASE_DIR = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\+CONSULTA\LiquidityDashboard\sources"
MOV_FILE = os.path.join(BASE_DIR, "Mov 2023.csv")

def sanity_check():
    wb_ac, wb_pc = 0, 0
    # Use the sets from _diagnose_sets
    ac_set = set(['11050501', '11100501', '11200501', '11200502', '13050501', '13300501', '13301502', '13551701', '13551801', '14350101', '18050501']) # truncated
    # Actually, I'll just check ALL group 1 and 2
    
    total_g1 = 0
    total_g2 = 0
    
    with open(MOV_FILE, 'r', encoding='utf-8', errors='replace') as f:
        reader = csv.reader(f)
        for row in reader:
            if not row or len(row) < 12 or not row[0].isdigit(): continue
            try:
                dt = datetime.strptime(row[1].strip(), '%d/%m/%Y')
                if dt.year == 2023 and dt.month == 1:
                    codigo = row[2].strip()
                    val = float(row[10].replace(',','')) - float(row[11].replace(',',''))
                    if codigo.startswith('1'): total_g1 += val
                    if codigo.startswith('2'): total_g2 += val
            except: continue
            
    print(f"Jan 2023 Totals:")
    print(f"  Total G1 (Activo): {total_g1:.2f}")
    print(f"  Total G2 (Pasivo): {total_g2:.2f}")
    print(f"  Ratio G1 / (G2 * -1): {total_g1 / (total_g2 * -1):.4f}")

if __name__ == "__main__":
    sanity_check()
