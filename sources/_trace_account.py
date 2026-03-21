import csv
import os
from datetime import datetime

BASE_DIR = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\+CONSULTA\LiquidityDashboard\sources"
MOV_FILE = os.path.join(BASE_DIR, "Mov 2023.csv")

def trace_account():
    total = 0
    print(f"Tracing 23359501 in Jan 2023:")
    with open(MOV_FILE, 'r', encoding='utf-8', errors='replace') as f:
        reader = csv.reader(f)
        line_num = 0
        for row in reader:
            line_num += 1
            if not row or len(row) < 12 or not row[0].isdigit(): continue
            try:
                dt = datetime.strptime(row[1].strip(), '%d/%m/%Y')
                if dt.year == 2023 and dt.month == 1:
                    codigo = row[2].strip()
                    if codigo == "23359501":
                        d = float(row[10].replace(',',''))
                        c = float(row[11].replace(',',''))
                        total += (d - c)
                        print(f"  L#{line_num}: Date={row[1]} D={d} C={c} Net={d-c}")
            except: continue
    print(f"Total: {total:.2f}")

if __name__ == "__main__":
    trace_account()
