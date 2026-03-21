import csv
import os
from collections import defaultdict
from datetime import datetime

BASE_DIR = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\+CONSULTA\LiquidityDashboard\sources"
MOV_FILE = os.path.join(BASE_DIR, "Mov 2023.csv")

def generator_trace():
    print(f"Generator Trace for 23359501 in Jan 2023:")
    
    with open(MOV_FILE, 'r', encoding='utf-8', errors='replace') as f:
        # Use exact line-by-line reading from calculate_indicators.py
        lines = f.readlines()
        
    current_comprobante = ""
    for line in lines:
        line = line.strip()
        if line.startswith('Comprobante:'):
            current_comprobante = line.split(',')[0].replace('Comprobante:', '').strip()
            continue
        if not line or line.startswith(',,,') or not line[0].isdigit(): continue
        
        try:
            reader = csv.reader([line])
            fields = next(reader)
            if len(fields) < 12: continue
            
            fecha_str = fields[1].strip()
            codigo = fields[2].strip()
            if not fecha_str or not codigo: continue
            
            fecha = datetime.strptime(fecha_str, '%d/%m/%Y')
            if fecha.year == 2023 and fecha.month == 1 and codigo == "23359501":
                d = float(fields[10].replace(',',''))
                c = float(fields[11].replace(',',''))
                print(f"  Entry: Cmp={current_comprobante} Date={fecha_str} D={d} C={c}")
        except: continue

if __name__ == "__main__":
    generator_trace()
