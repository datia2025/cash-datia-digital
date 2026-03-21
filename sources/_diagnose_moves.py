import csv
import os
from collections import defaultdict
from datetime import datetime

BASE_DIR = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\+CONSULTA\LiquidityDashboard\sources"
MOV_FILE = os.path.join(BASE_DIR, "Mov 2023.csv")

def diagnose_moves():
    # Audit logic parsing
    audit_moves = defaultdict(float)
    with open(MOV_FILE, 'r', encoding='utf-8', errors='replace') as f:
        reader = csv.reader(f)
        for row in reader:
            if not row or len(row) < 12 or not row[0].isdigit(): continue
            try:
                dt = datetime.strptime(row[1].strip(), '%d/%m/%Y')
                if dt.year == 2023 and dt.month == 1:
                    audit_moves[row[2].strip()] += float(row[10].replace(',','')) - float(row[11].replace(',',''))
            except: continue
    
    # Check a few accounts
    print(f"Audit Jan 2023: {len(audit_moves)} accounts")
    for a in sorted(audit_moves.keys())[:10]:
        print(f"  {a}: {audit_moves[a]:.2f}")
    
    # Total for AC/PC
    # (Assuming we have the sets)
    
if __name__ == "__main__":
    diagnose_moves()
