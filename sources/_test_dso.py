import csv
import os
from datetime import datetime

BASE_DIR = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\+CONSULTA\LiquidityDashboard\sources"
MOV_FILE = os.path.join(BASE_DIR, "Mov 2023.csv")

def test_dso_avg():
    # 1305 entries (CxC)
    cxc_flow = 0
    v41_flow = 0
    
    with open(MOV_FILE, 'r', encoding='utf-8', errors='replace') as f:
        reader = csv.reader(f)
        for row in reader:
            if not row or len(row) < 12 or not row[0].isdigit(): continue
            try:
                dt = datetime.strptime(row[1].strip(), '%d/%m/%Y')
                if dt.year == 2023 and dt.month == 1:
                    codigo = row[2].strip()
                    val = float(row[10].replace(',','')) - float(row[11].replace(',',''))
                    if codigo.startswith('1305'):
                        cxc_flow += val
                    # Ventas (Group 41)
                    # We need the group. From previous trace, 41 accounts start with 41
                    if codigo.startswith('41'):
                        v41_flow += val
            except: continue
            
    print(f"Jan 2023 CxC End Balance: {cxc_flow:.2f}")
    print(f"Jan 2023 Ventas Flow: {v41_flow * -1:.2f}") # Inverted for revenue
    
    ventas = v41_flow * -1
    days = 31
    
    # Case A: Average = End Balance
    avg_a = cxc_flow
    dso_a = (avg_a * days) / ventas if ventas != 0 else 0
    print(f"DSO Case A (Avg=End): {dso_a:.4f}")
    
    # Case B: Average = (0 + End) / 2
    avg_b = (0 + cxc_flow) / 2
    dso_b = (avg_b * days) / ventas if ventas != 0 else 0
    print(f"DSO Case B (Avg=End/2): {dso_b:.4f}")

if __name__ == "__main__":
    test_dso_avg()
