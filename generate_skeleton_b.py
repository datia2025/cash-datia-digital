import json

# Data calculated from CSVs
# DSO (Days Sales Outstanding) - MAS CONSULTA 3104
dso_data = {
    "2023": {"Annual": 110.15, "1Q": 143.16, "2Q": 99.34, "3Q": 70.04, "4Q": 135.53, 
             "M": [280.61, 57.36, 91.43, 86.67, 87.92, 123.43, 33.08, 117.51, 59.53, 150.58, 114.13, 141.86]},
    "2024": {"Annual": 82.38, "1Q": 136.99, "2Q": 74.40, "3Q": 71.95, "4Q": 63.85, 
             "M": [99.46, 74.08, 237.44, 57.64, 91.74, 73.82, 82.41, 48.87, 84.56, 99.29, 51.51, 40.76]},
    "2025": {"Annual": 118.88, "1Q": 110.87, "2Q": 120.82, "3Q": 92.03, "4Q": 161.65, 
             "M": [111.41, 80.04, 141.17, 95.08, 167.96, 99.44, 75.19, 73.75, 127.16, 168.45, 252.03, 64.48]}
}

# DIO (Days Inventory Outstanding) - Always 0 for services
dio_data = {
    "2023": {"Annual": 0, "1Q": 0, "2Q": 0, "3Q": 0, "4Q": 0, "M": [0]*12},
    "2024": {"Annual": 0, "1Q": 0, "2Q": 0, "3Q": 0, "4Q": 0, "M": [0]*12},
    "2025": {"Annual": 0, "1Q": 0, "2Q": 0, "3Q": 0, "4Q": 0, "M": [0]*12}
}

# DPO (Days Payables Outstanding)
dpo_data = {
    "2023": {"Annual": 24.90, "1Q": 24.84, "2Q": 21.81, "3Q": 15.03, "4Q": 25.70, 
             "M": [22.06, 30.13, 22.34, 12.44, 25.73, 27.26, 13.83, 27.28, 3.97, 14.96, 55.48, 6.66]},
    "2024": {"Annual": 79.40, "1Q": 59.31, "2Q": 12.86, "3Q": 77.55, "4Q": 173.43, 
             "M": [87.73, 30.53, 59.66, 9.91, 10.00, 18.66, 60.33, 48.05, 124.28, 162.64, 216.82, 140.85]},
    "2025": {"Annual": 67.94, "1Q": 109.16, "2Q": 56.87, "3Q": 43.32, "4Q": 46.18, 
             "M": [47.76, 178.98, 100.73, 72.93, 51.84, 45.84, 73.73, 56.23, 0.0, 38.46, 100.09, 0.0]}
}

indicators = {
    "dso": dso_data,
    "dio": dio_data,
    "dpo": dpo_data
}

months = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]

payloads = []

def get_status(key, val):
    if key == "dso": return "success" if val < 45 else ("warning" if val < 90 else "danger")
    if key == "dio": return "success" # Services always good at 0
    if key == "dpo": return "success" if val > 45 else ("warning" if val > 20 else "danger")
    return "info"

# Helper for placeholders - I will fill these later manually or with a template
def generate_texts(indicator, year, period, value):
    # This is a template, I will replace it with the final expert text
    return {
        "pos": f"PLACEHOLDER POSITIVO PARA {indicator} {year} {period} VALOR {value}",
        "neg": f"PLACEHOLDER NEGATIVO PARA {indicator} {year} {period} VALOR {value}",
        "rec": f"PLACEHOLDER RECOMENDACION PARA {indicator} {year} {period} VALOR {value}"
    }

for key, data in indicators.items():
    for year, periods in data.items():
        # Annual and Quarterly
        for pk in ["Annual", "1Q", "2Q", "3Q", "4Q"]:
            val = periods[pk]
            status = get_status(key, val)
            payloads.append({
                "empresa_id": 3104,
                "indicador_key": key,
                "periodo_ano": int(year),
                "period_key": pk,
                "tipo": status,
                "analisis_positivo": "PENDING",
                "analisis_negativo": "PENDING",
                "recomendacion": "PENDING",
                "metodologia": f"Bloque B - Actividad - {pk}",
                "generado_por": "antigravity"
            })
        
        # Monthly Inter-annual (Only if 2025? No, they are comparisons)
        # The key is indicatorKey + _M + monthNumber
        if year == "2025": # We only need one record per month comparison
            for m_idx in range(12):
                month_num = m_idx + 1
                payloads.append({
                    "empresa_id": 3104,
                    "indicador_key": f"{key}_M{month_num}".upper(),
                    "periodo_ano": 2025,
                    "period_key": "Annual",
                    "tipo": "info",
                    "analisis_positivo": "PENDING",
                    "analisis_negativo": "PENDING",
                    "recomendacion": "PENDING",
                    "metodologia": f"Bloque B - Actividad - Comparativo Interanual M{month_num}",
                    "generado_por": "antigravity"
                })

with open('payload_skeleton_b.json', 'w') as f:
    json.dump(payloads, f, indent=2)
