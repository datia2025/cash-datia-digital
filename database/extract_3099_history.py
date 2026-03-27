import json
import os

FILE = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\MASCONSULTA\LiquidityDashboard\database\data_3099_full.json"

def extract_liquidity_history():
    with open(FILE, "r", encoding="utf-8") as f:
        data = json.load(f)
    
    indicators = data.get("indicadores", [])
    relevant_keys = ["ratio_efectivo", "capital_trabajo", "razon_corriente", "prueba_acida"]
    
    history = {}
    for ind in indicators:
        key = ind["indicador_key"]
        if key in relevant_keys:
            history[key] = ind["data"]
            
    # Organize by Year and Quarter
    # Quarters: Q1 (1-3), Q2 (4-6), Q3 (7-9), Q4 (10-12)
    structure = {}
    for year in [2023, 2024, 2025]:
        structure[year] = {"Annual": {}}
        for q in ["1Q", "2Q", "3Q", "4Q"]:
            structure[year][q] = {}
            
    for key, data_points in history.items():
        for dp in data_points:
            y = dp["year"]
            m = dp["month"]
            v = dp["valor"]
            
            if y not in structure: continue
            
            # Annual (taking the average of the year or the last month?)
            # Usually for ratios, the annual is its own record in the DB, but from this JSON we can take the last month as the year-end status.
            if m == 12:
                structure[y]["Annual"][key] = v
            
            # Quarters (taking the value of the last month of the quarter)
            if m == 3: structure[y]["1Q"][key] = v
            elif m == 6: structure[y]["2Q"][key] = v
            elif m == 9: structure[y]["3Q"][key] = v
            elif m == 12: structure[y]["4Q"][key] = v

    print(json.dumps(structure, indent=2))

if __name__ == "__main__":
    extract_liquidity_history()
