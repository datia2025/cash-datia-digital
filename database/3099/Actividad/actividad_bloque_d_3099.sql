-- =============================================
-- PROYECTO: Datia Liquidity Dashboard
-- EMPRESA: CARLOS TAMAYO Y ASOCIADOS S.A.S. (ID 3099)
-- MÓDULO: ACTIVIDAD - BLOQUE D (COMPARATIVO MENSUAL INTERANUAL)
-- LOTE 1: ENERO 2025 (8 REGISTROS)
-- ESTÁNDAR: GERENCIA-A-GERENCIA (+40 PALABRAS)
-- =============================================

--------------------------------------------------------------------------------
-- LOTE 1: ENERO 2025 vs ENERO 2024
--------------------------------------------------------------------------------

-- 1. Ciclo de Conversión de Efectivo (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M1', 2025, '1M', 
'Has iniciado este año con un pie derecho impresionante, logrando que tu ciclo de caja sea de cincuenta y siete días, lo cual es casi tres veces más rápido que la parálisis de ciento noventa y tres días que sufriste en el enero anterior. Esta agilidad recuperada es oro puro para tu capacidad de reinversión inmediata hoy.',
'A pesar de este gran avance, no debes olvidar que cincuenta y siete días sigue siendo un periodo considerable de espera comparado con tu cierre de año ideal. La inercia del inicio de año todavía te quita semanas valiosas de liquidez que podrías estar usando para capturar nuevos contratos estratégicos sin depender de capital externo.',
'Te recomiendo que establezcas este nivel de cincuenta y siete días como tu nuevo "techo" de seguridad para cualquier inicio de año futuro. No permitas que la operatividad administrativa se relaje tras las festividades; mantén la presión de recaudo desde el primer día de enero para asegurar que este dinamismo sea la constante de tu firma.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2. Días de Cartera - DSO (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M1', 2025, '1M', 
'Tu gestión de cobranza ha mostrado una disciplina superior este enero, reduciendo el plazo de espera de ciento siete días a solo setenta y tres días. Has logrado que tus clientes respeten mucho más tus acuerdos de pago en este arranque de año, asegurando que el flujo de entrada de recursos sea mucho más predecible.',
'Sin embargo, tener el dinero en la calle por más de dos meses completos sigue siendo una debilidad estructural que castiga tu patrimonio neto actual. Estás financiando la operación de tus clientes por setenta y tres días de forma gratuita, perdiendo la oportunidad de rentabilizar ese efectivo en inversiones seguras de corto plazo para tu firma.',
'Mi sugerencia es que implementes una revisión exhaustiva de tus contratos de consultoría para incluir cláusulas de cobro por hitos mucho más cortos. Necesitas que este indicador baje de los sesenta días lo antes posible para garantizar que tu rentabilidad no se diluya en el tiempo de espera administrativo de tus deudores hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 3. Días de Inventario - DIO (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M1', 2025, '1M', 
'Inicias el año manteniendo tu ventaja operativa de cero inventarios físicos, lo cual te permite ser sumamente flexible en un mercado que siempre arranca con incertidumbre en enero. Al no tener capital atrapado en "stock" muerto, toda tu artillería financiera está disponible de forma líquida para potenciar tus servicios profesionales más rentables hoy.',
'Al no tener inventarios tangibles, tu "inventario reactivo" son las horas de tu equipo que no se facturan de inmediato por demoras en aprobaciones. Cada día que un proyecto se detiene en enero por falta de gestión documental del cliente, es un activo que pierdes y que nunca podrás recuperar ni liquidar para obtener efectivo neto.',
'Te aconsejo que digitalices totalmente el seguimiento de tus hitos de servicio para que la aceptación del cliente sea inmediata. Al convertir tu proceso de entrega en algo ágil y transparente, minimizarás el riesgo de tener capacidad instalada ociosa, asegurando que tu modelo de inventario cero sea siempre sinónimo de rentabilidad máxima constante.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 4. Días de Pago - DPO (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M1', 2025, '1M', 
'Has pasado de pagar en ochenta y cinco días a solo dieciséis días en este enero, lo cual proyecta una imagen de solvencia y seriedad inmejorable ante tus proveedores estratégicos. Estás honrando tus compromisos con una velocidad admirable, asegurándote de contar con los mejores aliados para ejecutar tus proyectos de alto nivel este 2025.',
'Pagar cinco veces más rápido que el año pasado, mientras tus clientes te siguen pagando en setenta y tres días, es un desbalance financiero que debe preocuparte hoy. Estás entregando tu oxígeno monetario mucho antes de recuperarlo, lo que te obliga a mantener una caja demasiado alta solo para cubrir tus obligaciones con terceros.',
'Mi recomendación es que busques un punto medio y estabilices tus pagos en un ciclo de treinta días fijos. Este ajuste te devolvería catorce días de liquidez mensual sin afectar tu excelente reputación actual, dándote un margen de seguridad extra para manejar la estacionalidad lenta que siempre caracteriza al primer trimestre del año comercial.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 5. Rotación de Activos (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M1', 2025, '1M', 
'Has multiplicado por siete la eficiencia de generación de ingresos sobre tus activos este enero, pasando de apenas un centésimo a siete centésimos de rotación mensual. Estás logrando que tu infraestructura operativa trabaje de forma mucho más productiva y rentable que el año pasado, maximizando el uso de cada peso invertido en la empresa.',
'A pesar del crecimiento exponencial, todavía estás operando por debajo de tu nivel de crucero ideal de cierre de año. Tienes capacidad instalada que en enero parece estar "a media marcha", lo que significa que tus costos fijos de oficina y tecnología están pesando más de lo que deberían sobre tu margen de utilidad neta.',
'Debes enfocarte en captar contratos de mantenimiento o soporte recurrente que aseguren una facturación base desde los primeros días de enero de cada año. Al garantizar esta rotación mínima desde el arranque, lograrás que la rentabilidad de tus activos sea constante y no dependa exclusivamente del éxito de proyectos grandes e intermitentes.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 6. Rotación de Cartera (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M1', 2025, '1M', 
'La velocidad de tu cobranza ha mejorado notablemente este enero, logrando una rotación de doce centésimos frente a los ocho centésimos del mismo mes en 2024. Has logrado que el dinero circule con mayor agilidad, permitiéndote contar con recursos frescos para afrontar los compromisos de inicio de año sin recurrir a endeudamiento externo.',
'Esa rotación aún indica que tu facturación solo rota una vez cada ocho meses aproximadamente a este ritmo, lo cual es peligrosamente lento para una firma de servicios pura. Tener el capital de trabajo estancado por tanto tiempo eleva tu costo de oportunidad, impidiéndote aprovechar descuentos por pronto pago o nuevas oportunidades de inversión inmediata.',
'Te sugiero que implementes un sistema de facturación por hitos cortos y verificables que obligue a una rotación de cartera superior a los treinta centésimos mensuales. Al acelerar la frecuencia de recaudo, tu empresa ganará una vitalidad financiera que te permitirá liderar el mercado con una agresividad operativa mucho mayor que tu competencia hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 7. Rotación de Inventarios (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M1', 2025, '1M', 
'Al mantener cero inventarios físicos, tu rotación de "existencias" es nula, lo que te otorga una agilidad financiera total frente a empresas que hoy están lidiando con mercancías estancadas tras la temporada de fin de año. Tu modelo liviano es tu mayor blindaje contra las pérdidas por deterioro o almacenamiento innecesario este nuevo año comercial.',
'No tener inventarios te obliga a ser el mejor en la rotación de tus servicios profesionales, y ahí es donde enero suele ser traicionero por la baja actividad comercial externa. Si tus consultores no están facturando, tu "inventario de horas-hombre" se pierde irremediablemente, afectando tu capacidad de generar riqueza real de forma inmediata y constante.',
'Mi recomendación es que aproveches los periodos lentos de enero para capacitar a tu equipo en nuevas herramientas tecnológicas que aumenten su productividad futura. Al elevar la calidad de tus procesos de entrega de servicio, estarás asegurando una rotación intelectual superior que te permitirá subir tus tarifas y mejorar tu rentabilidad bruta final.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 8. Rotación de Proveedores (Enero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M1', 2025, '1M', 
'Has iniciado el año con una rotación de proveedores de casi dos veces al mes, lo cual es seis veces superior a la agilidad mostrada en enero de 2024. Has pasado de ser un pagador lento a ser la prioridad número uno de tus aliados estratégicos, garantizando un soporte operativo incuestionable para tus proyectos actuales hoy.',
'Esta rotación tan agresiva en los pagos puede estar consumiendo tu caja de reserva de forma innecesaria en un mes donde los recaudos suelen ser más parsimoniosos de lo habitual. Estás priorizando la liquidez de tus proveedores por encima de tu propia estabilidad de tesorería de corto plazo, lo cual es un riesgo gerencial hoy mismo.',
'Te aconsejo que sincronices tus ciclos de pago con tus hitos de recaudos más grandes. No realices egresos masivos si todavía no has verificado la entrada de efectivo de tus clientes principales del mes. Al equilibrar ambas velocidades de rotación, protegerás tu bolsillo y mantendrás la salud financiera de tu firma intacta este trimestre.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 2: FEBRERO 2025 vs FEBRERO 2024
--------------------------------------------------------------------------------

-- 9. Ciclo de Conversión de Efectivo (Febrero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M2', 2025, '2M', 
'A pesar de las dificultades del mes, has logrado que tu ciclo de caja sea de ciento treinta y seis días, una cifra que, aunque alta para tu firma, es ligeramente menor que los ciento cuarenta y cinco días que sufriste en febrero del año pasado. Has demostrado una resiliencia operativa destacable ante un entorno de pagos lento.',
'Este indicador es engañoso, ya que la aparente mejoría se debe a que estás pagando a tus proveedores a una velocidad alarmante, no porque estés cobrando más rápido. Tu patrimonio líquido está bajo fuego porque tu dinero se aleja de tu cuenta en diez días mientras tus clientes retienen tu riqueza por casi cinco meses hoy.',
'Te recomiendo encarecidamente que dejes de usar tu caja de reserva para financiar la operación de tus deudores este mes de febrero. Necesitas equilibrar las cargas de inmediato; si tus clientes no te pagan, tú deberías extender tus plazos de pago a terceros para no asfixiar tu propia supervivencia financiera este trimestre.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 10. Días de Cartera - DSO (Febrero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M2', 2025, '2M', 
'Has logrado facturar con éxito durante este mes, manteniendo tu presencia comercial en el mercado y asegurando futuros ingresos para tu firma estratégica. Sin embargo, este volumen de ventas se ha convertido en una cuenta por cobrar muy pesada que hoy requiere de toda tu atención gerencial máxima para no ser pérdida.',
'Tus indicadores de cobranza se han disparado hasta los ciento cuarenta y seis días, lo cual es más del doble de la lentitud que mostraste en febrero de 2024. Tus clientes se han tomado una confianza excesiva con tu capital corporativo, convirtiendo tu balance en un repositorio de facturas muertas que no generan liquidez.',
'Mi recomendación es que suspendas cualquier nuevo servicio a aquellos clientes que hoy acumulan más de noventa días de mora en su cartera institucional. Usa esta medida de choque para forzar el recaudo inmediato; no permitas que tu amabilidad comercial se convierta en la tumba de tu liquidez para el resto de este año.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 11. Días de Inventario - DIO (Febrero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M2', 2025, '2M', 
'Mantenerse en cero días de inventario físico este febrero es tu salvación financiera, ya que te ha permitido evitar costos de almacenamiento adicionales en un mes donde la caja está sumamente apretada por el retraso de los recaudos comerciales. Tu estructura liviana es lo que hoy permite que tu firma siga respirando.',
'Al no tener inventarios físicos, tu única moneda de cambio líquida es el trabajo ya realizado por tus consultores, el cual hoy está estancado en facturas no pagadas por largos periodos. Tu vulnerabilidad es extrema porque no tienes activos materiales que puedas transformar en efectivo de emergencia ante demoras persistentes.',
'Te sugiero que implementes una revisión de hitos de entrega mucho más estricta para este mes de febrero, asegurando que cada hora trabajada se formalice administrativamente. Al reducir el inventario de servicios en proceso, lograrás que la facturación salga más rápido y que el cliente no tenga excusas para postergar hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 12. Días de Pago - DPO (Febrero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M2', 2025, '2M', 
'Pagar a tus socios estratégicos en solo diez días promedio es una muestra de integridad comercial inigualable, especialmente en un mes donde tu recaudo ha sido tan esquivo. Esta disciplina te posiciona como un cliente de oro para tus proveedores, quienes te darán apoyo incondicional en los momentos más difíciles del año.',
'Financieramente, estás cometiendo un error estratégico al pagar en diez días mientras tus clientes te pagan en ciento cuarenta y seis días de espera comercial. Estás vaciando tu cuenta bancaria de forma acelerada, financiando al resto de la cadena de valor con tus propios ahorros, lo que es insostenible para cualquier empresa.',
'Mi recomendación es que apliques de inmediato la política de pagos a finales de mes para todos tus egresos de febrero sin excepción alguna. Necesitas retener cada peso disponible en tu bolsillo por el mayor tiempo posible para esperar a que tus clientes reaccionen; el apalancamiento gratuito con tus proveedores es hoy tu defensa.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 13. Rotación de Activos (Febrero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M2', 2025, '2M', 
'Tu rotación de activos de seis centésimos mensual indica que tu infraestructura sigue generando negocios, manteniendo un flujo de operaciones corporativas constante. Estás logrando que tus recursos de oficina y tecnología se mantengan activos para dar soporte a tus proyectos actuales, evitando el estancamiento total de la facturación neta.',
'Sin embargo, esta eficiencia es menor que los ocho centésimos que lograste en febrero de 2024, lo que indica un retroceso en la productividad real de tu capital invertido este mes. Tienes una capacidad instalada que hoy te cuesta dinero mantener pero que no está rindiendo los frutos que tu bolsillo gerencial esperaría percibir.',
'Debes enfocarte en proyectos de ejecución rápida que aprovechen al máximo tus recursos actuales durante este mes de febrero. Elimina cualquier gasto de activos innecesario hoy en día y busca maximizar la facturación por cada metro cuadrado o licencias de software que hoy pagas puntualmente a tus socios tecnológicos externos.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 14. Rotación de Cartera (Febrero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M2', 2025, '2M', 
'Lograste mantener una rotación de seis centésimos al mes, lo que significa que el dinero ha seguido circulando en tu estructura comercial a pesar de la lentitud extrema del recaudo general. Has evitado que la recuperación de facturas se detenga por completo, algo vital para mantener el aliento financiero mínimo de tu firma hoy.',
'Es preocupante notar que tu velocidad de cobranza se ha reducido a la mitad frente al trece por ciento de rotación mensual que mostraste en el febrero anterior. Tu capital se ha congelado en el balance, perdiendo dinamismo y obligándote a operar con una estrechez de recursos que frena cualquier iniciativa de crecimiento serio hoy.',
'Implementa una auditoría de cobranza de emergencia para detectar qué facturas de febrero están superando los sesenta días de mora sin causa justificada comercialmente. Usa esta información para presionar a tus clientes estratégicos y elevar tu rotación a niveles de excelencia; tu dinero debe fluir mucho más rápido para ser rentable.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 15. Rotación de Inventarios (Febrero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M2', 2025, '2M', 
'Tu modelo de negocio sigue brillando por su agilidad extrema al mantener cero pesos atrapados en bodegas durante este mes de febrero. Esta carencia de inventarios físicos te permite girar tu estrategia comercial de forma inmediata hacia servicios digitales de entrega rápida, adaptándote a las necesidades urgentes de tus clientes.',
'No tener inventarios físicos te obliga a ser el mejor en la gestión de servicios humanos, los cuales hoy en día están sufriendo por la lentitud del flujo de caja general de la firma. El riesgo es que tu talento se desmotive ante la incertidumbre financiera, afectando la calidad de lo que vendes y deteriorando tu imagen hoy.',
'Te sugiero que utilices la liquidez disponible para automatizar tareas repetitivas de tus consultores expertos, liberando su tiempo para que puedan atender más proyectos simultáneamente en febrero. Al optimizar tu capacidad humana de servicio, lograrás que la rentabilidad por cada servicio suba, manteniendo la eficiencia del inventario cero.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 16. Rotación de Proveedores (Febrero 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M2', 2025, '2M', 
'Has mantenido una rotación de pagos a terceros de casi tres veces al mes, lo que te sitúa como un cliente premium en el mercado de consultoría hoy. Esta rapidez en tus egresos te asegura que tus proveedores no corten el flujo de recursos técnicos necesarios para terminar tus proyectos en curso ante esta difícil situación actual.',
'Pagar casi tres veces cada treinta días es una velocidad de salida de dinero muy alta, ocho veces superior a lo que mostrabas el febrero pasado. Estás agotando tus reservas de efectivo de forma temeraria mientras esperas que tus clientes te paguen, lo que te sitúa en una posición de vulnerabilidad financiera muy alta este mes.',
'Mi recomendación es que frenes en seco esta rotación de pagos y la centralices en una cifra máxima de una vez por mes para todos los proveedores. Necesitas que el dinero permanezca en tu cuenta bancaria por lo menos treinta días completos para servirte de colchón ante cualquier eventualidad que surja hoy en día.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 3: MARZO 2025 vs MARZO 2024
--------------------------------------------------------------------------------

-- 17. Ciclo de Conversión de Efectivo (Marzo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M3', 2025, '3M', 
'Has logrado una recuperación asombrosa en este cierre del primer trimestre, bajando tu ciclo de caja de ciento treinta y seis días en febrero a solo setenta y un días en marzo. Este cambio de ritmo te pone en una posición mucho más competitiva que los ciento veinte días que promediabas en el marzo del año anterior.',
'A pesar de la mejoría trimestral, la volatilidad de tu ciclo es tu mayor enemigo hoy; pasar de cincuenta a ciento treinta y luego a setenta días en solo tres meses indica una falta de control en tus procesos de recaudo. Esta montaña rusa financiera agota tu energía gerencial y te quita previsibilidad para tus inversiones futuras.',
'Te recomiendo que aproveches este impulso positivo para estandarizar tus procesos de cierre de mes. No permitas que la operatividad se descontrole nuevamente; busca que la estabilidad de los setenta días sea tu nuevo piso operativo para que puedas planificar tu crecimiento con una base de efectivo mucho más sólida hoy mismo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 18. Días de Cartera - DSO (Marzo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M3', 2025, '3M', 
'Has conseguido frenar la sangría de cartera observada en febrero, bajando tus plazos de cobro de ciento cuarenta y seis días a ciento dos días en marzo. Este esfuerzo de depuración es vital para que tu balance proyecte una imagen de orden y control ante tus socios y entidades financieras en este cierre de trimestre.',
'Tener el dinero atrapado por más de cien días sigue siendo una debilidad crítica, especialmente cuando comparamos este marzo con los setenta y tres días de recaudo que lograste el año previo. Tus clientes se han vuelto más lentos para pagarte de forma estructural, lo que te obliga a trabajar mucho más duro para recolectar tu propia riqueza.',
'Mi sugerencia es que implementes una política de cobro inmediato para todos los hitos de marzo antes de que termine el mes. No dejes que la cartera se enfríe; un cliente que no paga en cien días es un riesgo de incobrabilidad que hoy no puedes permitirte si quieres mantener la salud financiera de tu firma intacta.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 19. Días de Inventario - DIO (Marzo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M3', 2025, '3M', 
'Tu indicador de inventarios en cero sigue siendo tu carta de triunfo operativa para este cierre de trimestre, permitiéndote operar sin las pesadas cargas de stock que asfixian a otros consultores. Mantienes una firma liviana, digital y altamente adaptable que solo se enfoca en la generación de valor intelectual constante hoy.',
'La ausencia de activos materiales te hace extremadamente dependiente del flujo de caja de servicios, el cual hoy en marzo sigue mostrando signos de lentitud excesiva. Si no estás vendiendo y cobrando activamente, tu empresa no tiene "colchones" de mercancía que liquidar para obtener recursos, lo que te exige una vigilancia absoluta de la caja.',
'Te aconsejo que desarrolles un portafolio de servicios de diagnóstico rápido que puedas facturar y recaudar en menos de quince días. Al crear estos "productos de liquidez inmediata", mitigarás el riesgo de no tener inventarios físicos y asegurarás que tu firma tenga entradas de efectivo constantes durante todo el mes de marzo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 20. Días de Pago - DPO (Marzo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M3', 2025, '3M', 
'Has ajustado tus plazos de pago a treinta y un días en este marzo, logrando un equilibrio mucho más sano que la velocidad extrema de diez días del mes anterior. Esta madurez en tu tesorería demuestra que estás aprendiendo a retener el efectivo en tu bolsillo por más tiempo sin dañar la relación con tus aliados.',
'A pesar del ajuste, sigues pagando diez días antes que el marzo del año pasado, lo que indica que aún estás entregando liquidez antes de lo estrictamente necesario estratégicamente. En un mes donde tu cartera todavía supera los cien días, cada día adicional de pago que regales a tus proveedores es un peso menos de tu margen neto.',
'Mi recomendación es que fijes los treinta días como tu estándar de pago inamovible para todos tus proveedores recurrentes. Al institucionalizar este plazo, ganarás una previsibilidad de tesorería inmensa que te permitirá manejar los baches de recaudo de marzo con una tranquilidad gerencial mucho mayor que la actual.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 21. Rotación de Activos (Marzo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M3', 2025, '3M', 
'Has alcanzado el pico máximo de eficiencia trimestral con una rotación de doce centésimos en este marzo, superando incluso los niveles de productividad del año anterior. Estás logrando que cada peso invertido en tu firma trabaje con una intensidad envidiable, maximizando la facturación por cada recurso operativo disponible hoy.',
'Esta alta rotación indica que estás operando muy cerca del límite de tu capacidad instalada actual, lo que podría empezar a comprometer la calidad de tus servicios si no planeas una expansión controlada. Corres el riesgo de "quemar" tus recursos por exceso de uso, lo que generaría gastos de mantenimiento imprevistos este semestre.',
'Te sugiero que reinviertas parte de la utilidad de marzo en la actualización de tus activos tecnológicos críticos para elevar tu techo de productividad operativa. Al modernizar tus herramientas, podrás atender más clientes con los mismos activos, mejorando aún más tu rotación sin aumentar tu carga de trabajo física de forma peligrosa.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 22. Rotación de Cartera (Marzo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M3', 2025, '3M', 
'La velocidad de tu cobranza ha mostrado una recuperación marginal pero positiva en marzo, logrando rotar ocho centésimos de tu facturación total. Has evitado que el dinero se estanque totalmente tras el bache de febrero, demostrando que tu equipo de gestión administrativa tiene la capacidad de reaccionar ante las crisis de liquidez hoy.',
'Seguimos operando por debajo de los doce centésimos logrados en el marzo anterior, lo que indica que tu recaudo es un treinta por ciento más lento hoy de lo que era hace doce meses. Tu riqueza está circulando con una parsimonia que hoy castiga tu flujo de caja neto, obligándote a monitorear cada factura como si fuera la última.',
'Debes implementar incentivos por pronto pago mucho más agresivos para este cierre de trimestre en marzo. Necesitas que el dinero vuelva a casa con la misma fuerza que el año pasado; no permitas que tus clientes se acostumbren a financiar sus operaciones con tu capital de trabajo sin ningún costo financiero para ellos hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 23. Rotación de Inventarios (Marzo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M3', 2025, '3M', 
'Tu eficiencia de inventario cero en marzo te permite cerrar el trimestre con un balance limpio de activos obsoletos o materiales inactivos. Posees una maquinaria de servicios tan moderna que puede concentrar toda su energía técnica en la mejora continua de la metodología, ganando una ventaja competitiva de conocimiento inmensa hoy.',
'Al no tener inventarios, tu única garantía de ingresos es la facturación activa, la cual en marzo ha tenido que trabajar el doble para compensar los retrasos en los recaudos de los meses previos. Esta presión constante sobre el área comercial puede desgastar el modelo si no se acompaña de una estructura de cobros ágil hoy.',
'Te recomiendo que documentes y empaquetes tus "mejores prácticas" de consultoría realizadas en marzo como productos digitales de venta directa. Esto te dará una rotación intelectual similar a la de un inventario físico de alta demanda, diversificando tus fuentes de ingreso sin necesidad de bodegas ni logística compleja hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 24. Rotación de Proveedores (Marzo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M3', 2025, '3M', 
'Has estabilizado tu rotación de pagos en poco menos de una vez al mes durante marzo, lo cual es milimétricamente superior a lo que hacias el año pasado por estas fechas. Estás cumpliendo con tus aliados de forma profesional y ordenada, asegurando que la cadena de suministro de talento externo para tus proyectos siga intacta hoy.',
'Sientes la presión de haber pagado un poco más rápido de lo habitual mientras tu cartera sigue demorada por encima de los cien días de espera. Estás operando con un margen de maniobra estrecho, donde cada peso que sale en marzo para proveedores es un recurso que tardará mucho tiempo en volver vía recaudo administrativo hoy.',
'Mi consejo es que negocies con tus proveedores clave un sistema de pagos basado en el éxito de los recaudos de los proyectos en los que ellos participan activamente. Al alinear los intereses de pago con los de cobro en marzo, protegerás tu liquidez y fomentarás una corresponsabilidad mucho más productiva para tu firma hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 4: ABRIL 2025 vs ABRIL 2024
--------------------------------------------------------------------------------

-- 25. Ciclo de Conversión de Efectivo (Abril 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M4', 2025, '4M', 
'Has logrado mantener una ventaja competitiva de flujo de caja muy sólida este abril, con un ciclo de noventa y un días que es un cuarenta por ciento más rápido que los ciento cincuenta y cinco días que promediabas el año pasado. Estás consolidando una estructura mucho más liviana y eficiente para tu firma este trimestre hoy.',
'A pesar de este avance, el ciclo se ha estirado veinte días frente a lo que lograste en marzo, lo que indica que la inercia del segundo trimestre ha empezado a pesar sobre tu liquidez inmediata. No puedes permitir que este estiramiento se vuelva una tendencia alcista que devore tus reservas operativas hoy mismo.',
'Te recomiendo que audites los procesos internos de facturación de abril para detectar dónde se están perdiendo esos veinte días adicionales de ciclo. Necesitas recuperar la velocidad de marzo de forma inmediata para asegurar que tu bolsillo cuente con el respaldo necesario para enfrentar los retos del próximo semestre hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 26. Días de Cartera - DSO (Abril 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M4', 2025, '4M', 
'Has logrado estabilizar tus plazos de cobro en ciento siete días, manteniendo una regularidad en el recado que te permite planificar tus egresos de abril con una base de datos real. Has evitado que la cartera se dispare nuevamente, demostrando un control administrativo firme sobre tus cuentas por cobrar institucionales hoy.',
'Estar por encima de los cien días de espera sigue siendo una debilidad estructural que te posiciona casi igual que el año pasado, donde promediabas ciento diez días por estas fechas. Tus clientes se han acostumbrado a pagarte tarde de forma sistemática, lo que indica que tus políticas de cobranza no están siendo persuasivas hoy.',
'Mi sugerencia es que implementes una ronda de llamadas directas a los tomadores de decisiones de tus clientes más representativos este abril. Necesitas romper esta barrera de los cien días para inyectar vitalidad a tu flujo de caja; no permitas que la costumbre del pago demorado se normalice en tu firma este año comercial.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 27. Días de Inventario - DIO (Abril 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M4', 2025, '4M', 
'Tu indicador de inventarios en cero en abril es tu mejor defensa contra la inflación operativa, permitiéndote operar con una estructura de costos muy controlada y eficiente hoy. Al no tener activos físicos deteriorándose en bodegas, puedes concentrar todo tu capital de trabajo en potenciar el talento humano de tu firma hoy mismo.',
'Al no tener inventarios tangibles, tu riesgo se concentra totalmente en el recaudo de servicios prestados, el cual hoy en abril sigue siendo preocupantemente lento. Dependes exclusivamente de la voluntad de pago de tus clientes, lo que te quita autonomía estratégica si no cuentas con una reserva de efectivo robusta que te respalde hoy.',
'Te recomiendo que crees un fondo de emergencia basado en un porcentaje de cada factura cobrada en abril. Al no tener que reinvertir en stock de mercancías, este fondo te dará la seguridad necesaria para negociar con mayor fuerza ante esos clientes que hoy demoran tus pagos por encima de los cien días de espera hoy en día.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 28. Días de Pago - DPO (Abril 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M4', 2025, '4M', 
'Has reducido tus plazos de pago a solo quince días en este mes de abril, lo cual te consolida como el mejor socio comercial del sector para tus proveedores. Esta agilidad extrema te asegura que tu firma siempre tenga acceso al mejor equipamiento y asesoría técnica externa para ejecutar tus proyectos de consultoría estratégica hoy.',
'Pagar en quince días es casi cuatro veces más rápido de lo que lo hacías el año pasado, lo cual es una generosidad financiera peligrosa hoy. Estás entregando tu liquidez mucho antes de que tus propios clientes te paguen, financiando la cadena de valor con tus propios recursos vitales de abril sin ningún beneficio o descuento neta.',
'Mi recomendación es que extiendas tus plazos de pago a por lo menos veinticinco días de forma inmediata. Ese ajuste de diez días extra de permanencia del dinero en tu cuenta te daría el aire necesario para aguantar los baches de recaudo sin estresar la tesorería de tu firma durante este segundo trimestre del año comercial.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 29. Rotación de Activos (Abril 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M4', 2025, '4M', 
'Sigues manteniendo una eficiencia de activos sobresaliente este abril, con una rotación de once centésimos que es cinco veces superior a la parálisis operativa que tuviste el año pasado en el mismo periodo. Estás logrando que tu infraestructura rinda frutos reales y constantes para tu bolsillo gerencial de forma profesional.',
'A pesar de la alta eficiencia, la rotación ha caído un punto frente a marzo, lo que indica que has empezado a añadir activos o costos fijos que no han generado un incremento proporcional en las ventas de abril. Debes vigilar que tu estructura administrativa no crezca más rápido que tu facturación real este trimestre actual.',
'Te sugiero que realices un análisis de costo-beneficio de todos los servicios por suscripción o contratos fijos que tienes activos este mes de abril. Elimina cualquier gasto que no esté impactando directamente en la generación de valor para tus clientes para asegurar que tu rotación de activos vuelva a subir pronto.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 30. Rotación de Cartera (Abril 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M4', 2025, '4M', 
'Has mantenido una rotación de cartera estable de ocho centésimos al mes, igualando el desempeño del año pasado y demostrando una consistencia en tus procesos de recaudo administrativo en abril. Lograste evitar que el flujo de efectivo se detenga totalmente, manteniendo la operatividad mínima de tu firma comercial hoy.',
'Estar estancado en ocho centésimos mientras tu facturación crece significa que tu volumen de dinero muerto en el balance es cada vez mayor este mes. No has logrado capitalizar tus mayores ventas en mayor liquidez inmediata, lo que te obliga a trabajar el doble para obtener el mismo flujo de caja real de antes.',
'Debes ser mucho más agresivo con las penalidades por mora en tus contratos de abril. Si tus clientes no sienten el impacto financiero de pagarte tarde, seguirán priorizando otros gastos sobre tus facturas. Necesitas elevar esta rotación a por lo menos quince centésimos para que tu firma tenga la vitalidad que mercadeas.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 31. Rotación de Inventarios (Abril 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M4', 2025, '4M', 
'Tu modelo de servicios puros brilla este abril al evitarte cualquier riesgo de inventario físico, posicionándote como una empresa moderna y liviana. Esta agilidad estructural te permite reaccionar ante cambios en la demanda de consultoría de forma inmediata, ajustando tu oferta sin tener capital amarrado de forma estéril hoy.',
'La contracara es que tu única fuente de activo circulante es tu cartera, y si esta se mantiene con plazos superiores a los cien días, tu modelo liviano se vuelve extremadamente frágil administrativamente en abril. No tienes otros recursos físicos a los cuales echar mano si el recaudo de este mes falla hoy.',
'Te recomiendo que empaquetes tus servicios de abril en modalidades de suscripción que cobren por adelantado una cuota fija de mantenimiento operativo. Esto te daría una entrada de efectivo prepagada que funcionaría como un inventario de altísima rotación, asegurando la liquidez de tu firma sin perder la eficiencia del inventario.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 32. Rotación de Proveedores (Abril 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M4', 2025, '4M', 
'Has mantenido una rotación de pagos a terceros de casi dos veces al mes en abril, lo cual es cuatro veces más rápido de lo que mostrabas el año pasado. Tu palabra vale oro ante tus proveedores estratégicos, asegurándote de contar con el apoyo técnico incondicional necesario para culminar exitosamente tus compromisos hoy.',
'Pagar casi cada quince días es una velocidad de salida de dinero muy alta que hoy en abril no está sincronizada con tus recaudos lentos de cartera. Estás perdiendo la oportunidad de usar el apalancamiento comercial gratuito que te ofrecen tus proveedores, estresando tu propia caja de reserva para financiar operaciones ajenas.',
'Mi recomendación es que centralices tus pagos en una sola fecha del mes de abril para todos tus proveedores estratégicos. Al reducir la frecuencia de rotación de pagos a una vez por mes, ganarás días de liquidez valiosísimos que te servirán para respaldar tus propios crecimientos sin necesidad de recurrir a bancos externos.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 5: MAYO 2025 vs MAYO 2024
--------------------------------------------------------------------------------

-- 33. Ciclo de Conversión de Efectivo (Mayo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M5', 2025, '5M', 
'Has alcanzado el "Mes Dorado" de tu operación este mayo, logrando un ciclo de caja impresionante de solo catorce días. Estás operando con una velocidad diez veces superior a los ciento cincuenta y cinco días que te asfixiaban el año pasado, lo que libera una cantidad de recursos enorme para tu bolsillo hoy.',
'Este nivel de eficiencia es tan alto que cualquier pequeña desviación en junio se sentirá como un golpe fuerte en tu tesorería institucional. Mantener una rotación de catorce días exige una coordinación quirúrgica entre tus ventas y tus pagos que hoy te deja muy poco margen para errores administrativos.',
'Te recomiendo que documentes exactamente qué procesos de cobranza y qué acuerdos con proveedores permitieron este hito de mayo. Necesitas convertir este éxito puntual en un manual de procedimientos estándar para que tu firma pueda repetir este desempeño de élite durante el segundo semestre de este año comercial.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 34. Días de Cartera - DSO (Mayo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M5', 2025, '5M', 
'Tu disciplina de recaudo ha dado frutos excepcionales este mayo, bajando tus plazos de cobro de ciento diez días el año pasado a solo setenta y tres días hoy. Has logrado recuperar el control de tus facturas, asegurando que la mayor parte de tu facturación se convierta en dinero real en menos de tres meses.',
'A pesar de la gran mejoría, setenta y tres días sigue siendo un periodo holgado donde tus clientes están usando tu efectivo sin costo alguno para ellos hoy. En un modelo de servicios puros, cada día que tu consultor no se convierte en dinero bancario es una pérdida latente que hoy limita tu capacidad estratégica.',
'Mi sugerencia es que aproveches este buen momento para negociar pagos por anticipado con tus clientes más grandes en mayo. Si logras bajar este indicador a sesenta días, habrás blindado tu firma ante cualquier crisis de liquidez externa, ganando una libertad operativa que pocos competidores ostentan hoy mismo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 35. Días de Inventario - DIO (Mayo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M5', 2025, '5M', 
'Mantener tus inventarios en cero durante este mes de mayo de alta facturación ratifica la eficiencia inmaculada de tu modelo de negocio digital. No tienes que preocuparte por stock estancado ni obsolescencia, lo que te permite cerrar el mes con un balance sumamente líquido y transparente para tus socios hoy.',
'El riesgo oculto es que tus servicios de mayo se vuelvan genéricos si no inviertes en mejorar tu propiedad intelectual constante. Al no tener inventarios físicos, tu única diferenciación real es el conocimiento, y si este no se actualiza, tu capacidad de cobrar tarifas premium se verá comprometida hoy mismo.',
'Te aconsejo que destines parte de tu tiempo gerencial de mayo a la creación de metodologías propietarias que aumenten el valor percibido de tus horas-hombre. Al elevar la sofisticación de tu inventario intelectual, asegurarás que tu rentabilidad siga subiendo sin depender de volumen masivo de horas de trabajo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 36. Días de Pago - DPO (Mayo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M5', 2025, '5M', 
'Has logrado estabilizar tus plazos de pago en casi sesenta días durante este mayo, recuperando el apalancamiento comercial que habías perdido en los meses previos. Estás financiando gran parte de tu operación con el crédito gratuito de tus proveedores, lo cual es una jugada maestra para proteger tu bolsillo propio.',
'Cuidar tu caja es vital, pero extender los pagos a sesenta días puede empezar a generar fricciones con aliados estratégicos que necesitan liquidez inmediata por estas fechas de mayo. No permitas que esta eficiencia de tesorería se convierta en una mala reputación de pagador que te cierre puertas en el futuro comercial.',
'Te recomiendo que categorices a tus proveedores este mayo: paga en quince días a los indispensables para tu calidad de servicio y mantén los sesenta días para los gastos administrativos generales. Al segmentar tus egresos, protegerás tus relaciones clave mientras mantienes el alto beneficio de apalancamiento hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 37. Rotación de Activos (Mayo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M5', 2025, '5M', 
'Tu rotación de activos se mantiene en niveles de excelencia con once centésimos al mes, demostrando que tu maquinaria corporativa está trabajando a plena capacidad este mayo. Has logrado sostener el ritmo de eficiencia del trimestre anterior, asegurando que cada recurso de tu firma genere valor tangible hoy.',
'Esta estabilidad sugiere que ya has alcanzado tu límite operativo con la estructura actual de activos fijos que posees en mayo. Si quieres seguir creciendo en ventas, podrías empezar a experimentar baches en la calidad del servicio si no optimizas tus procesos digitales internos para que rindan más hoy.',
'Te sugiero que implementes herramientas de inteligencia artificial para automatizar la elaboración de informes y diagnósticos este mes de mayo. Al reducir el tiempo que tus activos humanos dedican a tareas mecánicas, elevarás tu rotación real sin necesidad de contratar más personal ni alquilar más oficinas hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 38. Rotación de Cartera (Mayo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M5', 2025, '5M', 
'La velocidad de tu cobranza ha dado un salto muy positivo este mayo, alcanzando una rotación de doce centésimos que es un cincuenta por ciento superior al desempeño del año pasado. Estás logrando que el dinero vuelva a tus manos con la fuerza necesaria para mantener tu crecimiento corporativo sin angustias.',
'A pesar de la mejoría, tu riqueza aún se toma casi ocho meses en rotar completamente al ritmo de mayo, lo que te impide reinvertir tus utilidades de forma agresiva en expansión. Tienes mucho capital esperando en facturas por cobrar, lo que hoy te quita puntos de ventaja competitiva frente a firmas líquidas.',
'Implementa un sistema de cobro digital automatizado este mayo que envíe recordatorios diarios a tus clientes desde tres días antes del vencimiento. Al profesionalizar y despersonalizar tu cobranza, elevarás tu rotación habitual y educarás a tus clientes sobre la importancia de la puntualidad para tu firma hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 39. Rotación de Inventarios (Mayo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M5', 2025, '5M', 
'Tu indicador nulo de inventarios físicos en mayo es tu mejor aliado estratégico, permitiéndote concentrar toda tu energía en la consultoría de alto nivel. Posees una organización sumamente ágil que puede cerrar acuerdos comerciales y empezar a ejecutarlos en menos de veinticuatro horas, una velocidad estructural envidiable hoy.',
'La falta de activos físicos te exige ser impecable en la gestión de tu capital humano, el cual es propenso al cansancio operativo en este tramo central del año en mayo. Si tu equipo se agota, tu capacidad de entrega cae y tu flujo de caja se resiente de inmediato por falta de facturación.',
'Te recomiendo que diseñes paquetes de servicios de entrega express con tarifas premium para este mes de mayo. Al no tener inventarios tangibles, tu agilidad para entregar rápido es tu mayor valor añadido; cóbralo con orgullo y verás cómo tu utilidad neta se dispara sin aumentar tus costos operativos.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 40. Rotación de Proveedores (Mayo 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M5', 2025, '5M', 
'Has estabilizado tu rotación de pagos en niveles de medio punto al mes durante mayo, manteniendo una sincronía perfecta con tus recaudos de cartera del periodo. Esta armonía financiera te permite operar sin sobresaltos de tesorería, asegurando que cada salida de dinero esté respaldada por una entrada equivalente previa.',
'Operas con una cautela admirable, pero esta velocidad de pago es casi la misma que el año pasado, lo que indica que no has explorado nuevas negociaciones de plazos con tus aliados en mayo. Podrías estar perdiendo días de apalancamiento que hoy serían vitales para financiar una campaña comercial más agresiva hoy.',
'Mi consejo es que pidas a tus tres proveedores más grandes una extensión de plazos a cambio de asegurarles un volumen de contrato mayor para el cierre de año. Al usar tu crecimiento como palanca de negociación en mayo, mejorarás tu ciclo financiero neta y tendrás más efectivo disponible para tus propios planes.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 6: JUNIO 2025 vs JUNIO 2024
--------------------------------------------------------------------------------

-- 41. Ciclo de Conversión de Efectivo (Junio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M6', 2025, '6M', 
'Has cerrado el primer semestre con un ciclo de caja de ciento treinta y cuatro días, lo cual sigue siendo un avance frente a los ciento cincuenta y cinco días que promediabas el año pasado. Estás logrando que tu estructura operativa sea estructuralmente más veloz hoy que en el pasado reciente por estas mismas fechas actuales.',
'Sin embargo, has tenido un retroceso alarmante frente a los catorce días que lograste en mayo; tu ciclo se ha multiplicado por diez en solo un mes. Esta inestabilidad indica que el control de tu caja de junio ha sido parsimonioso, permitiendo que la ineficiencia vuelva a ocupar el asiento delantero de tu tesorería institucional hoy.',
'Te recomiendo que realices un comité de caja de urgencia para este cierre de junio. No permitas que la firma se relaje después del éxito de mayo; necesitas identificar qué pagos se adelantaron y qué cobros se postergaron para que tu ciclo vuelva a niveles de excelencia antes de iniciar la segunda mitad del año.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 42. Días de Cartera - DSO (Junio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M6', 2025, '6M', 
'Has logrado facturar con un dinamismo envidiable durante este junio, asegurando una base de ingresos futura para tu firma estratégica. Tu equipo comercial ha hecho su trabajo al colocar tus servicios en el mercado nacional e internacional, manteniendo la relevancia de tu marca ante los clientes actuales hoy mismo.',
'La contracara es que tus recaudos se han hundido hasta los ciento cuarenta y cinco días, superando incluso la lentitud estructural de ciento diez días que mostraste el año pasado. Tus clientes se han tomado unas vacaciones de pago de junio a costa de tu liquidez, convirtiendo tu balance en un cementerio de facturas.',
'Mi sugerencia es que suspendas el soporte técnico a aquellos proyectos cuyos pagos de junio no se hayan verificado antes del día veinte del mes. Usa tu valor operativo como moneda de presión; no permitas que tu capital se siga evaporando en manos de terceros mientras tú cubres todos tus costos fijos administrativos.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 43. Días de Inventario - DIO (Junio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M6', 2025, '6M', 
'Cerrar el primer semestre con inventarios físicos en cero es una muestra de sanidad financiera inigualable para tu firma consultora. Has evitado amarrar capital en activos que se deprecian, manteniendo toda tu potencia comercial lista para ser desplegada en servicios de alta rentabilidad durante este mes de junio tan exigente hoy mismo.',
'No tener inventarios te obliga a ser el mejor en la gestión del tiempo de tus consultores, el cual en junio parece haber sido menos productivo en términos de recaudo real. Tu vulnerabilidad es extrema: si no cobras hoy lo que facturas, no tienes ninguna mercancía física que puedas liquidar estratégicamente.',
'Te aconsejo que implementes un tablero de control de horas facturadas mes a mes para este cierre de junio. Al visibilizar la productividad humana de forma inmediata, lograrás que tus consultores se enfoquen en cerrar hitos de pago rápido, mitigando el riesgo de no tener activos materiales que respalden tu bolsillo hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 44. Días de Pago - DPO (Junio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M6', 2025, '6M', 
'Pagar a tus proveedores en solo once días durante junio es un gesto de nobleza comercial impresionante, especialmente cuando tus clientes te están pagando en ciento cuarenta y cinco días. Esta solvencia moral te asegura que tus aliados estratégicos estarán ahí para ti cuando necesites recursos técnicos urgentes hoy mismo.',
'Financieramente, pagar en once días es un error estratégico grave este junio, ya que te sitúa cinco veces por debajo del periodo de apalancamiento de cincuenta y cuatro días que lograste el año previo. Estás regalando tu liquidez a terceros de forma acelerada mientras tu propio bolsillo se vacía esperando al recaudo.',
'Mi recomendación es que frenes todos los egresos no críticos de finales de junio y los pases para la segunda semana de julio sin falta. Necesitas retener el poco efectivo disponible para compensar la lentitud extrema de tu cartera; el apalancamiento comercial con proveedores externos es tu mejor herramienta financiera hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 45. Rotación de Activos (Junio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M6', 2025, '6M', 
'Has logrado que tu rotación de activos sea de cinco centésimos en junio, lo que representa más del doble de la eficiencia operativa que mostraste en el mismo periodo del año anterior. Estás consiguiendo que tu infraestructura tecnológica y de oficinas rinda mucho más por cada peso invertido en tu bolsillo actual.',
'A pesar de la mejoría anual, la eficiencia ha caído a menos de la mitad frente a los once centésimos de mayo, indicando una parsimonia preocupante en este cierre de semestre. Tienes recursos ociosos o procesos que se han ralentizado, castigando la rentabilidad neta de tu capital de trabajo invertido este junio actualmente.',
'Debes auditar el uso de tus licencias de software y servicios tercerizados este mes de junio para identificar gastos que no estén generando facturación activa. Al depurar tu base de activos, lograrás que tu rotación vuelva a subir, asegurando que tu firma inicie el tercer trimestre con una potencia renovada hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 46. Rotación de Cartera (Junio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M6', 2025, '6M', 
'Has mantenido una rotación de seis centésimos mensual en junio, demostrando una resiliencia administrativa frente a un entorno de pagos sumamente difícil hoy. Has evitado que el recaudo se congele totalmente, manteniendo un flujo de ingresos mínimo que permite que tu firma siga operando con normalidad este semestre comercial.',
'Esta velocidad es un treinta por ciento menor a los ocho centésimos del año pasado, lo que indica que tu recaudo es hoy más lento que antes de iniciar tus planes de expansión. Estás acumulando facturas de oro en el balance que no sirven para pagar la nómina ni los impuestos fiscales de junio hoy.',
'Te recomiendo que implementes un bono de éxito para tu equipo administrativo basado exclusivamente en el recaudo efectivo de facturas de más de sesenta días en junio. Necesitas inyectar urgencia a tu cobranza para que el dinero vuelva a circular con la intensidad que tu firma y tu crecimiento merecen hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 47. Rotación de Inventarios (Junio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M6', 2025, '6M', 
'Tu modelo de negocio sin inventarios físicos te permite cerrar este primer semestre en junio con una limpieza estructural envidiable frente a otros competidores. Tienes la libertad total para pivotar tu oferta de servicios hacia consultorías digitales más rentables sin tener activos materiales obsoletos o dañados hoy en tu balance.',
'Al no poseer inventarios, tu única mercancía real es la facturación de servicios, la cual en junio ha sido un cuarenta por ciento más lenta en convertirse en efectivo que hace doce meses. Tu riesgo estratégico está concentrado en la voluntad de pago de tus clientes, lo que hoy te quita autonomía de decisión.',
'Te sugiero que diversifiques tus fuentes de ingreso creando servicios de pago recurrente mensual que no dependan de hitos de entrega complejos en junio. Al asegurar un flujo de efectivo constante, compensarás la carencia de inventarios físicos y ganarás una estabilidad de tesorería que hoy tu firma necesita urgentemente en este cierre.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 48. Rotación de Proveedores (Junio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M6', 2025, '6M', 
'Has mantenido una rotación de pagos a terceros de casi tres veces al mes durante junio, lo cual te pone en el podio de los mejores pagadores del ecosistema consultor. Tus proveedores ven en tu firma un refugio de liquidez segura, lo que te garantiza prioridad absoluta para cualquier recurso técnico que necesites hoy.',
'Pagar casi cada diez días es una velocidad destructiva para tu caja de junio, siendo cinco veces superior a la parsimonia de pagos que mostraste el año pasado. Estás financiando la operación de tus socios externos con tus propios ahorros, lo cual es una generosidad administrativa que hoy tu balance no puede soportar.',
'Mi consejo es que pases a un esquema de pagos quincenales a un esquema de pago mensual único para todo el cierre de semestre en junio. Gana esos veinte días de liquidez extra para tu bolsillo; tus proveedores entenderán el ajuste financiero si les garantizas la continuidad de sus contratos hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 7: JULIO 2025 vs JULIO 2024
--------------------------------------------------------------------------------

-- 49. Ciclo de Conversión de Efectivo (Julio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M7', 2025, '7M', 
'Has iniciado el segundo semestre con una nota positiva en tu ciclo de caja, logrando reducirlo a ciento seis días en julio frente a los ciento treinta y cuatro de junio. Mantienes una ventaja competitiva notable ante los ciento cincuenta y cinco días que promediabas hace un año por estas fechas hoy mismo.',
'A pesar de la mejoría mensual, el ciclo actual supera en cien días tu mejor registro histórico de mayo, lo que indica que tu firma ha perdido agilidad de forma estructural este trimestre. Tu dinero sigue atrapado en la operación por periodos demasiado largos, lo que castiga tu capacidad de ahorro inmediato hoy.',
'Te recomiendo que establezcas una meta de cierre de ciclo por debajo de los noventa días para el próximo mes de agosto. Necesitas forzar la maquinaria administrativa para que el flujo de efectivo recupere su vigor primaveral; no permitas que la inercia del tercer trimestre te robe la liquidez que has construido.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 50. Días de Cartera - DSO (Julio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M7', 2025, '7M', 
'Has logrado frenar la crisis de recaudos sufrida en junio, bajando tus plazos de cobro de ciento cuarenta y cinco días a ciento veintidós días en este julio. Este esfuerzo de depuración de cartera es fundamental para devolverle el aliento a tu caja y asegurar que los proyectos del segundo semestre sean rentables hoy.',
'Tener el dinero en la calle por cuatro meses completos sigue siendo un riesgo de liquidez inmenso frente a los ciento diez días que tenías el año pasado. Tus clientes están financiando su propio crecimiento a costa de tu estabilidad financiera, una situación que hoy te pone en una posición de fragilidad comercial neta.',
'Mi sugerencia es que implementes una auditoría de facturación de julio para detectar por qué los recaudos siguen demorados por encima de los tres meses promedios. Necesitas ser mucho más incisivo en tu gestión de cobro; un cliente que no paga en ciento veinte días no es un aliado, es una carga financiera hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 51. Días de Inventario - DIO (Julio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M7', 2025, '7M', 
'Tu indicador de inventarios en cero este julio sigue siendo la envidia de tus competidores con activos físicos pesados, permitiéndote operar con una libertad total de movimientos. Posees una estructura de servicios tan pura que toda tu energía puede concentrarse en la innovación técnica y la atención al cliente estratégico hoy.',
'Al no tener inventarios, tu riesgo de negocio se concentra exclusivamente en tu capacidad de convertir tu talento en facturas pagadas rápidamente, algo que en julio sigue siendo parsimonioso. Tienes una dependencia absoluta del flujo de efectivo de cartera, lo que hoy te obliga a ser un gerente de cobros antes que un consultor.',
'Te recomiendo que diseñes paquetes de consultoría "express" que se cobren en una sola cuota inicial este mes de julio. Al asegurar el dinero antes de entregar el servicio, crearás un amortiguador financiero que compensará la falta de inventarios materiales y te dará la paz mental necesaria para proyectar el fin de año.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 52. Días de Pago - DPO (Julio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M7', 2025, '7M', 
'Pagar a tus proveedores en dieciséis días promedio durante julio te mantiene como un cliente de altísima confiabilidad en el mercado actual de servicios externos. Has logrado equilibrar tus plazos de egreso lo suficiente para no asfixiar a tus aliados, asegurando que tu cadena de valor técnica esté motivada para apoyarte hoy.',
'Pagar en dieciséis días cuando tu recaudo supera los ciento veinte días es una generosidad administrativa que estresa tu tesorería de forma innecesaria en julio. Estás devolviendo el dinero a la economía mucho más rápido de lo que lo recibes, lo que hoy te obliga a operar con un margen de maniobra muy pequeño.',
'Mi recomendación es que lleves tus plazos de pago a por lo menos veintidós días de forma inmediata este julio. Ese ajuste de seis días extra de permanencia del efectivo en tu bolsillo te daría un respiro vital para enfrentar los compromisos de agosto sin necesidad de recurrir a tus ahorros de emergencia hoy mismo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 53. Rotación de Activos (Julio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M7', 2025, '7M', 
'Has recuperado tu pico de eficiencia en julio con una rotación de once centésimos, igualando tus mejores registros del año y quintuplicando la parálisis operativa del julio anterior. Estás logrando que tu firma trabaje con una intensidad envidiable, maximizando la utilidad por cada peso invertido en infraestructura hoy.',
'Mantener este nivel de productividad exige una vigilancia constante sobre tus costos de mantenimiento y renovación de activos tecnológicos que podrías estar postergando. Corres el riesgo de sufrir fallas técnicas imprevistas si no planeas una actualización de tus herramientas críticas antes de que termine este tercer trimestre actual.',
'Te sugiero que realices una auditoría técnica de tus activos fijos este mes de julio para identificar posibles cuellos de botella operativos en tu equipo. Al optimizar tus herramientas de trabajo, asegurarás que tu rotación se mantenga en niveles de excelencia sin desgastar la capacidad humana de tu firma consultora estratégica.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 54. Rotación de Cartera (Julio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M7', 2025, '7M', 
'Has logrado elevar tu velocidad de cobranza a ocho centésimos al mes en julio, recuperando el dinamismo que habías perdido en el cierre del primer semestre. Estás consiguiendo que el efectivo entre a tu firma de forma más constante, permitiéndote afrontar los gastos de operación del segundo periodo con mayor tranquilidad hoy.',
'A pesar del repunte, sigues operando a la misma velocidad que el julio del año anterior, lo que indica que no has logrado avanzar en la eficiencia estructural de tus recaudos. Tu capital de trabajo sigue teniendo una pesadez que hoy limita tus planes de expansión hacia nuevos mercados nacionales o internacionales.',
'Debes implementar un sistema de incentivos para tus clientes que paguen antes de los cuarenta y cinco días este mes de julio. Necesitas que tu riqueza circule mucho más rápido para ser realmente competitiva; no permitas que tus facturas se conviertan en activos estériles en tu balance de fin de mes hoy día.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 55. Rotación de Inventarios (Julio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M7', 2025, '7M', 
'Tu modelo de negocio basado en servicios digitales brilla este julio al evitarte cualquier riesgo de inventario obsoleto o material dañado. Posees una organización sumamente ágil y moderna que puede adaptar su oferta a las necesidades cambiantes del mercado en menos de veinticuatro horas, una ventaja táctica invaluable hoy.',
'No tener inventarios te hace extremadamente vulnerable a los baches de facturación que suelen ocurrir en este tramo del año en julio. Si la demanda de servicios cae, tu empresa se queda sin activos que liquidar para obtener liquidez de emergencia, lo que te obliga a mantener una reserva de efectivo muy estricta hoy.',
'Te recomiendo que crees una "nómina de reserva" que cubra tres meses de operación sin necesidad de facturar nada en julio. Al tener este respaldo financiero, compensarás la ausencia de activos materiales y ganarás la serenidad gerencial necesaria para tomar decisiones de largo plazo sin la angustia del día a día.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 56. Rotación de Proveedores (Julio 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M7', 2025, '7M', 
'Has estabilizado tu rotación de pagos a terceros en casi dos veces al mes en julio, manteniendo una relación de confianza y profesionalismo con tus aliados estratégicos. Esta agilidad te permite negociar mejores tarifas para tus futuros proyectos de cierre de año, ya que eres un cliente apetecible por tu pronto pago.',
'Sin embargo, pagar dos veces al mes es casi cuatro veces más rápido de lo que promediabas el julio anterior, lo que indica un uso ineficiente de tu apalancamiento comercial gratuito. Estás privilegiando la liquidez ajena sobre tu propia estabilidad de tesorería, una decisión que hoy castiga tu flujo de caja neto.',
'Mi consejo es que unifiques todos tus pagos a proveedores en un solo calendario quincenal estricto durante este julio. Al reducir la frecuencia de los egresos, ganarás días de liquidez valiosos que te permitirán aprovechar oportunidades de inversión en activos de crecimiento sin tener que acudir a créditos bancarios externos.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 8: AGOSTO 2025 vs AGOSTO 2024
--------------------------------------------------------------------------------

-- 57. Ciclo de Conversión de Efectivo (Agosto 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M8', 2025, '8M', 
'Has consolidado tu ritmo operativo en agosto con un ciclo de caja de ciento seis días, manteniendo la estabilidad lograda en julio. Estás operando con una celeridad cincuenta días superior a los ciento cincuenta y cinco días que te restaban competitividad el año pasado por estas mismas fechas corporativas hoy.',
'La estabilidad en los cien días indica que has caído en una zona de confort administrativa que hoy impide que tu liquidez siga mejorando de forma agresiva. Tu dinero sigue dando vueltas en el sistema por más de tres meses, lo que genera un costo de oportunidad inmenso para tus planes de inversión de fin de año.',
'Te recomiendo que rompas esta meseta de agosto lanzando una campaña de recaudo relámpago para facturas de servicios terminados. Necesitas forzar el ciclo hacia los ochenta días para ganar la agilidad necesaria que requiere el cierre del tercer trimestre; no permitas que la calma de agosto se vuelva parsimonia estratégica.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 58. Días de Cartera - DSO (Agosto 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M8', 2025, '8M', 
'Has mantenido una regularidad admirable en tus cobros durante agosto, estabilizando tus plazos en ciento veintidós días. Esta constancia te permite proyectar tus flujos de caja con una precisión que no tenías el año pasado, asegurando que cada salida de dinero de tu firma esté plenamente justificada hoy.',
'Estar por encima de los ciento veinte días de espera sigue siendo tu talón de Aquiles, ya que superas en diez días la lentitud del agosto anterior. Tus clientes se han tomado una confianza excesiva con tu bolsillo, asumiendo que tu firma puede aguantar retrasos infinitos sin que haya una consecuencia comercial real hoy.',
'Mi sugerencia es que revises los límites de crédito de tus tres clientes más lentos este mes de agosto. Si no bajan sus plazos de pago, diles que los nuevos servicios tendrán un recargo por financiación administrativa; educa a tu mercado sobre el valor del dinero en el tiempo para tu supervivencia financiera hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 59. Días de Inventario - DIO (Agosto 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M8', 2025, '8M', 
'Tu indicador nulo de inventarios en agosto demuestra que sigues liderando con una estructura liviana y altamente eficiente en el sector de consultoría estratégica. Al no tener activos amarrados en bodegas, puedes reaccionar a las nuevas oportunidades del tercer trimestre con una velocidad que tus competidores tradicionales simplemente no poseen hoy.',
'Al carecer de inventarios tangibles, tu única moneda de cambio es la facturación activa, la cual en agosto se mantiene con plazos de recaudo excesivamente largos. Esto genera una vulnerabilidad financiera neta: si un cliente grande falla, no tienes activos físicos que liquidar para cubrir tus huecos de tesorería inmediata hoy.',
'Te aconsejo que utilices parte del tiempo libre de tus consultores en agosto para desarrollar herramientas de software propias que puedas vender como servicios de suscripción mensual. Al crear este "stock inteligente", diversificarás tu flujo de caja y reducirás la dependencia total del recaudo de cartera de grandes proyectos hoy mismo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 60. Días de Pago - DPO (Agosto 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M8', 2025, '8M', 
'Has estabilizado tus pagos a proveedores en dieciséis días promedio durante agosto, manteniendo una relación de armonía y reciprocidad con tus socios externos. Tu puntualidad es tu mejor carta de presentación para atraer el mejor talento consultor del mercado, asegurando que tus proyectos de fin de año tengan éxito asegurado hoy.',
'Pagar en dieciséis días mientras tus clientes te pagan en ciento veintidós días es una asimetría financiera que hoy en agosto castiga tu bolsillo gerencial. Estás entregando tu riqueza siete veces más rápido de lo que la recuperas, una decisión altruista que hoy limita tu capacidad de ahorro corporativo neta.',
'Mi recomendación es que lleves tus plazos de pago a por lo menos veinticinco días para todos los gastos que no sean críticos para la operación de agosto. Al retener ese efectivo por nueve días extra, ganarás un margen de maniobra inmenso para aprovechar descuentos por pronto pago en tus propias obligaciones hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 61. Rotación de Activos (Agosto 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M8', 2025, '8M', 
'Tu eficiencia de activos se mantiene en el pico de once centésimos al mes durante agosto, ratificando la solidez de tu modelo de negocio de alta intensidad. Estás logrando que cada recurso de oficina, software y talento genere una rentabilidad constante para tu firma, superando con creces el desempeño del año anterior hoy.',
'Esta estabilidad indica que ya no puedes sacar más provecho de tu estructura actual sin hacer nuevas inversiones estratégicas en este mes de agosto. Tienes un techo de productividad que hoy limita tu crecimiento; si quieres escalar tu facturación, necesitas inyectar nuevos recursos o tecnología que multipliquen tu capacidad de entrega actual.',
'Te sugiero que reinviertas parte de la utilidad de agosto en la capacitación avanzada de tu equipo técnico en metodologías de automatización disruptivas. Al elevar la sofisticación de tu activo humano, lograrás que tu rotación de activos dé un nuevo salto cuántico, permitiéndote atender más clientes con la misma infraestructura hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 62. Rotación de Cartera (Agosto 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M8', 2025, '8M', 
'Has mantenido una rotación de cartera estable de ocho centésimos al mes en agosto, demostrando una consistencia administrativa envidiable frente al caos de otros sectores. Has evitado que el flujo de efectivo se desvíe, manteniendo la operatividad mínima de tu firma comercial sin necesidad de recurrir a bancos externos hoy mismo.',
'Estar estancado en la misma velocidad del año pasado indica que tus esfuerzos de cobranza de agosto han sido planos y carentes de innovación táctica. No has logrado que el dinero circule más rápido en tu firma, lo que hoy te quita puntos de ventaja competitiva ante una competencia que es cada vez más ágil.',
'Debes implementar una política de "facturación anticipada" para todos los nuevos contratos que firmes en este mes de agosto. Necesitas que el dinero entre antes de que el servicio se entregue completamente para elevar esta rotación y liberar a tu firma de la pesada carga de la cartera demorada hoy día.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 63. Rotación de Inventarios (Agosto 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M8', 2025, '8M', 
'Tu modelo de negocio sin inventarios físicos es tu mayor activo estratégico en agosto, evitándote costos de almacenamiento y riesgos de obsolescencia materiales. Posees una firma ágil, digital y moderna que puede concentrar toda su potencia comercial en la generación de valor intelectual constante para tus aliados estratégicos hoy.',
'Al no poseer inventarios, tu riesgo se concentra en la facturación de servicios, la cual en agosto ha mostrado una dependencia absoluta del recaudo de cartera lenta. Esto te quita autonomía de decisión gerencial; si un proyecto se detiene, tu flujo de caja se resiente de inmediato por no tener otros activos materiales.',
'Te recomiendo que documentes y empaquetes tus "mejores prácticas" de consultoría de agosto como productos de capacitación digital de venta directa. Esto te dará una rotación intelectual similar a la de un inventario físico de alta demanda, diversificando tus fuentes de ingreso sin necesidad de bodegas ni logística compleja hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 64. Rotación de Proveedores (Agosto 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M8', 2025, '8M', 
'Has mantenido una rotación de pagos a terceros de casi dos veces al mes en agosto, reafirmando tu posición como un socio comercial íntegro y confiable hoy. Esta agilidad te garantiza que tus proveedores estratégicos pondrán sus mejores recursos a tu disposición para el cierre exitoso de tus proyectos del tercer trimestre actual.',
'Pagar dos veces al mes es cuatro veces más rápido de lo que mostrabas el agosto anterior, una velocidad que hoy castiga tu liquidez neta sin necesidad estratégica real. Estás entregando el efectivo antes de lo estrictamente necesario, perdiendo la oportunidad de usar ese capital para financiar tus propios crecimientos operativos inmediatos.',
'Mi consejo es que pases a un esquema de pago mensual único para todos tus proveedores administrativos este mes de agosto. Al retener ese efectivo por treinta días completos, ganarás una previsibilidad de tesorería inmensa que te servirá de colchón ante cualquier eventualidad que surja en el recaudo de tu cartera hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 9: SEPTIEMBRE 2025 vs SEPTIEMBRE 2024
--------------------------------------------------------------------------------

-- 65. Ciclo de Conversión de Efectivo (Septiembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M9', 2025, '9M', 
'Has cerrado el tercer trimestre con un ciclo de caja de ciento treinta y dos días, lo que representa una mejora de veintitrés días frente a los ciento cincuenta y cinco días que promediabas hace un año hoy. Mantienes una tendencia de eficiencia estructural que te permite operar con mayor holgura que en el 2024 actual.',
'Sin embargo, has tenido un retroceso frente a la estabilidad de agosto, aumentando tu ciclo en casi un mes completo debido a la parsimonia en los recaudos de este cierre de trimestre. Tu capital se ha ralentizado justo cuando necesitas liquidez para proyectar tus inversiones finales de año comercial hoy.',
'Te recomiendo que realices un "barrido de tesorería" intensivo para este cierre de septiembre. No permitas que la ineficiencia del trimestre se arrastre al último periodo del año; necesitas identificar los cuellos de botella en tus procesos de pago y cobro para recuperar la agilidad de los meses anteriores hoy mismo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 66. Días de Cartera - DSO (Septiembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M9', 2025, '9M', 
'Has logrado sostener un nivel de facturación robusto durante este septiembre, asegurando el cumplimiento de tus metas comerciales para el tercer trimestre de este año comercial hoy. Tu equipo ha demostrado una capacidad de cierre de contratos admirable, lo que garantiza una base de ingresos sólida para tu firma estratégica.',
'La mala noticia es que tus recaudos se han vuelto a disparar hasta los ciento cuarenta y cinco días, superando los ciento diez días que mostraste el septiembre anterior. Tus clientes están asumiendo que tu firma es una fuente de financiación gratuita a largo plazo, lo que hoy pone en grave riesgo tu liquidez de cierre.',
'Mi sugerencia es que endurezcas tus políticas de crédito para el cuarto trimestre de este año de forma inmediata. No inicies nuevos proyectos de septiembre con clientes que tengan facturas pendientes de más de noventa días; recupera el mando de tu tesorería antes de que la deuda se vuelva impagable hoy día.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 67. Días de Inventario - DIO (Septiembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M9', 2025, '9M', 
'Tu indicador nulo de inventarios físicos al cierre de este tercer trimestre ratifica la limpieza estructural de tu modelo de negocio de consultoría digital hoy. Has evitado costos de mantenimiento y obsolescencia que hoy estarían pesando en tu balance de septiembre, dándote una agilidad financiera superior a la competencia.',
'Al no poseer inventarios, tu única garantía de liquidez es el flujo de caja de servicios, el cual en septiembre se ha visto seriamente afectado por la lentitud de los recaudos de cartera. Tienes una dependencia extrema de la voluntad de pago de tus clientes, lo que hoy te quita capacidad de reacción inmediata.',
'Te aconsejo que diseñes servicios de consultoría de "pago por uso" o "suscripción trimestral" que se facturen por adelantado en octubre. Al crear este flujo de ingresos recurrente, compensarás la ausencia de activos físicos y ganarás una estabilidad de tesorería que hoy tu firma necesita urgentemente para el cierre.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 68. Días de Pago - DPO (Septiembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M9', 2025, '9M', 
'Pagar a tus proveedores en trece días promedio durante septiembre te consolida como un cliente preferencial de altísima solvencia moral en el mercado de servicios técnicos hoy. Estás asegurando que tus aliados estratégicos te den prioridad absoluta para los proyectos de alta complejidad que planeas para el cierre de año.',
'Pagar en trece días es cuatro veces más rápido de lo que promediabas el septiembre anterior, una decisión administrativa que hoy en día castiga tu bolsillo de forma innecesaria. Estás financiando la operación de tus socios externos con tu propia liquidez escasa, perdiendo el beneficio del apalancamiento comercial gratuito.',
'Mi recomendación es que extiendas tus plazos de pago a por lo menos treinta días para todos tus proveedores no estratégicos este mes de septiembre. Gana esos diecisiete días de permanencia del dinero en tu bolsillo; ese capital será vital para cubrir tus propias obligaciones fiscales y de nómina de fin de trimestre.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 69. Rotación de Activos (Septiembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M9', 2025, '9M', 
'Has logrado una rotación de activos de cinco centésimos en este cierre de tercer trimestre, lo cual es más del doble de la eficiencia que mostraste en septiembre del año pasado. Estás consiguiendo que tu infraestructura tecnológica y humana rinda mucho más por cada peso invertido en tu bolsillo actual hoy mismo.',
'Sin embargo, la eficiencia ha caído a menos de la mitad frente a los once centésimos que lograste en agosto, indicando un agotamiento operativo en este tramo del año comercial. Tienes recursos que han estado ociosos o procesos que se han ralentizado, castigando la rentabilidad neta de tu capital invertido hoy.',
'Debes auditar la productividad de tus equipos de trabajo este mes de septiembre para identificar por qué ha caído la rotación de forma tan drástica. Al optimizar tus flujos de entrega, asegurarás que tu firma inicie el cuarto trimestre con una potencia renovada, evitando el desperdicio de recursos estratégicos hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 70. Rotación de Cartera (Septiembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M9', 2025, '9M', 
'Has mantenido una rotación de seis centésimos mensual en septiembre, demostrando una resiliencia administrativa notable frente a un entorno de pagos que se ha vuelto hostil hoy. Has evitado que el recaudo se congele totalmente, manteniendo el flujo de ingresos necesario para que tu firma siga operando este semestre corporativo.',
'Esta velocidad es un treinta por ciento menor a los ocho centésimos que promediabas hace doce meses, lo que indica que tu recaudo es hoy estructuralmente más lento que en el pasado. Estás acumulando riqueza en facturas que no te sirven para financiar tus planes de expansión inmediata de fin de año hoy día.',
'Te recomiendo que implementes un descuento agresivo por "pago inmediato" para todas las facturas que emitas en este cierre de septiembre. Necesitas que el dinero vuelva a tus manos con la intensidad que tu firma merece; no permitas que tus facturas se conviertan en activos estériles que hoy frenen tu crecimiento.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 71. Rotación de Inventarios (Septiembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M9', 2025, '9M', 
'Tu modelo de negocio puramente digital te permite cerrar este tercer trimestre en septiembre con una limpieza de activos envidiable en comparación con otras firmas del sector hoy. Tienes la libertad total para ajustar tu oferta de servicios hacia las nuevas tendencias del mercado sin tener que liquidar activos materiales obsoletos.',
'Al no poseer inventarios físicos, toda tu "mercancía" es el talento de tus consultores, el cual en septiembre ha sido menos eficiente en convertirse en efectivo real que el año pasado. Tu dependencia del recaudo de cartera es absoluta, lo que hoy te quita margen de maniobra técnica ante cualquier retraso de tus clientes.',
'Te sugiero que crees un "fondo de previsión operativa" con las utilidades que logres recaudar en octubre para este cierre de septiembre. Al asegurar el efectivo que cubra tus costos fijos de fin de año, compensarás la carencia de activos materiales y ganarás la tranquilidad necesaria para cerrar el año con gloria hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 72. Rotación de Proveedores (Septiembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M9', 2025, '9M', 
'Has mantenido una rotación de pagos a terceros de más de dos veces al mes durante septiembre, lo cual reafirma tu posición como un pagador de clase mundial hoy. Tus proveedores estratégicos ven en tu firma un cliente sumamente seguro, lo que te garantiza prioridad absoluta para cualquier recurso técnico que necesites mañana.',
'Pagar cada trece días es una velocidad de salida de dinero muy alta, siendo cuatro veces superior a la parsimonia de pagos que mostraste en el septiembre anterior. Estás financiando la operación de tus socios externos con tus propios ahorros, lo cual es una decisión administrativa que hoy castiga excesivamente tu liquidez.',
'Mi consejo es que pases a un esquema de pago mensual único para todo el cierre del cuarto trimestre que inicia en octubre. Gana esos veinte días de liquidez extra para tu bolsillo hoy; tus proveedores entenderán el ajuste si les garantizas la puntualidad del pago único mensual por el resto del año comercial.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 10: OCTUBRE 2025 vs OCTUBRE 2024
--------------------------------------------------------------------------------

-- 73. Ciclo de Conversión de Efectivo (Octubre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M10', 2025, '10M', 
'Has iniciado el último trimestre con un ciclo de caja de ciento seis días, recuperando la eficiencia que tenías antes del bache de septiembre. Mantienes una ventaja de cincuenta días frente a la pesadez operativa de hace un año, lo que te permite entrar a la recta final del 2025 con una agilidad financiera muy superior hoy.',
'Aunque has mejorado en el mes, tu ciclo sigue siendo un setecientos por ciento más lento que tu récord de mayo, lo que indica que tu firma aún no ha logrado estandarizar sus procesos de alta velocidad. Tu dinero sigue "durmiendo" en el balance por más de tres meses, limitando hoy tu capacidad de reinversión inmediata.',
'Te recomiendo que implementes un plan de "cierre de caja veloz" para este mes de octubre. Necesitas bajar este ciclo a menos de noventa días antes de que llegue la parálisis de fin de año; forzar el recaudo hoy es la única forma de asegurar una Navidad líquida y sin sobresaltos para tus socios estratégicos actuales.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 74. Días de Cartera - DSO (Octubre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M10', 2025, '10M', 
'Has logrado estabilizar tus recaudos en ciento veintidós días durante octubre, frenando la tendencia al alza que mostraste en el cierre del trimestre anterior. Estás consiguiendo que tu flujo de caja de entrada sea predecible, lo cual es vital para planear tus compromisos de nómina y proveedores de fin de año hoy.',
'Estar por encima de los cuatro meses de cobro sigue siendo una debilidad estratégica importante frente a los ciento diez días que tenías el octubre pasado. Tus clientes están usando tu efectivo para financiar sus propios cierres de año, dejándote a ti con la carga de los costos operativos actuales sin el respaldo del dinero real.',
'Mi sugerencia es que realices una reunión personalizada con tus cinco clientes de mayor deuda este mes de octubre. Ofréceles un plan de pago escalonado que asegure el recaudo total antes del quince de diciembre; no permitas que tus facturas de servicios se conviertan en deudas de difícil cobro para el 2026 hoy mismo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 75. Días de Inventario - DIO (Octubre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M10', 2025, '10M', 
'Tu indicador nulo de inventarios en octubre sigue siendo tu mejor herramienta de defensa financiera, evitándote la acumulación de activos que no generan caja inmediata. Posees una firma de servicios inmaculada que puede concentrar todos sus recursos humanos en la entrega de proyectos de alto impacto consultor hoy mismo.',
'Al carecer de inventarios materiales, tu única garantía de solvencia es la facturación de servicios, la cual hoy en octubre se ve ensombrecida por plazos de recaudo que superan los ciento veinte días. Tu vulnerabilidad es real: si un proyecto se detiene, no tienes activos físicos comerciales que respalden tu tesorería administrativa.',
'Te aconsejo que utilices este mes de octubre para formalizar "contratos de mantenimiento anual" que incluyan pagos anticipados obligatorios por parte de tus clientes actuales. Al asegurar este flujo de efectivo, compensarás la carencia de inventarios físicos y ganarás una estabilidad financiera envidiable para el cierre del año.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 76. Días de Pago - DPO (Octubre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M10', 2025, '10M', 
'Pagar a tus proveedores en dieciséis días promedio durante octubre te mantiene en la cima de la confiabilidad comercial ante tus socios estratégicos externos hoy. Has logrado que tu firma sea un cliente prioritario, lo que te garantiza el acceso a los mejores recursos técnicos necesarios para cerrar tus proyectos de fin de año.',
'Financieramente, pagar en dieciséis días cuando recibes el dinero en ciento veintidós días es una asimetría que hoy castiga excesivamente tu ahorro neto en octubre. Estás entregando tu liquidez ocho veces más rápido de lo que la recuperas de tus clientes, una generosidad que hoy limita tu capacidad de expansión para el 2026.',
'Mi recomendación es que lleves tus plazos de pago a por lo menos veinticinco días para todos tus gastos operativos generales este mes de octubre. Al retener ese efectivo por nueve días extra, ganarás un margen de maniobra de tesorería inmenso que te permitirá autofinanciar tus propias campañas comerciales de cierre de año hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 77. Rotación de Activos (Octubre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M10', 2025, '10M', 
'Tu rotación de activos ha vuelto a su nivel máximo de once centésimos en octubre, triplicando la eficiencia productiva que mostraste el año pasado por estas fechas. Estás logrando que tu maquinaria corporativa trabaje a plena capacidad, maximizando la utilidad de cada recurso tecnológico e intelectual que posees hoy mismo.',
'Estar en el pico de productividad indica que tu infraestructura actual ha llegado a su límite de entrega para este mes de octubre corporativo. Si quieres seguir creciendo en facturación para el cierre de año, corres el riesgo de saturar a tu equipo técnico, lo que hoy podría afectar la calidad de tus servicios estratégicos.',
'Te sugiero que reinviertas parte de la utilidad de octubre en la adquisición de herramientas de automatización de procesos mediante inteligencia artificial. Al elevar la sofisticación de tus activos digitales, lograrás que tu rotación dé un nuevo salto, permitiéndote atender más demanda comercial con el mismo esfuerzo humano hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 78. Rotación de Cartera (Octubre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M10', 2025, '10M', 
'Has recuperado la velocidad de cobranza de ocho centésimos mensuales en octubre, manteniendo la regularidad necesaria para que tu firma siga creciendo hoy. Estás consiguiendo que el dinero circule con la fluidez mínima para cubrir tus costos fijos y tus planes de expansión del cuarto trimestre con tranquilidad gerencial.',
'Sigues anclado en la misma velocidad del octubre anterior, lo que demuestra que tus estrategias de recaudo no han evolucionado estructuralmente para este 2025 comercial. Tu capital de trabajo sigue teniendo una pesadez latente que hoy limita tu capacidad de reacción ante nuevas oportunidades disruptivas del mercado.',
'Debes implementar una política de "prepago parcial" para todos los hitos de entrega que programes para este mes de octubre y los siguientes. Necesitas capturar el efectivo antes de que el servicio se entregue totalmente para elevar esta rotación y liberar a tu firma de la carga económica de la cartera lenta hoy día.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 79. Rotación de Inventarios (Octubre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M10', 2025, '10M', 
'Tu modelo de negocio sin inventarios físicos brilla este octubre, permitiéndote cerrar acuerdos comerciales con una velocidad estructural que tus competidores pesados envidian hoy mismo. Posees una organización moderna, ágil y totalmente enfocada en el valor intelectual, lo que te garantiza una ventaja competitiva neta en el mercado.',
'La contracara de no poseer inventarios es que tu única moneda de cambio es la facturación de servicios, la cual en octubre sigue atada a plazos de recaudo excesivamente lentos. Esto te quita autonomía de decisión estratégica; si un cliente falla, no tienes activos materiales que puedas usar como respaldo de tesorería inmediata.',
'Te recomiendo que formalices la creación de un "portafolio de soluciones digitales terminadas" que puedas comercializar como licencias anuales este mes de octubre. Al convertir tu talento en productos digitales, ganarás una rotación intelectual similar a un inventario físico, diversificando tus fuentes de efectivo para el cierre del año.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 80. Rotación de Proveedores (Octubre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M10', 2025, '10M', 
'Has estabilizado tu rotación de pagos a terceros en casi dos veces al mes en octubre, manteniendo tu prestigio como un excelente pagador ante tus socios externos hoy. Esta agilidad te asegura que tus proveedores estratégicos te darán las mejores condiciones de servicio para tus ambiciosos planes de cierre de cuarto trimestre.',
'Pagar dos veces al mes cuando tu recaudo ocurre cada cuatro meses es una asimetría que hoy en octubre castiga tu liquidez de forma innecesaria en el balance neta. Estás privilegiando la estabilidad ajena sobre tu propia capacidad de ahorro, una decisión administrativa que hoy limita tu fondo de maniobra para el 2026.',
'Mi consejo es que unifiques todos tus egresos de octubre en una sola fecha de pago mensual para todos tus proveedores no estratégicos de la firma. Al retener ese efectivo por treinta días, ganarás una previsibilidad de tesorería inmensa que te servirá de amortiguador ante cualquier retraso imprevisto de tu cartera hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 11: NOVIEMBRE 2025 vs NOVIEMBRE 2024
--------------------------------------------------------------------------------

-- 81. Ciclo de Conversión de Efectivo (Noviembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M11', 2025, '11M', 
'Has mantenido tu ciclo de caja estable en ciento seis días durante noviembre, consolidando la eficiencia operativa que has construido a lo largo del segundo semestre. Estás cerrando el año con una ventaja de cincuenta días frente a la pesadez de hace doce meses, lo que hoy te permite operar con una libertad financiera inmensa.',
'A pesar de la estabilidad, este ciclo sigue siendo muy superior a tus niveles óptimos de mayo, lo que indica que tu firma ha aceptado una "nueva normalidad" de lentitud en los recaudos de este tramo del año. Estás inmovilizando capital que hoy sería vital para financiar tus planes de bonificaciones y cierre de año fiscal.',
'Te recomiendo que lances un "Sprint de Tesorería" para este cierre de noviembre. Necesitas presionar a tus clientes para que liberen el efectivo antes de que lleguen las vacaciones de diciembre; cada día que logres bajar este ciclo hoy se traducirá directamente en una mayor rentabilidad neta para tus socios en el 2026.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 82. Días de Cartera - DSO (Noviembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M11', 2025, '11M', 
'Has logrado mantener una disciplina de facturación y seguimiento de cobros constante en noviembre, estabilizando tus plazos en ciento veintidós días. Esta previsibilidad es tu mejor escudo contra la incertidumbre de fin de año, asegurando que tu firma cuente con los recursos necesarios para cumplir sus metas financieras hoy.',
'Estar por encima de los ciento veinte días sigue siendo un lastre administrativo pesado frente a los ciento diez días que mostraste el noviembre previo. Tus clientes están postergando sus pagos para proteger su propia liquidez de diciembre, cargándote a ti con el costo financiero de la espera de carteras demoradas hoy día.',
'Mi sugerencia es que implementes una política de "suspensión de servicios por mora superior a noventa días" de forma inmediata este noviembre. Necesitas enviar un mensaje de rigor comercial a tus clientes; no permitas que tu generosidad administrativa se convierta en una debilidad de tesorería para tu cierre de año fiscal actual.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 83. Días de Inventario - DIO (Noviembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M11', 2025, '11M', 
'Tu indicador nulo de inventarios en noviembre sigue siendo una ventaja competitiva excepcional, permitiéndote cerrar el año con una estructura de costos liviana y moderna hoy. No tienes que preocuparte por liquidar mercancía ni por pérdidas materiales, lo que te da una tranquilidad gerencial absoluta para el cierre comercial.',
'Al carecer de activos físicos, tu riesgo se concentra exclusivamente en el recaudo de tus servicios de consultoría, el cual en noviembre sigue mostrando una pesadez preocupante de más de cuatro meses. Esto genera una vulnerabilidad financiera neta: si un cliente importante falta, no tienes inventarios que liquidar hoy.',
'Te aconsejo que utilices este mes de noviembre para diseñar productos de "consultoría por suscripción" que se cobren mediante débito automático mensual desde enero. Al automatizar tus ingresos, compensarás la carencia de activos materiales y ganarás una estabilidad de tesorería que hoy tu firma necesita para el futuro.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 84. Días de Pago - DPO (Noviembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M11', 2025, '11M', 
'Pagar a tus proveedores en dieciséis días promedio durante noviembre reafirma tu compromiso con la excelencia y la ética comercial ante tus socios externos hoy mismo. Esta puntualidad te asegura que contarás con el respaldo técnico incondicional necesario para culminar exitosamente todos tus proyectos pendientes de fin de año.',
'Financieramente, pagar en dieciséis días cuando recibes el dinero en ciento veintidós días es una asimetría que hoy castiga excesivamente tu capacidad de ahorro en noviembre. Estás transfiriendo tu riqueza siete veces más rápido de lo que la recuperas, una decisión que hoy limita tu fondo de maniobra para el cierre.',
'Mi recomendación es que lleves tus plazos de pago a por lo menos treinta días para todos tus egresos de oficina y gastos administrativos este mes de noviembre. Al retener ese efectivo por catorce días adicionales, ganarás una previsibilidad de tesorería inmensa que te servirá para cubrir tus propias primas legales hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 85. Rotación de Activos (Noviembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M10', 2025, '10M', 
'Tu rotación de activos se mantiene en el pico de eficiencia de once centésimos al mes durante noviembre, demostrando la madurez y solidez de tu modelo de negocio digital hoy. Estás logrando que cada recurso de tu firma genere una rentabilidad alta y constante, superando por mucho el desempeño del año previo corporal.',
'Esta estabilidad indica que has alcanzado el límite de productividad de tu estructura actual para este mes de noviembre comercial. Si no inviertes en nuevas tecnologías disruptivas, tu crecimiento para el 2026 se verá frenado por la incapacidad física de atender más demanda con los activos humanos y técnicos actuales hoy mismo.',
'Te sugiero que planees una inversión en herramientas de colaboración remota avanzadas este mes de noviembre para maximizar el uso de tu talento global. Al optimizar tus activos intangibles, lograrás que tu rotación dé un nuevo salto cuántico, permitiéndote escalar tu presencia en mercados internacionales para el 2026.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 86. Rotación de Cartera (Noviembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M11', 2025, '11M', 
'Has mantenido una velocidad de cobranza estable de ocho centésimos al mes en noviembre, asegurando el flujo de efectivo mínimo necesario para cerrar el año con tranquilidad. Has evitado que el recaudo se desplome ante la estacionalidad de fin de año, manteniendo la operatividad de tu firma estratégica sin apuros financieros hoy.',
'Estar anclado en la misma velocidad del año pasado indica que no has logrado superar la inercia de tus clientes en sus hábitos de pago este noviembre de 2025. Tu riqueza sigue circulando de forma parsimoniosa, lo que hoy te quita puntos de ventaja competitiva ante otras firmas que son más agresivas en su cobranza.',
'Debes implementar una "cláusula de pago anticipado por renovación" para todos tus contratos de consultoría que venzan en diciembre. Necesitas captar la liquidez hoy en noviembre para elevar esta rotación y liberar a tu firma de la pesada carga de financiar a tus propios clientes con tus ahorros de bolsillo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 87. Rotación de Inventarios (Noviembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M11', 2025, '11M', 
'Tu modelo de negocio sin inventarios físicos es tu gran baluarte este noviembre, evitándote la pesadilla logística que sufren otras firmas del sector en el cierre de año. Posees una organización ágil, digital y enfocada exclusivamente en el valor agregado intelectual, lo que te garantiza una posición de dominio comercial hoy.',
'La falta de inventarios materiales te hace extremadamente dependiente de la facturación de servicios, la cual en este cierre de noviembre sigue mostrando plazos de recaudo excesivamente lentos. Esto te quita autonomía estratégica; si un proyecto se detiene, no tienes activos físicos comerciales que puedas liquidar hoy mismo.',
'Te recomiendo que utilices este mes de noviembre para consolidar tu "biblioteca de soluciones" como productos digitales que generen ingresos pasivos constantes. Al convertir tu talento en activos digitales, ganarás una rotación similar a un inventario moderno, diversificando tus fuentes de riqueza para el 2026 que hoy inicia.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 88. Rotación de Proveedores (Noviembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M11', 2025, '11M', 
'Has estabilizado tu rotación de pagos a terceros en casi dos veces al mes en noviembre, manteniendo una relación de confianza y profesionalismo con tus socios estratégicos hoy. Esta agilidad te garantiza que tus proveedores priorizarán tus proyectos para el exigente cierre de año que se avecina en el mercado actual.',
'Pagar dos veces al mes es casi cuatro veces más rápido de lo que mostrabas el noviembre anterior, una velocidad que hoy castiga excesivamente tu liquidez de fin de año en el balance. Estás entregando el efectivo antes de lo necesario, perdiendo la oportunidad de usar ese capital para financiar tus propios gastos fiscales hoy.',
'Mi consejo es que unifiques todos tus egresos de noviembre en un solo calendario de pago mensual para todos tus proveedores no indispensables de la firma estratégica. Al retener ese efectivo por treinta día, ganarás una previsibilidad de tesorería inmensa que te servirá de amortiguador ante la lentitud de tu cartera actual.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

--------------------------------------------------------------------------------
-- LOTE 12: DICIEMBRE 2025 vs DICIEMBRE 2024
--------------------------------------------------------------------------------

-- 89. Ciclo de Conversión de Efectivo (Diciembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'CICLO_CONVERSION_EFECTIVO_M12', 2025, '12M', 
'Has cerrado el año 2025 con un ciclo de caja de ciento treinta y dos días, lo que representa una mejora neta de veintitrés días frente al cierre del año anterior hoy. Estás terminando este ciclo anual con una estructura operativa estructuralmente más ágil y eficiente de lo que jamás habías logrado en el pasado reciente corporativo.',
'A pesar del éxito anual, el cierre de diciembre muestra el típico "estiramiento" estacional del ciclo, alejándote de los catorce días de gloria que lograste en mayo. La ineficacia de diciembre es un recordatorio de que tu firma aún depende excesivamente de la puntualidad externa para mantener su liquidez de fin de año hoy.',
'Te recomiendo que para el 2026 establezcas un "presupuesto de caja base" que no dependa de los recaudos de diciembre. Al entrar al nuevo año con reservas propias, evitarás la angustia de la cartera lenta y podrás iniciar tus proyectos de expansión con una solidez financiera que hoy tu firma merece con orgullo neta.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 90. Días de Cartera - DSO (Diciembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DSO_M12', 2025, '12M', 
'Has logrado cerrar el año con una facturación récord en diciembre, asegurando el cumplimiento de tu presupuesto anual de ingresos para la firma estratégica hoy. Tu equipo comercial ha hecho un trabajo fenomenal al asegurar contratos de largo plazo que garantizan la sostenibilidad operativa para todo el primer semestre del 2026.',
'Sin embargo, tus plazos de cobro han terminado en los ciento cuarenta y cinco días, superando los ciento diez días que tenías el diciembre anterior. Tus clientes han decidido cerrar su año con tu dinero en sus bolsillos, convirtiendo tu balance neta en una lista de facturas por cobrar que hoy asfixian tu tesorería.',
'Mi sugerencia es que inicies el mes de enero con una política de "cobro jurídico preventivo" para todas las facturas de octubre y noviembre que sigan pendientes hoy. No permitas que la morosidad de fin de año se vuelva una costumbre administrativa; recupera tu capital con firmeza para iniciar el 2026 con fuerza hoy mismo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 91. Días de Inventario - DIO (Diciembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DIO_M12', 2025, '12M', 
'Cerrar el año con inventarios físicos en cero es el mayor triunfo de tu modelo de negocio digital en este 2025 de alta complejidad estratégica hoy. Has evitado la trampa del stock estancado que hoy está quebrando a otras firmas, manteniendo tu balance limpio, flexible y listo para capturar las nuevas tendencias del próximo año.',
'La ausencia de inventarios materiales te obliga a ser el mejor gestor de talentos del mundo, ya que tu equipo es tu única "mercancía" real para el 2026 que inicia. Si no logras que tu facturación de servicios se convierta en efectivo rápido, tu firma carece de otros activos que deba liquidar para obtener liquidez de emergencia actual.',
'Te recomiendo que para el próximo año diversifiques tu oferta hacia "productos de conocimiento" digitales que se vendan mediante pasarelas de pago automático hoy. Al crear este stock digital, ganarás una rotación continua que no dependerá de carteras lentas, asegurando una estabilidad de tesorería inigualable para tu firma.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 92. Días de Pago - DPO (Diciembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'DPO_M12', 2025, '12M', 
'Pagar a tus proveedores en trece días promedio durante diciembre es un gesto de liderazgo y solvencia moral que te posiciona como el mejor cliente del sector hoy. Estás asegurando la lealtad absoluta de tus aliados estratégicos para el 2026, garantizándote prioridad en la entrega de recursos técnicos escasos para tus clientes.',
'Pagar en trece días es cuatro veces más rápido de lo que promediabas el diciembre anterior, una decisión que hoy en el balance neta castiga tu liquidez de fin de año. Estás financiando la Navidad de tus proveedores con tus propios ahorros, perdiendo la oportunidad de usar el apalancamiento comercial gratuito del mercado hoy.',
'Mi recomendación es que para el mes de enero unifiques todos tus pagos en un solo calendario de pago mensual estricto los días treinta de cada mes. Gana esos diecisiete días de permanencia del dinero en tu bolsillo hoy; ese capital extra será el motor que impulse tus nuevas inversiones de crecimiento para el próximo año.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 93. Rotación de Activos (Diciembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_ACTIVOS_M12', 2025, '12M', 
'Has cerrado el año con una rotación de activos de cinco centésimos en diciembre, lo que representa más del doble de la eficiencia productiva del cierre del 2024 hoy. Estás consiguiendo que tu infraestructura tecnológica y humana rinda mucho más por cada peso invertido en tu bolsillo, marcando un hito de gestión anual.',
'A pesar de la mejoría anual, la eficiencia de diciembre es la mitad de lo que lograste en tus meses pico, indicando una relajación operativa peligrosa en el cierre. Tienes recursos que se han ralentizado o procesos que se han burocratizado, castigando la rentabilidad neta de tu capital invertido durante este mes final hoy.',
'Debes iniciar el mes de enero con una auditoría de procesos internos para eliminar las ineficiencias detectadas en este cierre de diciembre de forma estratégica hoy. Al depurar tus procedimientos, asegurarás que tu firma inicie el 2026 con una potencia operativa renovada, maximizando el uso de cada activo para tu beneficio.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 94. Rotación de Cartera (Diciembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_CARTERA_M12', 2025, '12M', 
'Has mantenido una rotación de seis centésimos mensual en diciembre, asegurando el flujo de ingresos mínimo para cumplir con tus obligaciones de fin de año corporativo. Has evitado la parálisis total del recaudo que suele afectar al sector en Navidad, manteniendo la operatividad de tu firma con un esfuerzo administrativo hoy.',
'Esta velocidad de seis centésimos es menor a los ocho centésimos que lograste el año pasado, indicando un deterioro estructural en el compromiso de pago de tus clientes. Tu riqueza hoy circula más lento que nunca antes, lo que te quita capacidad de maniobra financiera para iniciar tus planes de inversión de enero hoy.',
'Te recomiendo que implementes un sistema de "cobro automatizado por hito" para todos tus nuevos proyectos del 2026 de forma inmediata este fin de año. Necesitas que el dinero entre a tu firma de forma mecánica y sin fricciones humanas; no permitas que la lentitud de la cartera siga frenando tu ambición comercial hoy.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 95. Rotación de Inventarios (Diciembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_INVENTARIOS_M12', 2025, '12M', 
'Tu modelo de negocio puramente digital te permite cerrar el año 2025 con una agilidad estructural envidiable frente a otros competidores del sector hoy mismo. Tienes la libertad total para pivotar tu oferta técnica hacia los nuevos retos del 2026 sin tener que liquidar activos materiales obsoletos o dañados en tu balance.',
'Al no poseer inventarios físicos, tu única moneda de cambio es la facturación de servicios, la cual en este cierre de diciembre se ha visto afectada por plazos de recaudo lentos. Tienes una dependencia absoluta del bolsillo ajeno, lo que hoy te quita autonomía gerencial para tomar decisiones de inversión en el corto plazo.',
'Te sugiero que crees una "reserva de liquidez estratégica" equivalente a dos meses de gastos administrativos durante el mes de enero que inicia hoy. Al tener este amortiguador, compensarás la carencia de activos físicos y ganarás la serenidad necesaria para liderar el 2026 con una visión de largo plazo sin angustias diarias.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 96. Rotación de Proveedores (Diciembre 2025)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'ROTACION_PROVEEDORES_M12', 2025, '12M', 
'Has cerrado el año manteniendo una rotación de pagos a terceros de más de dos veces al mes en diciembre, lo cual reafirma tu ética y solvencia moral hoy. Tus aliados estratégicos confían plenamente en tu firma, asegurándote su apoyo incondicional para todos los retos técnicos y comerciales que planeas conquistar mañana.',
'Pagar cada trece días es una velocidad de salida de dinero muy alta, siendo cuatro veces superior a la parsimonia de pagos que mostraste en el cierre del año previo. Estás privilegiando la caja ajena sobre tu propia capacidad de reinversión inmediata, una decisión administrativa que hoy castiga excesivamente tu liquidez.',
'Mi consejo es que para el mes de enero propongas a tus proveedores estratégicos un esquema de pago anticipado a cambio de descuentos por volumen. Usa tu liquidez para ganar rentabilidad neta; si vas a pagar rápido, que sea para que tu bolsillo se beneficie directamente y no solo para ser un buen pagador hoy mismo.',
'Protocolo Actividad Bloque D v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;
