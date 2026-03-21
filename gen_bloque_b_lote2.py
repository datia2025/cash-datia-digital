import json

# Data para Lote 2: 2024 (8 Indicadores)
lote2_2024 = [
    {
        "empresa_id": 3104,
        "indicador_key": "ciclo_conversion_efectivo",
        "periodo_ano": 2024,
        "period_key": "Annual",
        "tipo": "success",
        "analisis_positivo": "El ejercicio 2024 marca un punto de inflexión positivo con un ciclo de caja promedio de solo 6 días, una mejora sustancial frente a los 90 días del año anterior. Has logrado sincronizar excepcionalmente bien la ejecución de tus proyectos técnicos con el flujo de recaudo y las obligaciones de pago.",
        "analisis_negativo": "A pesar del excelente promedio anual, durante el primer trimestre (1Q 2024) experimentaste un pico de 178 días que estresó la liquidez inicial. La mejora del cierre de año compensó este bache, pero demuestra que tu flujo de caja sigue siendo vulnerable a la estacionalidad de los contratos corporativos.",
        "recomendacion": "Debes estandarizar los procesos de cierre que permitieron la eficiencia del segundo semestre de 2024. Mantén el monitoreo mensual estricto sobre el descalce entre el pago a consultores y el recaudo de clientes para asegurar que el ciclo se mantenga por debajo de los 15 días de manera estructural permanente.",
        "metodologia": "Bloque B - Auditoría Anual 2024",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "dso",
        "periodo_ano": 2024,
        "period_key": "Annual",
        "tipo": "warning",
        "analisis_positivo": "Has logrado reducir el tiempo de recaudo promedio a 87 días en 2024, lo que representa una liberación de recursos importante comparado con el ejercicio anterior. Esta tendencia favorable indica que las gestiones de cobranza están surtiendo efecto y que tus clientes están respondiendo mejor a tus políticas de tesorería.",
        "analisis_negativo": "Un DSO de 87 días sigue duplicando el estándar ideal de 45 días del sector consultoría técnica. Gran parte de esta demora se concentra en hitos de proyectos que tardan demasiado en ser aprobados administrativamente por tus clientes, lo que genera facturas estancadas que no se convierten en saldo líquido real.",
        "recomendacion": "Debes implementar un protocolo de 'Aceptación Express' de servicios entregados. Asegúrate de que los entregables de consultoría cuenten con un acta de recibo pre-aprobada para que el proceso de facturación no dependa de burocracias internas del cliente que terminan financiándose con tu propio flujo de efectivo operativo.",
        "metodologia": "Bloque B - Auditoría Anual 2024",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "dio",
        "periodo_ano": 2024,
        "period_key": "Annual",
        "tipo": "success",
        "analisis_positivo": "Mantenes con éxito la estructura 'Zero-Inventory' durante todo el 2024, lo que consolida a MAS CONSULTA como una operadora liviana de activos y altamente eficiente en términos de capital invertido. Este ahorro en costos logísticos y de almacenamiento se traduce directamente en una mayor agilidad para reinvertir en talento humano.",
        "analisis_negativo": "Al no tener inventarios, el riesgo sigue siendo la 'capacidad instalada' ociosa. Un consultor sin proyecto asignado durante 2024 representa una pérdida neta inmediata que no puede stockearse para el futuro. La falta de un modelo de inventario físico exige una precisión absoluta en la planificación comercial de las horas-hombre vendibles.",
        "recomendacion": "Debes optimizar tu tasa de utilización de consultores para que el 'inventario de horas' disponible coincida con la demanda de proyectos activos. Implementa un tablero de control de disponibilidad en tiempo real que permita al equipo comercial vender consultoría basándose en los espacios libres detectados en la programación técnica del mes.",
        "metodologia": "Bloque B - Auditoría Anual 2024",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "dpo",
        "periodo_ano": 2024,
        "period_key": "Annual",
        "tipo": "success",
        "analisis_positivo": "Has logrado un apalancamiento estratégico extraordinario en 2024 con un DPO promedio de 81 días. Esto significa que estás utilizando el crédito comercial de tus proveedores como un motor de financiamiento a tasa cero, superando incluso tu tiempo de recaudo (DSO 87 días) en los mejores meses del año.",
        "analisis_negativo": "El riesgo de estirar el pago a proveedores hasta los 81 días es la posible degradación de la calidad del servicio técnico que recibes. Si tus consultores externos sienten que el pago se demora excesivamente respecto a su esfuerzo entregado, podrías perder a tus mejores talentos frente a competidores con ciclos de pago más cortos.",
        "recomendacion": "Mantén este nivel de apalancamiento pero prioriza el cumplimiento estricto con tus 'Consultores Estrella'. Crea un esquema de pago preferencial para aquellos aliados que entregan proyectos con cero errores, asegurando que tu deuda comercial sea una herramienta de gestión y no un motivo de fricción operativa con tu cadena de valor.",
        "metodologia": "Bloque B - Auditoría Anual 2024",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "rotacion_activos",
        "periodo_ano": 2024,
        "period_key": "Annual",
        "tipo": "info",
        "analisis_positivo": "La eficiencia en el aprovechamiento de tus herramientas tecnológicas y sistemas de gestión de consultoría se mantiene estable durante 2024. Estas logrando extraer valor de cada peso invertido en activos operativos, lo que garantiza que la base de capital de MAS CONSULTA esté alineada con su capacidad de generación de ingresos reales.",
        "analisis_negativo": "La rotación de 0.08X anual refleja una subutilización de la capacidad instalada comparada con el potencial del sector. Tienes activos monetarios (cuentas por cobrar y saldos en tránsito) que no están rotando lo suficiente como para maximizar el retorno sobre el activo total, limitando tu capacidad de expansión orgánica inmediata.",
        "recomendacion": "Debes enfocar tus activos hacia la generación de ingresos recurrentes de alta rotación. Considera la creación de productos de consultoría empaquetados de menor valor pero mayor volumen de venta mensual, lo que permitirá que tus activos operen con mayor frecuencia y eleven el ratio de productividad global de la firma.",
        "metodologia": "Bloque B - Auditoría Anual 2024",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "rotacion_cartera",
        "periodo_ano": 2024,
        "period_key": "Annual",
        "tipo": "warning",
        "analisis_positivo": "Tu gestión comercial ha inyectado vitalidad al balance de 2024, logrando metas de facturación que sostienen la estructura de costos de la compañía. Se observa una mejoría en la calidad de los contratos firmados, lo que indica que el mercado corporativo colombiano reconoce y acepta tus términos de servicio profesional.",
        "analisis_negativo": "Una rotación de 0.42X anual sigue siendo lenta; significa que tu cartera apenas se renueva cada 9 meses. Mantenes un saldo de cuentas por cobrar estancado que consume gran parte de tu energía operativa en gestiones de tesorería, en lugar de permitir que ese flujo financie nuevas líneas de consultoría técnica.",
        "recomendacion": "Implementa un programa de factoraje (confirming) para tus facturas con grandes clientes corporativos. Esto te permitirá 'vender' tu cartera a instituciones financieras y recibir el efectivo de manera inmediata (DSO 5 días virtuales), eliminando el riesgo de impago y acelerando drásticamente el flujo de caja del negocio.",
        "metodologia": "Bloque B - Auditoría Anual 2024",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "rotacion_inventarios",
        "periodo_ano": 2024,
        "period_key": "Annual",
        "tipo": "success",
        "analisis_positivo": "Has mantenido la disciplina de no acumular inventarios físicos innecesarios durante el 2024. Este enfoque puramente digital y de servicios te protege contra las fluctuaciones de precios de insumos y los costos de bodegaje, permitiendo que tu margen de contribución por proyecto se mantenga limpio y fácil de auditar.",
        "analisis_negativo": "Al no existir inventario físico, el mayor riesgo detectado es la 'obsolescencia del conocimiento'. Si tus consultores pasan mucho tiempo entre proyectos sin actualizar sus certificaciones o metodologías, tu 'capacidad disponible' en el balance se deprecia rápidamente frente a las exigencias tecnológicas de tus clientes corporativos finales.",
        "recomendacion": "Invierte parte del excedente de caja en capacitaciones certificadas para tus consultores durante los periodos de baja rotación de proyectos. Convierte el tiempo ocioso en un activo de mayor valor (Up-skilling), asegurando que tu 'stock de talento' sea siempre de primer nivel y justifique las tarifas de consultoría premium.",
        "metodologia": "Bloque B - Auditoría Anual 2024",
        "generado_por": "antigravity"
    },
    {
        "empresa_id": 3104,
        "indicador_key": "rotacion_proveedores",
        "periodo_ano": 2024,
        "period_key": "Annual",
        "tipo": "success",
        "analisis_positivo": "Tu gestión de pagos en 2024 ha sido estratégica, logrando extender los plazos de cumplimiento comercial sin afectar la operatividad de tus proyectos. Estas utilizando tu reputación corporativa para obtener financiamiento de terceros a una tasa del 0%, lo que mejora directamente tu rendimiento sobre el capital propio invertido.",
        "analisis_negativo": "La rotación de proveedores ha bajado a 0.94X, lo que indica que estás pagando tus deudas comerciales con una lentitud considerable. Si bien esto beneficia la caja, debes tener cuidado de no cruzar la línea que afecte la moral de tus consultores externos, quienes son la base real del servicio que entregas a tus clientes.",
        "recomendacion": "Establece un calendario de pagos predecible que tus proveedores puedan conocer de antemano. Aunque pagues a plazos largos (60-90 días), la puntualidad en la fecha pactada es más importante que la rapidez del pago para mantener la confianza y la calidad del soporte técnico que recibe MAS CONSULTA.",
        "metodologia": "Bloque B - Auditoría Anual 2024",
        "generado_por": "antigravity"
    }
]

with open('payload_bloque_b_lote2_2024.json', 'w', encoding='utf-8') as f:
    json.dump(lote2_2024, f, indent=2, ensure_ascii=False)
