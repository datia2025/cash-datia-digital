import json

lote1_c_2023 = []
quarters = ["1Q", "2Q", "3Q", "4Q"]

# 📊 DATA PARA 2023 (8 Indicadores x 4 Trimestres)

data_2023 = {
    "ciclo_conversion_efectivo": [118.2, 77.5, 55.0, 109.8],
    "dso": [143.1, 99.3, 70.0, 135.5],
    "dio": [0, 0, 0, 0],
    "dpo": [24.8, 21.8, 15.0, 25.7],
    "rotacion_activos": [0.22, 0.17, 0.22, -0.63],
    "rotacion_cartera": [0.31, 0.31, 0.56, 0.22],
    "rotacion_inventarios": [0, 0, 0, 0],
    "rotacion_proveedores": [1.23, 1.57, 3.64, 2.42]
}

def get_advice(key, q_idx, val):
    # Logic for tone "Gerencia-a-Gerencia" > 40 words
    # I'll create custom templates per indicator
    return {
        "ciclo_conversion_efectivo": {
            "pos": f"El ciclo de efectivo en este {quarters[q_idx]} demuestra que la firma tiene una capacidad de recuperación instalada que permite cubrir los costos directos de la operación sin depender exclusivamente de deuda externa de alto costo para cerrar el trimestre con saldo a favor.",
            "neg": f"El ciclo de {val} días es excesivo para este periodo del año, indicando que el dinero se queda atrapado en los procesos de aprobación de facturas corporativas en lugar de estar circulando en la cuenta de bancos para nuevas inversiones consultivas.",
            "acc": f"Debes acelerar el proceso de recaudo para el próximo trimestre. Implementa un sistema de cobro anticipado por fases de proyecto completadas, reduciendo la exposición financiera de la compañía ante la volatilidad de flujo de caja que presenta este {quarters[q_idx]} actual.",
            "status": "warning" if val > 45 else "success"
        },
        "dso": {
            "pos": f"Has logrado que tus deudores comerciales respeten los compromisos de pago en gran medida, manteniendo una tubería de facturación que respalda la liquidez futura de MAS CONSULTA a pesar de la ralentización económica del sector servicios en este {quarters[q_idx]}.",
            "neg": f"El DSO de {val} días es crítico para este trimestre. Te estás volviendo un financiador gratuito de tus clientes, lo cual es insostenible si quieres escalar la operación o contratar más consultores senior para los proyectos de segundo semestre del año.",
            "acc": "Urge una limpieza de cartera de más de 60 días para el cierre de este trimestre. Lanza una campaña de recaudo telefónico personalizado liderada por la gerencia para asegurar que todas las facturas del periodo entren a caja antes del balance trimestral final.",
            "status": "danger" if val > 90 else "warning"
        },
        "dio": {
            "pos": "Tu enfoque Asset-Light es impecable en este trimestre, permitiéndote operar sin la pesada carga de inventarios físicos obsoletos o costos de almacenamiento innecesarios que suelen destruir el valor en otras industrias menos eficientes digitalmente que la consultoría profesional.",
            "neg": "El riesgo de no tener inventarios es la ociosidad del talento humano. Si este indicador de cero no se acompaña de una alta facturación en este trimestre, estás asumiendo una pérdida operativa invisible por horas-hombre no cargadas oportunamente a proyectos activos.",
            "acc": "Debes realizar una auditoría de utilización de tus consultores para asegurar que el 'Inventario de Horas' se esté vendiendo a la tasa de utilización máxima esperada. No permitas que el equipo pase tiempo sin proyectos facturables durante más de una semana calendario.",
            "status": "success"
        },
        "dpo": {
            "pos": "Estás logrando un apalancamiento comercial respetable que te otorga un respiro financiero valioso para la gestión de nómina. Tus proveedores confían en tu solvencia técnica y te ofrecen plazos de pago que financian tu crecimiento operativo de manera gratuita durante este periodo.",
            "neg": "Un DPO de solo {val} días es muy corto comparado con lo que tardas en cobrar. Estás entregando tu liquidez demasiado pronto a terceros, lo que te obliga a presionar innecesariamente tus ahorros corporativos para cubrir la operación diaria de este trimestre fiscal evaluado.",
            "acc": "Negocia plazos de pago de mínimo 45 días con todos tus proveedores de servicios tecnológicos y consultores externos asociados. Explícales que el flujo de caja operativo del trimestre requiere una sincronización de pagos más holgada para mantener la estabilidad del negocio conjunto.",
            "status": "warning" if val < 30 else "success"
        },
        "rotacion_activos": {
            "pos": "La eficiencia del uso de tus activos totales es notable, logrando que cada peso invertido en infraestructura técnica y administrativa trabaje activamente en la generación de ventas netas reportadas para el cierre de este trimestre de auditoría financiera.",
            "neg": "Detectamos una rotación baja que sugiere una subutilización de la capacidad instalada para generar ingresos. Gran parte de tu activo está estático en cuentas por cobrar que no se mueven, frenando la productividad del capital total de los socios en este periodo.",
            "acc": "Debes diversificar tu oferta comercial para maximizar el uso de tus activos corrientes. Enfócate en servicios de consultoría recurrente (abonos mensuales) que permitan que tu base de activos rote con mayor frecuencia y eleve la rentabilidad neta real de este ejercicio trimestral.",
            "status": "info"
        },
        "rotacion_cartera": {
            "pos": "Tu cartera goza de una calidad técnica respaldada por contratos vigentes con clientes de alto perfil que reconocen el valor de MAS CONSULTA. Tienes un activo exigible robusto que garantiza la continuidad del flujo de caja si se gestiona con la determinación adecuada.",
            "neg": "La velocidad de recaudo es insuficiente para las necesidades de expansión de este trimestre. Tienes facturas que 'duermen' en el balance operativo por falta de seguimiento administrativo rígido, lo que drena el dinamismo necesario para liderar el sector de consultoría especializada actualmente.",
            "acc": "Implementa un comité de cartera los viernes por la tarde para revisar el estado de aprobación de facturas de este trimestre. Asegúrate de que no existan cuellos de botella técnicos que impidan que el cliente apruebe el acta de servicio para pago inmediato.",
            "status": "warning" if val < 0.5 else "success"
        },
        "rotacion_inventarios": {
            "pos": "La rotación de conocimientos es constante, ya que logras evacuar proyectos técnicos sin necesidad de mantener stocks físicos. Tu diseño de servicios 'Just-In-Time' asegura que no existan recursos ociosos que se deprecien con el tiempo o que generen costos hundidos financieros.",
            "neg": "Al no tener rotación de inventario físico, tu debilidad es la falta de 'stock' de personal para nuevas oportunidades comerciales. En este trimestre podrías estar perdiendo contratos por no tener un inventario de especialistas listos para intervenir de manera inmediata en la zona de operaciones.",
            "acc": "Mantén un repositorio actualizado de hojas de vida y perfiles técnicos de consultores externos previamente calificados. Trata a este banco de talento como tu inventario operativo estratégico para responder con velocidad ante los picos de demanda proyectados para el próximo trimestre de servicios.",
            "status": "success"
        },
        "rotacion_proveedores": {
            "pos": "Gozas de una reputación impecable como pagador serio en el mercado de consultoría colombiana. Esto te abre las puertas a los mejores especialistas técnicos que prefieren trabajar con MAS CONSULTA por la seguridad y celeridad que ofreces en el cumplimiento de tus obligaciones mercantiles.",
            "neg": "Estás pagando con excesiva rapidez comparado con tu velocidad de recaudo institucional. Estás privilegiando la caja de tus aliados por encima de tu propia salud financiera interna, lo que podría generarte un estrés de liquidez innecesario para pagar los impuestos de este trimestre.",
            "acc": "Debes priorizar los pagos basándote en la criticidad de la operación técnica de este trimestre. No liquides facturas de proveedores de suministro menores antes de los 30 días, conservando así un fondo de maniobra para contingencias salariales o imprevistos de mercado que puedan surgir prontamente.",
            "status": "info"
        }
    }[key]

for ind_key, values in data_2023.items():
    for q_idx, val in enumerate(values):
        advice = get_advice(ind_key, q_idx, val)
        lote1_c_2023.append({
            "empresa_id": 3104,
            "indicador_key": f"{ind_key}_{quarters[q_idx]}",
            "periodo_ano": 2023,
            "period_key": quarters[q_idx],
            "tipo": advice["status"],
            "analisis_positivo": advice["pos"],
            "analisis_negativo": advice["neg"],
            "recomendacion": advice["acc"],
            "metodologia": f"Bloque C - Ciclo Trimestral 2023 - {quarters[q_idx]}",
            "generado_por": "antigravity"
        })

with open('payload_bloque_c_lote1_2023.json', 'w', encoding='utf-8') as f:
    json.dump(lote1_c_2023, f, indent=2, ensure_ascii=False)
