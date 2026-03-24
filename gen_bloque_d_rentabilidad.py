import json
import argparse
import urllib.request
import re

# ==============================================================================
# GENERADOR BLOQUE D: RENTABILIDAD (VERSION AUDITOR - SIN TECNICISMOS)
# Genera 96 registros (8 KPIs x 12 meses) con lenguaje Gerente-a-Gerente.
# Prohibido: EBITDA, Margen, ROA, ROE, etc., en la narrativa.
# ==============================================================================

BASE_URL = "https://datia-liquidity-worker.coaba7.easypanel.host/api/indicadores"

months_names = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio",
                "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]

def get_data(empresa_id):
    url = f"{BASE_URL}/{empresa_id}?modulo=rentabilidad"
    req = urllib.request.Request(url)
    with urllib.request.urlopen(req) as response:
        return json.loads(response.read().decode('utf-8'))

# Mapeo de conceptos de negocio por KPI para evitar jerga técnica
KPI_CONCEPTS = {
    "ebitda": {
        "name": "Capacidad de Generación Operativa",
        "positive": "la eficiencia con la que tu equipo transforma el esfuerzo comercial en dinero real antes de cualquier compromiso financiero",
        "negative": "la agilidad de tu estructura de costos fijos, que parece estar pesando más que la tracción de tus ventas",
        "rec": "ajustar las tuercas de tus gastos de personal y administración para que la operación sea más liviana y rentable"
    },
    "neto": {
        "name": "Ganancia Real Final",
        "positive": "la riqueza limpia que queda en tu bolsillo después de haber cubierto absolutamente todos los compromisos",
        "negative": "la salud de la última línea de tu balance, donde el esfuerzo de todo el mes se está diluyendo antes de llegar a ti",
        "rec": "revisar dónde se está escapando el valor en el tramo final, desde impuestos hasta costos financieros innecesarios"
    },
    "operativo": {
        "name": "Rendimiento del Modelo de Negocio",
        "positive": "la solidez de tu actividad principal de consultoría, demostrando que tu servicio es inherentemente rentable",
        "negative": "la eficacia de tu ejecución técnica, pues te está costando más energía y dinero producir lo mismo que antes",
        "rec": "optimizar la dedicación de tus consultores senior y eliminar procesos que quitan tiempo sin aportar valor al cliente"
    },
    "bruto": {
        "name": "Poder de Cobro y Valor Percibido",
        "positive": "tu maestría para fijar precios premium que el mercado valida sin cuestionar el costo de tu talento",
        "negative": "tu margen de maniobra inicial, indicando que estás absorbiendo sobrecostos que deberías trasladar a tus tarifas",
        "rec": "renegociar tus acuerdos con proveedores externos y ajustar tus honorarios para proteger tu beneficio base"
    },
    "roa": {
        "name": "Productividad de tu Infraestructura",
        "positive": "el provecho que le sacas cada herramienta, software y recurso físico que has puesto al servicio de la firma",
        "negative": "la eficiencia de tus recursos invertidos, sugiriendo que tienes capacidades instaladas que no te están devolviendo nada",
        "rec": "desinvertir en herramientas que no uses y enfocar tus recursos tecnológicos solo en lo que acelere la facturación"
    },
    "roe": {
        "name": "Retorno de tu Inversión Personal",
        "positive": "el premio a tu apuesta como empresario, logrando que tu patrimonio crezca mucho más rápido que en cualquier otro negocio",
        "negative": "la compensación por el riesgo que asumes, pues tu capital no está rindiendo lo que tu esfuerzo y tiempo merecen",
        "rec": "maximizar la eficiencia del uso del dinero de los socios y evitar inyectar más capital en áreas de baja rentabilidad"
    },
    "patrimonio": {
        "name": "Solidez de tu Patrimonio",
        "positive": "la fortaleza de la muralla financiera que has construido, dándote una independencia total frente a terceros",
        "negative": "la integridad del valor real de tu empresa, que parece estar estancándose ante el retiro excesivo de recursos",
        "rec": "fortalecer tus reservas y ser más conservador con los retiros para asegurar que la empresa crezca en valor año tras año"
    },
    "utilidad": {
        "name": "Acumulación de Riqueza Corporativa",
        "positive": "la velocidad con la que estás acumulando beneficios, creando un colchón de seguridad extraordinario para el futuro",
        "negative": "el ritmo de prosperidad de la firma, indicando que este periodo ha sido menos generoso en excedentes que tu historia",
        "rec": "activar un plan de aceleración de cierres de proyectos para recuperar la senda de crecimiento que siempre has tenido"
    }
}

# 12 Escenarios de Negocio Reales (Uno por mes)
MONTH_SCENARIOS = {
    "Enero": "el arranque de este nuevo ciclo donde la planeación y el control del primer impulso son vitales para el resto del año",
    "Febrero": "la etapa de estabilización tras el reinicio de actividades, donde la disciplina operativa marca la diferencia estratégica",
    "Marzo": "el cierre del primer hito trimestral y la rendición de cuentas ante los socios sobre la efectividad de la visión gerencial",
    "Abril": "la transición al segundo cuarto del año, enfrentando retos de flujo y compromisos que ponen a prueba tu agilidad operativa",
    "Mayo": "el desarrollo pleno de los proyectos contratados, donde la eficiencia en la ejecución técnica es la que protege tus excedentes",
    "Junio": "el punto medio del ejercicio fiscal, ideal para evaluar si el modelo de negocio está entregando la riqueza que proyectaste",
    "Julio": "el inicio del segundo semestre, donde refrescar la estrategia y cuidar cada peso es fundamental para asegurar un cierre sólido",
    "Agosto": "un periodo que suele ser más pausado pero donde la estructura de gastos no se detiene, exigiendo una gerencia muy atenta",
    "Septiembre": "la aceleración comercial del tercer trimestre, donde maximizar la captura de valor es la prioridad absoluta de la firma",
    "Octubre": "la preparación para la recta final, donde no se pueden permitir fugas de dinero que comprometan la rentabilidad acumulada",
    "Noviembre": "el mes de cosecha y cierres intensos, donde la capacidad de entrega de tu equipo define qué tanto valor queda en casa",
    "Diciembre": "el balance final de tu gestión, donde se consolidan los frutos de todo un año de esfuerzo, liderazgo y decisiones clave"
}

def generate_auditor_narrative(kpi_key, month, improved, delta):
    kpi = KPI_CONCEPTS[kpi_key]
    scenario = MONTH_SCENARIOS[month]
    d_text = f"{abs(delta):.1f}%"
    
    if improved:
        pos = f"[Sesion Gerencial - {month}] Al auditar {kpi['name']}, noto con gran satisfaccion que durante {scenario} has logrado un desempeño superior al promedio histórico por un margen del {d_text}. Esto confirma que {kpi['positive']}. Tu liderazgo ha permitido que este periodo sea un ejemplo de maestria en la gestion de recursos, situándote en una posición de gran ventaja estratégica frente a lo que venías haciendo años atrás."
        neg = f"[Sesion Gerencial - {month}] Aunque el resultado en {kpi['name']} es positivo frente al pasado, la dinamica de {scenario} sugiere que aun podemos apretar mas las tuercas. Estas ganando terreno, pero te advierto que pequeñas complacencias en la operacion diaria podrian quitarle brillo a este exito si no mantienes el mismo rigor los proximos meses."
        rec = f"[Sesion Gerencial - {month}] Mi recomendacion como auditor es que aproveches esta fortaleza en {month} para subir la vara. Dado que {scenario} ha sido exitoso, te sugiero documentar que decisiones tomaste hoy para que se conviertan en el nuevo estandar de tu firma, asegurando que {kpi['rec']} sea una constante y no un evento aislado."
        status = "success"
    else:
        pos = f"[Sesion Gerencial - {month}] En medio de {scenario}, rescatamos que lograste mantener la continuidad de {kpi['name']}, a pesar de que el resultado se desvió un {d_text} comparado con tus mejores años. No permitiste una caida libre, lo cual demuestra que tienes mecanismos de defensa activados para proteger la operacion base en momentos exigentes."
        neg = f"[Sesion Gerencial - {month}] Al analizar {kpi['name']} este {month}, me preocupa ver una debilidad marcada frente a tu trayectoria histórica. Parece que durante {scenario}, {kpi['negative']}. Un retroceso del {d_text} indica que estas perdiendo eficiencia en un punto critico que afecta directamente la prosperidad de tu negocio y tu tranquilidad personal."
        rec = f"[Sesion Gerencial - {month}] Debemos reaccionar hoy mismo para corregir este rumbo. Si {scenario} esta golpeando tu rendimiento, mi consejo ejecutivo es {kpi['rec']}. No podemos cerrar el proximo trimestre permitiendo que se diluya el valor de tu empresa en ineficiencias que ya tenias bajo control en periodos anteriores."
        status = "danger" if kpi_key in ["ebitda", "neto", "utilidad"] else "warning"

    return pos, neg, rec, status

API_KEY_MAP = {
    "margen_ebitda": "ebitda",
    "margen_neto": "neto",
    "margen_operacional": "operativo",
    "margen_bruto": "bruto",
    "roa": "roa",
    "roe": "roe",
    "patrimonio_relativo": "patrimonio",
    "utilidad_acumulada": "utilidad"
}

def generate_db(empresa_id, target_year):
    print(f"Auditing results for empresa_id={empresa_id}, target_year={target_year}...")
    raw = get_data(empresa_id)
    indicadores = raw.get("indicadores", [])

    payload = []
    processed_indicadores = {}
    for ind in indicadores:
        raw_key = ind.get("indicador_key")
        frontend_key = API_KEY_MAP.get(raw_key)
        if not frontend_key: continue
        processed_indicadores[frontend_key] = [x for x in ind.get("data", []) if isinstance(x, dict)]

    for key, data_list in processed_indicadores.items():
        hist_years = [target_year, target_year-1, target_year-2]
        month_summary = {m: [] for m in range(1, 13)}
        val_target = {m: 0.0 for m in range(1, 13)}

        for p in data_list:
            y, m, v = p.get("year"), p.get("month"), p.get("valor", 0.0)
            if y in hist_years: month_summary[m].append(v)
            if y == target_year: val_target[m] = v

        for m in range(1, 13):
            values = month_summary[m]
            avg = sum(values) / len(values) if values else 0.0
            val = val_target[m]
            delta = val - avg
            improved = delta >= 0 if avg != 0 else True

            pos, neg, rec, status = generate_auditor_narrative(key, months_names[m-1], improved, delta)

            payload.append({
                "empresa_id": empresa_id,
                "indicador_key": f"{key}_M{m}".upper(),
                "periodo_ano": target_year,
                "year": target_year,
                "period_key": f"M{m}",
                "tipo": status,
                "analisis_positivo": pos,
                "analisis_negativo": neg,
                "recomendacion": rec,
                "metodologia": f"Sesion de Auditoria Gerencial - Bloque D - {months_names[m-1]}",
                "generado_por": "antigravity"
            })

    output_file = f"payload_bloque_d_rentabilidad_{empresa_id}_{target_year}.json"
    with open(output_file, "w", encoding="utf-8") as f:
        json.dump(payload, f, indent=2, ensure_ascii=False)
    
    print(f"Audit complete: 96 unique business sessions generated -> {output_file}")
    return output_file

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Auditor Gerencial v3")
    parser.add_argument("--empresa_id", type=int, default=3104, help="ID de la empresa")
    parser.add_argument("--target_year", type=int, default=2025, help="Año objetivo")
    args = parser.parse_args()
    generate_db(args.empresa_id, args.target_year)
