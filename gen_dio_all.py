import json

def generate_dio_all():
    payloads = []
    
    # ANNUAL
    for year in [2023, 2024, 2025]:
        payloads.append({
            "empresa_id": 3104, "indicador_key": "dio", "periodo_ano": year, "period_key": "Annual", "tipo": "success",
            "analisis_positivo": f"Tu modelo de negocio para el cierre de {year} sigue operando bajo un esquema de 'Cero Inventarios', lo que es una ventaja competitiva excepcional en el sector de servicios. Al no tener capital atrapado en bodega, liberas recursos que pueden ser destinados 100% a la nómina de especialistas.",
            "analisis_negativo": f"A pesar de que el DIO es 0 en todo el {year}, el riesgo oculto es que tu 'inventario de horas' no sea facturado oportunamente. Si dejas de registrar y cobrar las horas hombre de tus consultores de manera mensual, estarás asumiendo una merma de servicios invisible que afecta directamente el margen bruto final.",
            "recomendacion": f"Trata tus proyectos de consultoría en curso como si fueran inventario físico que debe rotar. Durante todo {year+1}, implementa un sistema de control de tareas semanales para asegurar que el avance de cada obra se facture apenas se complete, evitando que el esfuerzo consultivo se dilate en el tiempo sin retorno.",
            "metodologia": f"Bloque B - Actividad - DIO Annual", "generado_por": "antigravity"
        })

    # QUARTERLY
    for year in [2023, 2024, 2025]:
        for q in ["1Q", "2Q", "3Q", "4Q"]:
            payloads.append({
                "empresa_id": 3104, "indicador_key": "dio", "periodo_ano": year, "period_key": q, "tipo": "success",
                "analisis_positivo": f"En el {q} de {year} confirmamos una eficiencia impecable en la gestión de insumos operativos, manteniendo los días de inventario en cero. Tienes una estructura ligera que te permite adaptarte a los cambios del mercado de servicios sin el lastre financiero de productos estancados que pierden valor trimestralmente.",
                "analisis_negativo": f"El peligro de este DIO en {q} es la falta de visibilidad sobre los 'gastos por anticipado'. Aunque no tienes inventario, es vital que audites si estás cargando a este trimestre costos que no corresponden a la facturación emitida, evitando así que tu rentabilidad se vea distorsionada por falta de causación correcta.",
                "recomendacion": "Debes realizar una revisión mensual exhaustiva de tus costos directos por consultoría en este trimestre. Asegúrate de que el equipo no esté sub-utilizado, ya que una consultora sin proyectos es el equivalente operativo a una fábrica con inventario obsoleto; el tiempo que se pierde no se recupera jamás.",
                "metodologia": f"Bloque B - Actividad - DIO {q}", "generado_por": "antigravity"
            })

    # MONTHLY INTERANNUAL (M1-M12)
    for m_idx in range(1, 13):
        payloads.append({
            "empresa_id": 3104, "indicador_key": f"DIO_M{m_idx}", "periodo_ano": 2025, "period_key": "Annual", "tipo": "success",
            "analisis_positivo": "Has mantenido una eficiencia histórica constante durante este mes, eliminando cualquier tipo de costo por almacenamiento operativo. Tu enfoque en la preventa de servicios asegura que no existan recursos ociosos, permitiendo que la caja fluya directamente desde la operación comercial hacia la cuenta bancaria sin escalas comerciales.",
            "analisis_negativo": "Detectamos una posible falta de seguimiento sobre los entregables mensuales de larga duración. Al tener un DIO de cero, es crítico que el mes no termine sin que se haya 'evacuado' todo el trabajo intelectual del periodo, o estarás financiando con salario del próximo mes lo que debiste haber facturado hoy mismo.",
            "recomendacion": "Implementa un cierre de hitos los últimos viernes de cada mes. No dejes que los entregables de consultoría pasen a la siguiente vigencia mensual sin ser reportados y aprobados por el cliente, ya que el 'inventario de servicios' es el activo que más rápido perece si no se formaliza con la factura.",
            "metodologia": f"Bloque B - Actividad - DIO Comparativo M{m_idx}", "generado_por": "antigravity"
        })

    return payloads

with open('temp_bloque_b_dio.json', 'w') as f:
    json.dump(generate_dio_all(), f, indent=2)
