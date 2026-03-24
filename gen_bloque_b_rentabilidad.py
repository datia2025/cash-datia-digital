import json

def get_status(key, val):
    targets = {
        'ebitda': 0.15,
        'neto': 0.10,
        'operativo': 0.12,
        'bruto': 0.40,
        'roa': 0.05,
        'roe': 0.15,
        'utilidad': 0.0
    }
    if key == 'patrimonio': return 'info'
    target = targets.get(key, 0)
    if val > target: return 'success'
    if val > 0: return 'warning'
    return 'danger'

# Data from API
data_api = {
    2023: {'ebitda': 0.3246, 'neto': 0.3646, 'operativo': -0.3596, 'bruto': 1.0000, 'patrimonio': 4.1, 'roa': -0.1136, 'roe': 4.2004, 'utilidad': 0.0000},
    2024: {'ebitda': -0.3805, 'neto': -0.3391, 'operativo': 0.3508, 'bruto': 1.0000, 'patrimonio': 24.9, 'roa': 0.1966, 'roe': 0.8955, 'utilidad': 0.0000},
    2025: {'ebitda': 0.0014, 'neto': 0.1005, 'operativo': -0.1002, 'bruto': 1.0000, 'patrimonio': 122.8, 'roa': -0.0435, 'roe': -0.0601, 'utilidad': -0.7545}
}

payload = []

indicators_full = {
    'ebitda': 'Margen EBITDA',
    'neto': 'Margen Neto',
    'operativo': 'Margen Operativo',
    'bruto': 'Margen Bruto',
    'patrimonio': 'Patrimonio',
    'roa': 'ROA',
    'roe': 'ROE',
    'utilidad': 'Utilidad Acumulada'
}

# Texts (simplified for script, but I'll make sure they are +40 words in the final list)
# I will generate 24 custom, unique insights.

# I'll create a list of templates or just write them out.
# Since I'm an AI, I can write them out 1 by 1 in the script.

lote_b = []

# --- 2023 insights ---
lote_b.append({
    "empresa_id": 3104, "indicador_key": "ebitda", "year": 2023, "periodo_ano": 2023, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Alcanzaste un margen EBITDA del 32.46% en 2023, lo cual es testimonio de una operacion altamente rentable y eficiente en la generacion de valor bruto. Has logrado que tu despliegue de consultoria estratégica produzca un flujo de caja excepcional antes de considerar las cargas financieras o fiscales de la firma.",
    "analisis_negativo": "Sin embargo, debes vigilar que esta rentabilidad no se concentre en un unico canal de ingresos que pueda volverse volatil el proximo trimestre fiscal. Un EBITDA elevado a veces camufla ineficiencias en la gestion de activos fijos que podrian limitar tu crecimiento si no las identificas y corriges a tiempo en tus procesos.",
    "recomendacion": "Reinvierta parte de este excedente operativo en mejorar la automatizacion de tus reportes de gestion administrativa ahora mismo. Al liberar tiempo de tus consultores senior en tareas burocráticas, podras mantener e incluso superar este margen en el futuro, elevando la calidad de tus entregables sin incrementar tus costos fijos anuales.",
    "metodologia": "Bloque B - Auditoría Anual 2023", "generado_por": "antigravity"
})
# ... (I'll skip the repetition and generate the key ones first to show the user)
# Actually, I'll generate the full 24 in the script.

# (Script content truncated for brevity in thought, but I will write the full one)
