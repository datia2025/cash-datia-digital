import csv
import os
import re

BASE_DIR = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\+CONSULTA\LiquidityDashboard\sources"
files = [f for f in os.listdir(BASE_DIR) if f.startswith('Mov ') and f.endswith('.csv')]

def final_audit():
    print(f"{'Archivo':<15} | {'Documento':<15} | {'Cuenta':<10} | {'Debito':<15} | {'Credito':<15}")
    print("-" * 80)
    
    found_any = False
    for fn in files:
        fpath = os.path.join(BASE_DIR, fn)
        with open(fpath, 'r', encoding='utf-8', errors='replace') as f:
            current_doc = ""
            for line in f:
                if 'Comprobante:' in line:
                    current_doc = line.split(',')[0].replace('Comprobante:', '').strip()
                
                # Check if it's a data line (starts with number)
                if line and line[0].isdigit():
                    if '998' in current_doc:
                        parts = next(csv.reader([line]))
                        if len(parts) >= 12:
                            codigo = parts[2].strip()
                            if codigo.startswith(('1', '2')):
                                deb = parts[10].strip()
                                cre = parts[11].strip()
                                print(f"{fn:<15} | {current_doc:<15} | {codigo:<10} | {deb:<15} | {cre:<15}")
                                found_any = True
    
    if not found_any:
        print("RESULTADO: No se encontraron cuentas de Activo (1x) o Pasivo (2x) en comprobantes 998.")

if __name__ == "__main__":
    final_audit()
