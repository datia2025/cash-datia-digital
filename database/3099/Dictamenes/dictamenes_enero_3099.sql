-- =============================================
-- PROYECTO: Datia Liquidity Dashboard
-- EMPRESA: CARLOS TAMAYO Y ASOCIADOS S.A.S. (ID 3099)
-- MÓDULO: DICTÁMENES MENSUALES - BLOQUE D (ENERO Y FEBRERO)
-- =============================================

-- 1. LIQUIDEZ (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, titulo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai', 2025, '1M', 
'Análisis Mensual de Liquidez',
'Has iniciado este ciclo fiscal con una estabilidad de caja envidiable, logrando que los recursos inmediatos cubran tus compromisos operativos de corto plazo en este arranque de año. Esta base sólida te otorga una ventaja competitiva de reacción rápida ante las primeras oportunidades de negocio de este nuevo periodo consultivo.',
'Sin embargo, observo que gran parte de tu riqueza está hoy inmovilizada en una cartera que supera los cien días de espera institucional, lo que asfixia tu capacidad de reinversión inmediata en nuevos proyectos. Estás operando con el "tanque de combustible" lleno pero con el paso obstruido por la lentitud del recaudo comercial.',
'Te recomiendo encarecidamente que priorices el recaudo de las facturas más antiguas de enero de forma inmediata para desbloquear tu flujo de caja real hoy. No permitas que la inercia del inicio de año se convierta en una parálisis de tesorería sistémica; necesitas ese efectivo hoy para financiar tu crecimiento sostenido de este año.',
'Dictamen Liquidez Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2. RENTABILIDAD (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, titulo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-rentabilidad-ai', 2025, '1M', 
'Análisis Mensual de Rentabilidad',
'Es notable observar cómo tu organización ha logrado sostener sus márgenes operativos intactos durante este primer mes del año, el cual tradicionalmente presenta desafíos por la estacionalidad del negocio. Has demostrado que tu capacidad de resistencia para sostener tu equipo estratégico es superior a la del año anterior en este arranque.',
'Esa resistencia tiene un costo elevado, ya que tu margen neto se ha visto presionado por los gastos fijos del arranque de oficina que superaron la facturación efectiva de este ciclo lunar. Tu maquinaria administrativa está consumiendo combustible operativo antes de que la facturación de servicios de este 2025 tome velocidad crucero.',
'Mi recomendación gerencial para este primer trimestre es implementar un control estricto de los desembolsos de inicio de año que no impacten la captura de nuevos clientes estratégicos. Debes enfocar tus energías comerciales en proyectos de ejecución rápida que inyecten beneficios a tu balance antes del cierre de este trimestre fiscal hoy.',
'Dictamen Rentabilidad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 3. SOLVENCIA (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, titulo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-solvencia-ai', 2025, '1M', 
'Análisis Mensual de Solvencia',
'Tu empresa inicia este año con un respaldo patrimonial que garantiza la autonomía frente a capitales externos para tus operaciones básicas recurrentes de enero. Posees una estructura de propiedad sólida que otorga confianza a tus acreedores estratégicos y te posiciona como una firma segura en el largo plazo hoy mismo.',
'No obstante, el nivel de endeudamiento para financiar el capital de trabajo de arranque ha mostrado un ligero repunte frente al mismo periodo del año pasado hoy. Estás usando recursos externos para cubrir baches de tesorería que deberían ser cubiertos por tu propia operación de servicios, elevando tu riesgo financiero neta.',
'Te aconsejo que limites la contratación de nuevas obligaciones financieras hasta que el flujo de recaudo de cartera de este trimestre se normalice totalmente hoy en día. Mantén el foco en la capitalización de tus utilidades retenidas para fortalecer tu independencia financiera y asegurar la solvencia de tu firma para todo este ciclo.',
'Dictamen Solvencia Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 4. ESTRUCTURA (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, titulo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-estructura-ai', 2025, '1M', 
'Análisis Mensual de Estructura',
'La configuración de tu pasivo hoy muestra una predominancia de obligaciones de largo plazo, lo que quita presión inmediata a tus recaudos mensuales de este nuevo ciclo comercial. Tienes la libertad necesaria para respirar financieramente mientras esperas que tus clientes grandes honren sus compromisos de pago demorado este trimestre.',
'A pesar de esta ventaja, tu estructura administrativa sigue siendo pesada frente al volumen de facturación activa que lograste concretar durante este primer mes de enero hoy. Estás manteniendo una oficina y un equipo dimensionados para una velocidad de negocio que todavía no se ha materializado en tus cuentas bancarias neta.',
'Debes supervisar que tus costos fijos no se disparen durante este primer semestre del año para proteger tu margen de seguridad corporativo hoy mismo. Mi recomendación es optimizar el uso de tus recursos actuales mediante la digitalización de procesos que reduzcan la carga administrativa injustificada de tu firma estratégica consultora hoy.',
'Dictamen Estructura Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 5. ACTIVIDAD (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, titulo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai', 2025, '1M', 
'Análisis Mensual de Actividad',
'Has iniciado este año con un pie derecho impresionante, logrando que tu ciclo de conversión de caja sea tres veces más rápido que en el enero del año anterior hoy. Esta agilidad recuperada es oro puro para tu capacidad de reinversión inmediata y te otorga una vitalidad operativa que pocos competidores poseen hoy.',
'Esa agilidad es frágil, ya que se debe más a un ajuste en tus propios plazos de pago a proveedores que a una mejoría masiva en tu velocidad de cobro actual. Tu bolsillo está bajo una presión constante porque el dinero se aleja de tu cuenta en dieciséis días mientras tus clientes retienen tu riqueza por setenta y tres días.',
'Te recomiendo que sincronices tus ciclos de cobranza con tus egresos estratégicos para que no seas tú quien financie gratuitamente a toda la cadena de valor hoy. Debes endurecer tus acuerdos comerciales de inicio de año para que el dinero retorne antes de que debas pagar tus propias obligaciones de oficina y nómina corporativa.',
'Dictamen Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;
