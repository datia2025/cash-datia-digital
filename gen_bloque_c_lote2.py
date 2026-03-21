import json

lote2_c_2024 = []
quarters = ["1Q", "2Q", "3Q", "4Q"]

data_2024 = {
    "ciclo_conversion_efectivo": [77.6, 61.5, -5.6, -109.5],
    "dso": [136.9, 74.3, 71.9, 63.8],
    "dio": [0, 0, 0, 0],
    "dpo": [59.3, 12.8, 77.5, 173.4],
    "rotacion_activos": [0.13, 0.20, 0.24, -0.19],
    "rotacion_cartera": [0.27, 0.41, 0.45, 0.55],
    "rotacion_inventarios": [0, 0, 0, 0],
    "rotacion_proveedores": [0.60, 2.57, 0.46, 0.18]
}

def get_advice(key, q_idx, val):
    return {
        "ciclo_conversion_efectivo": {
            "pos": f"En este {quarters[q_idx]} de 2024 has logrado un hito de eficiencia con un ciclo de efectivo de {val} días. Este resultado indica que la compañía está generando caja operativa real incluso antes de saldar sus compromisos comerciales, otorgándote una ventaja competitiva excepcional en el mercado de servicios.",
            "neg": f"El ciclo de efectivo de {val} días en este trimestre revela una dependencia crítica del flujo externo. Aunque es una mejora histórica, todavía tienes capital estancado en facturas de clientes que tardan en ser aprobadas, lo que podría limitar tu capacidad de reinversión en nuevos consultores.",
            "acc": "Debes aprovechar la inercia positiva de este trimestre para blindar tus reservas de caja. Implementa un fondo de ahorro corporativo con el excedente generado en este periodo para cubrir posibles baches de preventa en el próximo semestre, asegurando que la rentabilidad no se diluya por gastos financieros.",
            "status": "success" if val < 30 else "warning"
        },
        "dso": {
            "pos": "Tu departamento de cobranza ha demostrado una gran agilidad en este trimestre, logrando reducir el tiempo de espera para el recaudo de facturas corporativas. Tienes un control mucho más cercano sobre tus cuentas por cobrar, lo que se traduce en una mayor previsibilidad financiera interna.",
            "neg": f"Un DSO de {val} días en este {quarters[q_idx]} indica que gran parte de tus ventas anuales siguen atrapadas en los procedimientos administrativos de tus clientes. Estás asumiendo el costo salarial hoy para cobrarlo casi 3 meses después, lo cual es un riesgo crediticio innecesario para la firma.",
            "acc": "Establece una política de premios por recaudo temprano para tus gestores comerciales en este trimestre. Incentiva que los clientes utilicen canales de pago digitales y que las actas de servicio se firmen el mismo día de la entrega del proyecto de consultoría técnica especializado.",
            "status": "warning" if val > 60 else "success"
        },
        "dio": {
            "pos": "La ausencia de inventarios físicos en este trimestre sigue siendo tu mejor escudo contra la inflación y los costos de bodegaje. Esta ligereza operativa permite que MAS CONSULTA se enfoque 100% en la calidad técnica de sus entregables, sin distracciones logísticas que consuman recursos financieros.",
            "neg": "El riesgo oculto de no tener inventario es la subutilización de tus especialistas. En este trimestre debes vigilar que no existan consultores en 'banca' durante más de tres días, ya que ese tiempo no facturado es un costo hundido que no se puede recuperar una vez pasado el periodo.",
            "acc": "Realiza una proyección de ventas semanal para este trimestre alineada con la disponibilidad de tus consultores. Asegura que cada integrante del equipo técnico tenga asignado un proyecto activo con metas de facturación claras para evitar que la eficiencia operativa caiga por falta de proyectos.",
            "status": "success"
        },
        "dpo": {
            "pos": f"Has logrado un nivel de apalancamiento excepcional en este {quarters[q_idx]} con un DPO de {val} días. Estás logrando que tus proveedores financien gran parte de tu operación mensual, lo que te permite destinar tu efectivo propio a inversiones de mayor rentabilidad inmediata para los socios.",
            "neg": f"El DPO de {val} días en este trimestre es preocupantemente bajo. Estás quemando caja más rápido de lo habitual para saldar cuentas comerciales, lo que reduce tu margen de maniobra ante imprevistos en el recaudo de tus facturas de clientes de largo plazo evaluadas hoy.",
            "acc": "Debes entablar negociaciones de largo aliento con tus proveedores críticos para este trimestre. Intenta estandarizar los pagos a 60 días para alinearlos con tu ciclo de recaudo real, asegurando que la operación se autofinancie y no dependa de inyecciones de capital externas constantes.",
            "status": "success" if val > 45 else "warning"
        },
        "rotacion_activos": {
            "pos": "Tu capacidad para convertir tus herramientas y capital en ingresos operativos se mantiene sólida en este trimestre. El dashboard muestra que tus activos no están 'dormidos' y que la firma tiene una dinámica de generación de valor constante que respalda la sostenibilidad del negocio.",
            "neg": "Mantenes un nivel de rotación de activos discreto para este {quarters[q_idx]}, lo que sugiere que podrías estar operando con más recursos de los estrictamente necesarios para el volumen de ventas ejecutado. Debes auditar si tienes activos circulantes estancados que no aporten a la meta global.",
            "acc": "Debes enfocar tus activos hacia proyectos de mayor rotación y menor complejidad administrativa para este trimestre. Al agilizar el ciclo de facturación de servicios empaquetados, lograrás que tu ratio de rotación de activos se eleve, mejorando la competitividad general de MAS CONSULTA ante los socios.",
            "status": "info"
        },
        "rotacion_cartera": {
            "pos": "La rotación de tus cuentas por cobrar en este trimestre refleja una buena salud en los compromisos de pago adquiridos por tus clientes corporativos. No tienes facturas huérfanas o de difícil gestión, lo que asegura que tu balance sea una representación fiel de tu capacidad de ingreso.",
            "neg": f"La rotación de cartera de {val}X en este trimestre es baja, lo que indica que tus facturas permanecen demasiado tiempo como simples promesas de pago en papel. Necesitas inyectar mayor dinamismo a tus cierres de cuenta para que la caja real fluya al ritmo de la operación comercial.",
            "acc": "Implementa un auditor de cartera para este trimestre que se encargue exclusivamente de verificar que las facturas no superen los 30 días sin una gestión formal de recaudo. No permitas que la relación técnica con el cliente impida la gestión financiera administrativa oportuna y necesaria.",
            "status": "warning" if val < 0.5 else "success"
        },
        "rotacion_inventarios": {
            "pos": "Tu modelo de cero inventarios en este trimestre es una ventaja competitiva excepcional que te permite pivotar comercialmente sin el lastre de activos físicos estancados. La velocidad de salida de tus entregables técnicos es puramente digital, eliminando cualquier tipo de merma u obsolescencia operativa.",
            "neg": "El peligro detectado en este trimestre es no tener un stock de consultoría pre-vendida. Al no tener inventario físico que soporte las ventas, toda tu rentabilidad depende de la venta agresiva del mes en curso, lo que genera una presión comercial constante y de alto riesgo para la firma.",
            "acc": "Trata de pre-vender paquetes de consultoría u horas hombre para los próximos trimestres mediante contratos marco. Esto te dará un 'inventario de ingresos' asegurado que reducirá la incertidumbre operativa y te permitirá planificar la contratación de especialistas con mayor antelación y menor riesgo financiero.",
            "status": "success"
        },
        "rotacion_proveedores": {
            "pos": "Has mantenido una relación de pago justa y equilibrada con tus aliados estratégicos durante este trimestre, asegurando que los mejores consultores del mercado quieran seguir colaborando con MAS CONSULTA por tu seriedad y puntualidad en el cumplimiento de las obligaciones comerciales pactadas.",
            "neg": f"Una rotación de proveedores de {val}X sugiere que estás saldando deudas comerciales con fondos que podrían tener un mejor uso operativo inmediato. Ser un pagador tan rápido en este trimestre te quita capacidad de respuesta ante eventuales retrasos en el recaudo de tus propias facturas comerciales.",
            "acc": "Para el próximo trimestre, prioriza el pago a aquellos proveedores que te otorguen beneficios por volumen o soporte técnico prioritario. No quemes liquidez en pagos anticipados si no existe un descuento real por pronto pago que compense la pérdida de flujo de caja libre inmediato.",
            "status": "info"
        }
    }[key]

for ind_key, values in data_2024.items():
    for q_idx, val in enumerate(values):
        advice = get_advice(ind_key, q_idx, val)
        lote2_c_2024.append({
            "empresa_id": 3104,
            "indicador_key": f"{ind_key}_{quarters[q_idx]}",
            "periodo_ano": 2024,
            "period_key": quarters[q_idx],
            "tipo": advice["status"],
            "analisis_positivo": advice["pos"],
            "analisis_negativo": advice["neg"],
            "recomendacion": advice["acc"],
            "metodologia": f"Bloque C - Ciclo Trimestral 2024 - {quarters[q_idx]}",
            "generado_por": "antigravity"
        })

with open('payload_bloque_c_lote2_2024.json', 'w', encoding='utf-8') as f:
    json.dump(lote2_c_2024, f, indent=2, ensure_ascii=False)
