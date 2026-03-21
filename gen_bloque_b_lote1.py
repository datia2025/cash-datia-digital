import json

# Data para Lote 1: 2023 (8 Indicadores)
lote1_2023 = [
    {
        "empresa_id": 3104,
        "indicador_key": "ciclo_conversion_efectivo",
        "periodo_ano": 2023,
        "period_key": "Annual",
        "tipo": "warning",
        "analisis_positivo": "Has logrado mantener la operación de consultoría fluyendo a pesar de un entorno económico nacional complejo, lo que demuestra que tu modelo de negocio es resiliente y que posees una tracción comercial sólida para retener a tus clientes clave tras entregar tus proyectos estratégicos de alto valor.",
        "analisis_negativo": "El ciclo de conversión de efectivo en 2023 promedia 90 días, lo cual es excesivamente dilatado para una firma de servicios. Estás financiando a tus clientes corporativos con tu propio capital de trabajo durante tres meses completos, lo que reduce tu capacidad de maniobra para nuevas inversiones en crecimiento.",
        "recomendacion": "Debes implementar una política de anticipos del 30% en todos tus nuevos contratos de consultoría para el próximo ejercicio. Esto te permitirá cubrir los costos operativos salariales (nómina de tus especialistas) de manera inmediata, eliminando la presión financiera que hoy recae exclusivamente sobre tus reservas de caja.",
        "metodologia": "Bloque B - Auditoría Anual 2023",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "dso",
        "periodo_ano": 2023,
        "period_key": "Annual",
        "tipo": "danger",
        "analisis_positivo": "Tu equipo de facturación ha logrado emitir los cobros de manera oportuna a pesar de la alta volatilidad operativa del año, asegurando que el exigible legal ante tus clientes corporativos esté debidamente documentado y listo para ser gestionado por los canales de tesorería de tus socios estratégicos en Colombia.",
        "analisis_negativo": "El DSO de 112 días en 2023 es un foco rojo crítico que indica una falta de control en el seguimiento de pagos. Estás superando el triple del promedio ideal del sector servicios, lo que significa que el dinero de tus ventas se queda atrapado en los balances de terceros en lugar de estar en tu cuenta.",
        "recomendacion": "Urge profesionalizar el área de cobranza mediante el uso de recordatorios automáticos y gestiones telefónicas de seguimiento apenas se cumplan los 15 días de mora. Debes establecer límites de crédito estrictos y no iniciar nuevas fases de consultoría hasta que el cliente haya liquidado las facturas pendientes de periodos anteriores.",
        "metodologia": "Bloque B - Auditoría Anual 2023",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "dio",
        "periodo_ano": 2023,
        "period_key": "Annual",
        "tipo": "success",
        "analisis_positivo": "Operar con un inventario de cero días es la mayor fortaleza estructural de MAS CONSULTA, ya que no tienes capital ocioso en activos físicos que pierdan valor con el tiempo. Esto te permite una flexibilidad financiera total para pivotar tu oferta de servicios hacia donde el mercado demande mayor intervención profesional.",
        "analisis_negativo": "Al no tener inventarios físicos, tu riesgo se traslada al 'Work In Progress' (WIP) de tus horas de consultoría. Si no tienes un control exacto de las horas invertidas en cada proyecto, corres el riesgo de tener 'inventario de conocimiento' acumulado que no se traduce en facturación real por falta de cierre de hitos.",
        "recomendacion": "Debes implementar un sistema de gestión de proyectos basado en tiempos (Time-Sheets) para que cada hora de tus especialistas se considere un insumo controlado. Asegúrate de capturar el valor de las intervenciones mensuales para evitar que el trabajo intelectual se pierda en procesos largos sin una facturación intermedia que garantice el retorno.",
        "metodologia": "Bloque B - Auditoría Anual 2023",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "dpo",
        "periodo_ano": 2023,
        "period_key": "Annual",
        "tipo": "warning",
        "analisis_positivo": "Mantenes una relación de confianza sólida con tu cadena de proveedores y consultores externos, permitiéndote gestionar los pagos al ritmo de tus disponibilidades reales de caja. Este nivel de lealtad en tus aliados es un activo intangible que te permite sortear baches de liquidez temporales sin comprometer la entrega final del servicio.",
        "analisis_negativo": "Un DPO de solo 22 días frente a un DSO de 112 días crea un diferencial de 90 días de descalce financiero que es insostenible en el largo plazo. Estás pagando a tus proveedores casi 5 veces más rápido de lo que logras recaudar de tus clientes, lo que drena tu capital de trabajo diariamente.",
        "recomendacion": "Debes alinear tus ciclos de pago con tus ciclos de recaudo para el próximo periodo. Negocia con tus proveedores críticos y consultores senior para extender el plazo de pago a 45 días, explicándoles la naturaleza corporativa de los contratos de tus clientes finales para que la financiación sea compartida proporcionalmente por toda la cadena.",
        "metodologia": "Bloque B - Auditoría Anual 2023",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "rotacion_activos",
        "periodo_ano": 2023,
        "period_key": "Annual",
        "tipo": "info",
        "analisis_positivo": "Tu capacidad para generar ventas netas en relación con la inversión en activos fijos demuestra una alta eficiencia en el uso de tu infraestructura tecnológica y física, indicando que no tienes activos subutilizados o redundantes que pesen negativamente sobre tus estados de resultados en este ejercicio fiscal evaluado por auditoría.",
        "analisis_negativo": "La rotación de activos de 0.08X es baja, sugiriendo que tienes un volumen de activos (posiblemente deudores o caja) que no están trabajando a su máxima capacidad para multiplicar los ingresos. Gran parte de tu activo total está compuesto por cuentas por cobrar que no rotan, frenando tu indicador de productividad global.",
        "recomendacion": "Debes acelerar la conversión de tus activos circulantes para elevar este ratio de eficiencia. Al reducir el saldo de cuentas por cobrar de largo plazo mediante gestiones de recaudo activas, lograrás que tus activos 'vuelen' más rápido, mejorando la percepción de rentabilidad sobre la inversión total de los socios para el próximo semestre.",
        "metodologia": "Bloque B - Auditoría Anual 2023",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "rotacion_cartera",
        "periodo_ano": 2023,
        "period_key": "Annual",
        "tipo": "warning",
        "analisis_positivo": "Has mantenido un motor comercial activo que genera nuevas cuentas por cobrar constantemente, asegurando una tubería de ingresos futuros que respalda la valoración contable de la firma. Tus facturas tienen respaldo en contratos reales y consultorías entregadas que gozan de aceptación técnica por parte de tus clientes corporativos directos.",
        "analisis_negativo": "La rotación de cartera de 0.38X anual indica que tu dinero apenas da media vuelta al año, lo que es extremadamente lento para el dinamismo que requiere una consultora. Estás permitiendo que las facturas envejezcan en tu balance, convirtiéndose en activos de baja calidad que podrían volverse de difícil recaudo si no se gestionan ya.",
        "recomendacion": "Implementa un comité de cartera semanal para auditar cada factura mayor a 60 días. Debes identificar los cuellos de botella en la aprobación de actas de servicio por parte de los clientes, ya que gran parte de los retrasos provienen de temas administrativos y no de falta de recursos de tus pagadores finales.",
        "metodologia": "Bloque B - Auditoría Anual 2023",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "rotacion_inventarios",
        "periodo_ano": 2023,
        "period_key": "Annual",
        "tipo": "success",
        "analisis_positivo": "La rotación de inventarios física es inexistente por la naturaleza del negocio, lo que te libera de los riesgos de obsolescencia, mermas o costos logísticos de almacenamiento que suelen destruir el valor en empresas comerciales o industriales tradicionales. Es un modelo puramente de servicios con un alto componente de eficiencia operativa base.",
        "analisis_negativo": "El riesgo de un 'Cero Inventarios' en consultoría es no tener capacidad de respuesta inmediata ante un pico inesperado de demanda si no tienes 'stock' de personal especializado listo. Al no tener inventario físico, tu limitación de crecimiento es 100% humana y depende de la velocidad con la que puedas integrar nuevos profesionales senior.",
        "recomendacion": "Debes mantener un banco de hojas de vida de consultores externos previamente calificados para activarlos 'just-in-time' cuando surjan nuevos contratos. Trata este banco de talento como tu inventario operativo estratégico, asegurando que puedas escalar el negocio sin tener que incurrir en costos fijos de nómina excesivos antes de la venta real.",
        "metodologia": "Bloque B - Auditoría Anual 2023",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "rotacion_proveedores",
        "periodo_ano": 2023,
        "period_key": "Annual",
        "tipo": "info",
        "analisis_positivo": "Has demostrado ser un pagador confiable y ágil, lo que te permite mantener la puerta abierta con los mejores consultores especialistas del mercado colombiano. Tu reputación como firma que cumple con sus obligaciones comerciales te otorga una ventaja competitiva crítica para atraer y retener el talento técnico que sustenta tus servicios.",
        "analisis_negativo": "Una rotación de proveedores de 1.6X sugiere que estás liquidando tus deudas comerciales significativamente más rápido de lo que tus clientes te pagan a ti (0.38X). Estás siendo 'demasiado eficiente' pagando a terceros con dinero que aún no has recaudado, lo que genera un hueco de liquidez innecesario en tu flujo mensual.",
        "recomendacion": "Debes priorizar el pago a aquellos proveedores que te ofrezcan descuentos por pronto pago reales o beneficios técnicos exclusivos. Para el resto de la cadena de suministro, intenta alinear los pagos a un ciclo mínimo de 45 días, protegiendo así tu caja para imprevistos operativos o para el pago de impuestos ante la DIAN.",
        "metodologia": "Bloque B - Auditoría Anual 2023",
        "generado_por": "antigravity"
    }
]

with open('payload_bloque_b_lote1_2023.json', 'w', encoding='utf-8') as f:
    json.dump(lote1_2023, f, indent=2, ensure_ascii=False)
