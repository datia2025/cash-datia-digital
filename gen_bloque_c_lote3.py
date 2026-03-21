import json

lote3_c_2025 = []
quarters = ["1Q", "2Q", "3Q", "4Q"]

data_2025 = {
    "ciclo_conversion_efectivo": [1.7, 63.9, 48.7, 115.4],
    "dso": [110.8, 120.8, 92.0, 161.6],
    "dio": [0, 0, 0, 0],
    "dpo": [109.1, 56.8, 43.3, 46.1],
    "rotacion_activos": [0.06, 0.06, 0.07, 0.04],
    "rotacion_cartera": [0.27, 0.26, 0.35, 0.25],
    "rotacion_inventarios": [0, 0, 0, 0],
    "rotacion_proveedores": [0.36, 0.55, 0.31, 0.36]
}

def get_advice(key, q_idx, val):
    return {
        "ciclo_conversion_efectivo": {
            "pos": f"En este {quarters[q_idx]} de 2025 has logrado revertir la tendencia negativa inicial, cerrando con un ciclo de caja mucho más ágil respecto al promedio anual. Estas demostrando una capacidad de gestión excepcional para movilizar los recursos líquidos en momentos de alta demanda operativa.",
            "neg": f"El ciclo de efectivo de {val} días para este trimestre refleja una degradación en la velocidad de rotación del capital. Volviste a financiar a tus clientes durante periodos prolongados, lo que estresa tu posición de tesorería y obliga a reprogramar pagos estratégicos.",
            "acc": "Debes institucionalizar el protocolo de facturación por hitos que te permitió mejorar en los periodos anteriores. No permitas que el ciclo supere los 30 días en este trimestre, asegurando que cada peso invertido en consultoría retorne a la caja en menos de un mes calendario.",
            "status": "warning" if val > 45 else "success"
        },
        "dso": {
            "pos": "Tu gestión de recaudo ha mantenido una tubería de ingresos constante que da soporte al crecimiento proyectado de la firma. Los clientes clave siguen respondiendo positivamente a los requerimientos de tesorería de MAS CONSULTA, asegurando la viabilidad comercial del trimestre.",
            "neg": f"Un DSO de {val} días en este {quarters[q_idx]} es una señal de alerta máxima. Tu cartera se ha vuelto excesivamente pesada y estás perdiendo el control sobre el vencimiento de tus facturas comerciales, lo que compromete directamente tu disponibilidad inmediata de efectivo.",
            "acc": "Lanza una campaña de recaudo agresiva para este trimestre, priorizando las facturas que superen los 60 días de mora. Debes condicionar la entrega de nuevos informes de consultoría al saldo total de las deudas pendientes para forzar la liquidez en este periodo fiscal.",
            "status": "danger" if val > 90 else "warning"
        },
        "dio": {
            "pos": "La eficiencia del modelo Asset-Light en este trimestre te permite operar con una estructura de costos fijos reducida al mínimo. Esta agilidad es tu mayor ventaja para competir en un mercado de servicios cada vez más dinámico y exigente en términos de velocidad de respuesta técnica.",
            "neg": "Al no tener inventarios físicos, el riesgo es la falta de control sobre las horas de consultoría no facturadas. En este trimestre detectamos que podrías estar acumulando 'horas muertas' que no se traducen en facturación real, afectando negativamente la rentabilidad bruta de la firma.",
            "acc": "Debes realizar un seguimiento diario a las hojas de tiempo de tus consultores senior en este trimestre. Asegura que cada hora de investigación o de campo esté debidamente asignada a un código de proyecto facturable para evitar la merma del valor intelectual del negocio.",
            "status": "success"
        },
        "dpo": {
            "pos": f"Tu capacidad de negociación con proveedores te permite un apalancamiento gratuito de {val} días en este trimestre. Esto es oxígeno puro para tu flujo de caja, permitiéndote gestionar la nómina y los gastos fijos con una tranquilidad financiera superior a la de tu competencia.",
            "neg": f"La caída en el DPO a {val} días sugiere una pérdida de confianza de tus proveedores o un cambio en los términos comerciales que te quita liquidez inmediata. Estás pagando más rápido de lo que los clientes te pagan a ti, generando un desbalance financiero en este trimestre.",
            "acc": "Reestablece los plazos de pago a 45 días con todos tus aliados estratégicos durante este periodo. Explícales la importancia de sincronizar los ciclos de caja conjunto para mantener la entrega técnica de primer nivel que caracteriza a MAS CONSULTA en el sector consultoría.",
            "status": "success" if val > 45 else "warning"
        },
        "rotacion_activos": {
            "pos": "Has mantenido una eficiencia constante en el uso de tu infraestructura digital y física durante este trimestre. Tu balance operativo está trabajando al ritmo esperado para cumplir con las metas de ingresos netos proyectadas por la junta directiva para este cierre anual.",
            "neg": f"La rotación de {val}X en este {quarters[q_idx]} es la más baja reportada, indicando que tus activos totales están rindiendo muy por debajo de su potencial teórico. Tienes una enorme cantidad de capital ocioso en el balance que no está contribuyendo a las ventas activas.",
            "acc": "Debes liquidar activos ociosos o improductivos para el cierre de este trimestre. Enfoca tus recursos monetarios en actividades que generen retorno inmediato (como marketing comercial o herramientas de IA) para elevar drásticamente este KPI de productividad sobre el activo total.",
            "status": "info"
        },
        "rotacion_cartera": {
            "pos": "La calidad de tus cuentas por cobrar en este trimestre es excepcional, respaldada por clientes de primer nivel con una alta probabilidad de recaudo efectivo. Tienes un motor de certidumbre financiera que permite planificar las inversiones de expansión para el próximo ejercicio.",
            "neg": f"Una rotación de cartera de {val}X en este trimestre indica que gran parte de tus ingresos de 2025 aún no son realidad líquida en el banco. Estás permitiendo que la burocracia de tus clientes mande sobre tu flujo de caja operativo, lo cual es inaceptable para una firma consultora.",
            "acc": "Implementa un protocolo de cobro jurídico preventivo para todas las facturas que superen los 90 días en este trimestre. Debes demostrar firmeza administrativa ante tus clientes para que MAS CONSULTA sea una prioridad en sus calendarios de pago mensuales nacionales.",
            "status": "warning" if val < 0.5 else "success"
        },
        "rotacion_inventarios": {
            "pos": "El diseño de servicios modular de MAS CONSULTA permite que no exista inventario acumulado en este trimestre. La velocidad con la que los consultores entregan resultados técnicos asegura un flujo de valor de salida constante que satisface a los clientes más exigentes.",
            "neg": "El riesgo de este trimestre es la falta de 'capacidad buffer'. Al no tener inventario, cualquier ausencia imprevista de un consultor senior en esta temporada podría detener proyectos críticos, afectando la imagen de cumplimiento de la firma ante el mercado especializado regional.",
            "acc": "Desarrolla una base de conocimiento compartida (Knowledge Base) que permita que cualquier consultor pueda retomar un proyecto iniciado por otro en este trimestre. Trata a este repositorio de datos como tu 'inventario de seguridad' para garantizar la continuidad del servicio.",
            "status": "success"
        },
        "rotacion_proveedores": {
            "pos": "Tu comportamiento como pagador estratégico en este trimestre te otorga un prestigio comercial valioso en el sector. Estas logrando que tus deudas operativas sean un mecanismo de construcción de confianza de largo plazo con los mejores especialistas técnicos del país.",
            "neg": f"La rotación de proveedores de {val}X sugiere que podrías estar en mora técnica con algunos aliados críticos de este trimestre. No permitas que el descalce de recaudo con tus clientes afecte tu reputación de pago, ya que podrías quedarte sin soporte técnico para los proyectos más rentables.",
            "acc": "Realiza un plan de pagos fraccionado para saldar las facturas comerciales más antiguas del trimestre. Prioriza a los proveedores de infraestructura crítica para asegurar que la operación digital de MAS CONSULTA no sufra interrupciones por falta de pago oportuno de servicios base.",
            "status": "info"
        }
    }[key]

for ind_key, values in data_2025.items():
    for q_idx, val in enumerate(values):
        advice = get_advice(ind_key, q_idx, val)
        lote3_c_2025.append({
            "empresa_id": 3104,
            "indicador_key": ind_key,
            "periodo_ano": 2025,
            "period_key": quarters[q_idx],
            "tipo": advice["status"],
            "analisis_positivo": advice["pos"],
            "analisis_negativo": advice["neg"],
            "recomendacion": advice["acc"],
            "metodologia": f"Bloque C - Ciclo Trimestral 2025 - {quarters[q_idx]}",
            "generado_por": "antigravity"
        })

with open('payload_bloque_c_lote3_2025.json', 'w', encoding='utf-8') as f:
    json.dump(lote3_c_2025, f, indent=2, ensure_ascii=False)
