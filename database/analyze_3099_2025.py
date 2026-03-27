import json

FILE = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\MASCONSULTA\LiquidityDashboard\database\data_3099_full.json"

def analyze():
    with open(FILE, "r", encoding="utf-8") as f:
        data = json.load(f)
    
    indicators = data.get("indicadores", [])
    relevant_keys = [
        "ratio_efectivo", "capital_trabajo", "dso", "dpo", "ciclo_conversion_efectivo",
        "margen_operacional", "margen_neto", "roe", "rotacion_activos", "multiplicador_capital",
        "cobertura_intereses", "deuda_ebitda", "endeudamiento_total", "estructura_deuda"
    ]
    
    results = {}
    for ind in indicators:
        key = ind["indicador_key"]
        if key in relevant_keys:
            # Get Dec 2025 or latest 2025
            val2025 = [p for p in ind["data"] if p["year"] == 2025]
            if val2025:
                # Sort by month and get latest
                latest = sorted(val2025, key=lambda x: x["month"])[-1]
                prev = sorted(val2025, key=lambda x: x["month"])[-2] if len(val2025) >= 2 else None
                results[key] = {
                    "value": latest["valor"],
                    "month": latest["month"],
                    "prev": prev["valor"] if prev else None
                }
    
    print(json.dumps(results, indent=2))

if __name__ == "__main__":
    analyze()
