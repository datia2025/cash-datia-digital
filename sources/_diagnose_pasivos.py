import csv
import os
from collections import defaultdict
from datetime import datetime

BASE_DIR = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\+CONSULTA\LiquidityDashboard\sources"
MOV_FILE = os.path.join(BASE_DIR, "Mov 2023.csv")

def diagnose_pasivos():
    moves = defaultdict(float)
    with open(MOV_FILE, 'r', encoding='utf-8', errors='replace') as f:
        reader = csv.reader(f)
        for row in reader:
            if not row or len(row) < 12 or not row[0].isdigit(): continue
            try:
                dt = datetime.strptime(row[1].strip(), '%d/%m/%Y')
                if dt.year == 2023 and dt.month == 1:
                    moves[row[2].strip()] += float(row[10].replace(',','')) - float(row[11].replace(',',''))
            except: continue
    
    # List all accounts starting with '2' that have movements
    print(f"Pasivo movements in Jan 2023:")
    total_raw = 0
    for a in sorted(moves.keys()):
        if a.startswith('2'):
            print(f"  {a}: {moves[a]:.2f}")
            total_raw += moves[a]
    print(f"Total Raw Pasivo: {total_raw:.2f}")

if __name__ == "__main__":
    diagnose_pasivos()
