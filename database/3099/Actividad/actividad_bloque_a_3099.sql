-- Pestaña: ACTIVIDAD | Bloque A: Insights Maestros (Anual + Quarterly)
-- Empresa: 3099

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES 
-- 1. ANUAL 2023: Dictamen General
(3099, 'insight-actividad-ai', 2023, 'Annual', 
'Cerramos el ejercicio 2023 con una agilidad operativa envidiable, reflejada en un ciclo de conversión de efectivo de apenas 2.68 días. Esto significa que tu operación fue extremadamente líquida al cierre del año, permitiéndote recuperar la inversión en cartera casi al instante y mantener una estructura de pagos liviana y eficiente.',
'A pesar de la velocidad, la relación con tus proveedores era estrictamente de contado o con plazos mínimos, cercanos a los 0.20 días de pago. Esta falta de apalancamiento comercial te obligó a utilizar tu propia caja para financiar cada peso de la operación, perdiendo la oportunidad de negociar plazos que oxigenen tus flujos de corto plazo.',
'Para el próximo año, el reto es mantener esa velocidad de recaudo mientras empiezas a negociar términos de pago más holgados con tus aliados estratégicos. No permitas que la eficiencia en cartera te haga descuidar la importancia de financiarte con el crédito de proveedores, lo cual te dará un margen de maniobra mucho mayor en momentos de expansión.',
'Análisis Anual 2023 - Cierre Dic'),

-- 2. ANUAL 2024: Dictamen General
(3099, 'insight-actividad-ai', 2024, 'Annual',
'Durante el 2024 lograste estabilizar tu operación después de un inicio de año turbulento, cerrando con un DSO promedio de 97 días. Es positivo ver cómo después de picos de más de 200 días en enero, lograste ajustar tus procesos de cobro para traer el ciclo de efectivo a niveles más manejables, demostrando capacidad de reacción ante la mora.',
'La volatilidad en tu recaudo es tu principal enemigo; pasar de 200 días a 56 días en un mismo año indica una falta de procesos estandarizados en tu gestión de cartera. Esta inconsistencia genera una incertidumbre enorme en tu flujo de caja mensual, obligándote a operar bajo "apaga fuegos" financieros en lugar de una planeación estructurada y predecible.',
'Debes implementar una política de crédito y cobranza más rigurosa que evite esos picos de mora al inicio de cada año. Te sugiero revisar qué clientes están causando esos retrasos de 200 días en el primer trimestre y establecer compromisos de pago prepagados o garantías que protejan tu caja antes de que el indicador se te escape de las manos.',
'Auditoría Anual 2024 - Consolidado'),

-- 3. ANUAL 2024: Ciclo de Conversión de Efectivo
(3099, 'ciclo_conversion_efectivo', 2024, 'Annual',
'Tu ciclo de efectivo promedió los 90 días en 2024, lo cual es un desempeño sólido para el sector de servicios. Lo más rescatable es que lograste que tu caja volviera a tu bolsillo tres meses después de haber prestado el servicio, permitiendo que la rueda operativa siguiera girando sin necesidad de acudir a deuda externa costosa para capital de trabajo.',
'El riesgo oculto está en que ese ciclo depende casi exclusivamente de tu gestión de clientes, ya que no tienes inventarios que te den flexibilidad. Cualquier retraso en el recaudo se traslada directamente a un aumento del ciclo de efectivo, dejándote vulnerable si un par de clientes grandes deciden demorar sus facturas más allá de lo pactado inicialmente.',
'Mi recomendación es que busques un "colchón" de apalancamiento con proveedores que hoy es casi inexistente, promediando solo 7 días. Si logras subir tus días de pago a 15 o 20 días, reducirías tu ciclo de efectivo neto de forma dramática, dándote más aire financiero sin tener que presionar tan fuerte a tus clientes en momentos difíciles.',
'Análisis Estratégico CCE 2024'),

-- 4. ANUAL 2024: Días de Cartera (DSO)
(3099, 'dso', 2024, 'Annual',
'El aspecto más destacable es que en diciembre de 2024 lograste bajar tus días de cartera a 61 días, un nivel muy saludable comparado con los 204 días de enero. Esa tendencia decreciente muestra que tus esfuerzos por depurar la cartera y acelerar los cobros están funcionando, cerrando el año con una calidad de cartera muy superior a como empezó.',
'Es preocupante notar que el DSO se dispara sistemáticamente por encima de los 100 días en los meses impares, lo que sugiere una estacionalidad negativa o una facturación que tus clientes no están priorizando. Estos picos te causan "huecos" de caja que son difíciles de llenar y que deterioran tu relación con el capital de trabajo si no se controlan.',
'Te recomiendo automatizar la gestión de cobro para los primeros 15 días del mes, asegurando que ninguna factura se quede sin gestión proactiva. Si logras estabilizar el DSO por debajo de los 70 días de forma constante, podrías liberar una cantidad de recursos que hoy están dormidos en las cuentas de tus clientes y que te pertenecen.',
'Análisis DSO 2024 - Tendencias'),

-- 5. ANUAL 2024: Días de Inventario (DIO)
(3099, 'dio', 2024, 'Annual',
'Tu operación mantiene un indicador de 0 días de inventario, lo cual es óptimo para tu modelo de negocio basado en servicios y conocimiento. Esto elimina por completo los riesgos de obsolescencia, almacenamiento y deterioro de mercancía, permitiendo que cada peso que inviertes se dirija directamente a la prestación del servicio o a la generación de ingresos.',
'El hecho de no tener inventarios físicos significa que tu "inventario" real es el tiempo de tus consultores y colaboradores. Si no mides la eficiencia de esas horas-hombre, podrías tener una capacidad ociosa oculta que este indicador de 0 días no alcanza a mostrar, lo cual sería un costo fantasma que afecta tu rentabilidad sin ser detectado fácilmente.',
'Te sugiero complementar esta visión de 0 días de stock con un indicador de utilización de recursos operativos. Debes asegurar de que, aunque no existan productos en estantería, el "WIP" o trabajo en proceso de tus servicios esté fluyendo a una velocidad similar a la de tu facturación, evitando cuellos de botella en la entrega final.',
'Análisis DIO 2024 - Servicios'),

-- 6. ANUAL 2024: Días de Pago (DPO)
(3099, 'dpo', 2024, 'Annual',
'Mantener una relación sana de 7.5 días de pago muestra que eres un cliente cumplido y confiable para tus proveedores operativos. Esto te garantiza prioridad en la prestación de servicios externos y una reputación impecable en el mercado, lo cual es fundamental para mantener la continuidad operativa sin fricciones por deudas pendientes de corto plazo.',
'Estás pagando demasiado rápido, casi de contado, lo cual es un error estratégico si lo que buscas es optimizar tu liquidez interna. Pagar en menos de 8 días mientras cobras en 97 días significa que tú estás financiando toda la cadena de valor de tus clientes con tu propio capital, un lujo que pocas empresas pueden permitirse por mucho tiempo.',
'Mi sugerencia es que renegocies tus términos de pago para llevarlos gradualmente a 20 o 30 días, alineándolos mejor con tus tiempos de recaudo. No se trata de dejar de pagar, sino de usar el crédito comercial como una fuente de financiación gratuita que hoy estás desperdiciando por completo al pagar de manera tan acelerada.',
'Análisis DPO 2024 - Apalancamiento'),

-- 7. ANUAL 2024: Rotación de Activos
(3099, 'rotacion_activos', 2024, 'Annual',
'La eficiencia en el uso de tus activos mostró señales de mejora a mitad de año, alcanzando niveles de 0.11x en meses como abril. Esto indica que por cada peso invertido en tu estructura, estás logrando generar una dinámica de ingresos que justifica tu tamaño operativo, especialmente en una empresa donde los activos tangibles son mínimos.',
'El cierre de año registró un dato atípico negativo que requiere una auditoría profunda para entender si hubo un ajuste contable o una caída drástica en la productividad. Una rotación tan baja o errática sugiere que tienes activos en tu balance que no están contribuyendo a generar ventas, lo cual castiga tu rentabilidad sobre la inversión total.',
'Debes realizar un inventario de tus activos y dar de baja o monetizar aquellos que no sumen al core del negocio. Tu meta debe ser estabilizar la rotación por encima de 0.20x mensual para asegurar que tu infraestructura no sea un lastre, sino un motor eficiente que impulse el crecimiento sostenido de tus ingresos operativos.',
'Análisis Rotación Activos 2024'),

-- 8. ANUAL 2024: Rotación de Cartera
(3099, 'rotacion_cartera', 2024, 'Annual',
'Tu cartera rotó aproximadamente 4 veces en promedio durante el año, con picos positivos en mayo donde la eficiencia de recaudo fue notable. Lograste mantener un flujo de ingresos que, aunque volátil, permitió que la empresa no se detuviera por falta de entrada de caja, demostrando que tus clientes finales tienen una capacidad de pago real.',
'La rotación de solo 0.15x en enero es una señal de alerta máxima sobre la cobranza al inicio del año. Una rotación tan lenta implica que tu dinero está "estancado" en manos de terceros más tiempo del necesario, incrementando el riesgo de cuentas incobrables y deteriorando la calidad de tus activos corrientes de manera innecesaria.',
'Necesitas establecer metas de rotación mensuales de al menos 0.50x para asegurar que el ciclo comercial se complete rápidamente. Te recomiendo implementar descuentos por pronto pago que incentiven a tus clientes a girar antes de los 30 días, lo cual aceleraría tu rotación y reduciría drásticamente tu exposición al riesgo de impago.',
'Análisis Rotación Cartera 2024'),

-- 9. ANUAL 2024: Rotación de Inventarios
(3099, 'rotacion_inventarios', 2024, 'Annual',
'Al ser una empresa de servicios, reportas una rotación de inventarios inexistente, lo cual es coherente y positivo para tu estructura financiera. No tienes capital atrapado en mercancías que pierden valor, lo que te da una agilidad financiera superior frente a empresas comerciales, permitiéndote mover tus recursos con mucha más libertad estratégica.',
'Sin embargo, esta ausencia de inventarios físicos te obliga a ser impecable en la gestión de tus otros activos corrientes. Al no tener productos que vender para generar caja rápida en una emergencia, dependes totalmente de que tu cartera sea cobrable, lo cual aumenta tu perfil de riesgo si la gestión de cobranza llega a fallar sistemáticamente.',
'Te sugiero ver tus proyectos en curso como tu "inventario de servicios". Debes medir cuánto tiempo pasa desde que inicias un proyecto hasta que emites la factura final. Agilizar ese proceso interno es tu equivalente a rotar inventarios más rápido, y es ahí donde encontrarás las mayores eficiencias operativas de tu modelo de negocio.',
'Análisis Rotación Inventarios 2024'),

-- 10. ANUAL 2024: Rotación de Proveedores
(3099, 'rotacion_proveedores', 2024, 'Annual',
'Tu rotación de proveedores se mantuvo en niveles altos, alrededor de 5x, lo que confirma que estás cumpliendo con tus obligaciones financieras a una velocidad muy superior a la del mercado. Esto te posiciona como un cliente de bajo riesgo, permitiéndote en el futuro solicitar mejores precios o condiciones especiales por tu excelente historial.',
'Una rotación tan alta es, paradójicamente, una deficiencia en tu gestión financiera, ya que indica que no estás aprovechando el crédito de tus proveedores. Estás rotando tus cuentas por pagar mucho más rápido de lo que rotas tu cartera, lo que crea un desequilibrio financiero que presiona tu caja de manera constante y sin necesidad.',
'Tu objetivo debe ser reducir esta rotación a niveles de 2x o 3x, negociando plazos más largos que se acerquen a tu ciclo de recaudo. Al hacerlo, retendrás el efectivo en tu empresa por más tiempo, lo que te permitirá ganar intereses o invertir en oportunidades de crecimiento sin tener que recurrir a bancos externos.',
'Análisis Rotación Proveedores 2024'),

-- 11. ANUAL 2025: Dictamen General
(3099, 'insight-actividad-ai', 2025, 'Annual',
'El 2025 ha sido un año de transformación estructural en tu gestión operativa, donde finalmente empezaste a utilizar el apalancamiento comercial a tu favor. Lograste subir tus días de pago a un promedio de 21 días, comparado con los 7 del año anterior, lo cual representa una mejora sustancial en tu estrategia de fondeo gratuito.',
'A pesar de la mejora en pagos, tu cartera (DSO) se deterioró hasta promediar 121 días, con un pico alarmante de 289 días en febrero. Este retroceso en la eficiencia de recaudo opaca cualquier avance con proveedores, ya que sigues dejando que tus clientes se financien a tus costillas por periodos que superan los cuatro meses promedio.',
'El dictamen es claro: tienes una oportunidad de oro si logras domar la volatilidad de tu cartera. Has demostrado que puedes gestionar mejor a tus proveedores, ahora el enfoque total debe ser profesionalizar el área de cobros para que el DSO baje de la barrera de los 100 días y se mantenga ahí de forma permanente.',
'Dictamen Ejecutivo Anual 2025'),

-- 12. 1Q 2025: Dictamen General (Ene-Mar)
(3099, 'insight-actividad-ai_1Q', 2025, '1Q',
'Durante este primer trimestre de 2025, lo más positivo fue tu prudencia en el gasto y la gestión de proveedores, manteniendo el DPO por debajo de los 11 días. Esta disciplina inicial te permitió mantener las relaciones comerciales estables mientras enfrentabas un entorno de recaudo extremadamente lento y desafiante al principio del año.',
'Tuviste un desempeño crítico en febrero con un DSO que llegó a los 289 días, lo que paralizó casi por completo tu ciclo de efectivo neto. Pasar tres meses sin ver el retorno de tu facturación es una situación insostenible que puso a prueba tu liquidez y que no puede permitirse repetir en los próximos trimestres.',
'Tu acción inmediata para el segundo trimestre debe ser ejecutar un plan de choque sobre la cartera vencida de más de 90 días acumulada en este periodo. Necesitas inyectar caja urgente mediante la normalización de esos saldos, posiblemente ofreciendo condonaciones parciales de intereses o planes de pago inmediatos para recuperar el control operativo.',
'Análisis Trimestral 1Q 2025'),

-- 13. 2Q 2025: Dictamen General (Abr-Jun)
(3099, 'insight-actividad-ai_2Q', 2025, '2Q',
'En este segundo trimestre lograste una recuperación heroica de tu eficiencia, bajando el DSO de 119 días en abril a 94 días en junio. Esta tendencia positiva demuestra que las medidas de ajuste tomadas tras el desastroso primer trimestre están rindiendo frutos, devolviéndole la agilidad que tu empresa necesita para operar con tranquilidad.',
'Lo negativo de este periodo fue el incremento súbito en tus días de pago, que saltaron a 30 días en junio. Aunque esto ayuda a tu caja, debes vigilar que este retraso no empiece a afectar tu reputación con proveedores clave, ya que podrías perder beneficios de servicio o descuentos que son vitales para tu margen operativo.',
'Te recomiendo equilibrar ambos indicadores: sigue presionando el DSO hacia abajo, buscando los 60 días, pero estabiliza el DPO en los 25 días para no generar alertas con tus aliados. Este "punto dulce" de gestión te dará la liquidez necesaria para financiar tus proyectos futuros sin comprometer tu imagen crediticia en el mercado.',
'Análisis Trimestral 2Q 2025'),

-- 14. 3Q 2025: Dictamen General (Jul-Sep)
(3099, 'insight-actividad-ai_3Q', 2025, '3Q',
'Este tercer trimestre se caracterizó por una estabilidad notable en tu estrategia de apalancamiento, manteniendo el DPO constante alrededor de los 26 días. Esto te ha permitido navegar meses de recaudo variable sin angustias financially, usando el crédito comercial de manera inteligente para sostener tus operaciones diarias sin costo financiero.',
'Sin embargo, volviste a experimentar un pico de cartera en agosto llegando a 155 días, lo que evidencia que tu proceso de cobranza aún tiene fallas de consistencia. No puedes permitirte estos retrocesos después de haber logrado niveles de 64 días en julio; esa falta de rigor operativo debilita tu posición financiera estructural.',
'Debes identificar qué ocurrió en agosto para que la cartera se duplicara y establecer un protocolo de alertas tempranas que se disparen apenas un cliente supere los 45 días de mora. La constancia es el secreto: si logras que cada trimestre sea mejor que el anterior, tu empresa será mucho más valorada y robusta.',
'Análisis Trimestral 3Q 2025'),

-- 15. 4Q 2025: Dictamen General (Oct-Dic)
(3099, 'insight-actividad-ai_4Q', 2025, '4Q',
'Cerramos el año con un desempeño espectacular en diciembre, logrando reducir tu cartera al nivel más bajo en dos años: solo 36 días. Este es el camino a seguir; finalizar el ejercicio con una caja operativa tan limpia te pone en una posición de fuerza inmejorable para planear inversiones y crecimiento agresivo en el 2026.',
'El único punto de atención es que tus días de pago subieron hasta los 39 días en noviembre antes de normalizarse. Debes tener cuidado de no usar excesivamente a tus proveedores para "maquillar" la caja de fin de año, ya que esto podría generar una carga de pagos muy pesada para el primer mes del próximo ciclo.',
'Felicidades por ese DSO de 36 días. Tu meta estratégica para el inicio del 2026 debe ser evitar el rebote que sufriste en años anteriores. Mantén la guardia alta en enero y febrero, aplica la misma disciplina de cobro de diciembre y verás cómo tu ciclo de efectivo se convierte en tu mayor ventaja competitiva.',
'Análisis Trimestral 4Q 2025 - Cierre Ejercicio');


-- ============================================================
-- REGISTROS TRIMESTRALES FALTANTES: 2023 y 2024
-- Completa la matriz Bloque A para todos los años y periodos.
-- ============================================================

-- 2023 1Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_1Q', 2023, '1Q',
'Durante este primer trimestre de 2023 tu operacion funciono con una agilidad de manual, manteniendo el tiempo de recuperacion de tu capital en niveles minimos. Tu ciclo operativo arranco el ano con las tuercas bien apretadas, lo que te dio liquidez inmediata para sostener compromisos iniciales sin necesidad de apalancar recursos de terceros ni acudir a financiacion costosa.',
'El talon de Aquiles de este arranque fue la practica de pago casi de contado a proveedores, con plazos que no superaban los dos dias. Estabas entregando tu caja antes de que la labor fuera siquiera facturada en su totalidad, lo que te quito margen de maniobra ante cualquier gasto imprevisto o demora menor de parte de tus clientes corporativos.',
'Aprovecha el buen dinamismo de recaudo que tienes en este trimestre para comenzar a negociar plazos de pago de al menos quince dias con tus aliados mas estables. Retener el dinero esos dias sin dejar de ser un pagador puntual es la palanca mas simple para construir un colchon financiero que te proteja en los trimestres de mayor estres operativo.',
'Dictamen Trimestral 1Q 2023')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2023 2Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_2Q', 2023, '2Q',
'El segundo trimestre de 2023 mantuvo la tonica de alta eficiencia en el recaudo, con un ciclo de conversion de efectivo que se sostuvo en cifras de un solo digito. Tu operacion demostro que no necesitaba capital externo para funcionar, ya que el dinero de cada servicio prestado regresaba a tu cuenta antes de que terminara el mes en curso.',
'La contracara de esta velocidad fue una ausencia total de apalancamiento comercial con proveedores. Seguiste pagando al dia siguiente de cada compra de servicio, lo que te impedia usar el credito de tus aliados como fuente gratuita de financiacion. Esta practica, aunque honrable, drenaba tu efectivo disponible con una velocidad que no dejaba margen de holgura operativa.',
'Es el momento de institucionalizar una politica de credito con tus tres proveedores principales. Proppon plazos de pago de veinte dias argumentando crecimiento y mayor volumen de contratos; a cambio, ofrece puntualidad absoluta. Esta negociacion sencilla puede liberar un flujo de caja mensual significativo para reinversion y fortaleza financiera inmediata.',
'Dictamen Trimestral 2Q 2023')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2023 3Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_3Q', 2023, '3Q',
'El tercer trimestre de 2023 consolido el patron de alta rotacion operativa que caracterizo tu ano: ciclos de caja cortos y un recaudo de cartera que mantuvo el dinero entrando con fluidez. Son los meses en que tu firma mostro la madurez de una organizacion dominando su propio flujo financiero con criterio solido y disciplina consistente.',
'La debilidad que persiste es la escasa negociacion con proveedores, manteniendose los plazos de pago por debajo de los cinco dias. En los meses de verano, donde el ritmo comercial suele bajar, ese pago acelerado presiono tu caja justo cuando la entrada de nuevos contratos era mas lenta, dejando poco espacio de maniobra operativo.',
'Este trimestre debe ser tu punto de arranque para construir un fondo de reserva operativa. Con los excedentes de liquidez generados por la eficiencia en recaudo, destina entre un diez y quince por ciento de cada cobro a un fondo de contingencia. Al cierre de ano tendras un amortiguador real para los retos del primer trimestre siguiente del ejercicio.',
'Dictamen Trimestral 3Q 2023')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2023 4Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_4Q', 2023, '4Q',
'Cerraste 2023 con el mejor cierre operativo del ano: un ciclo de conversion de efectivo de apenas tres dias y un recaudo de cartera en menos de veinte. Este resultado de excelencia refleja una sincronía perfecta entre tu gestion comercial y tu administracion financiera que muy pocas firmas de tu nivel logran alcanzar en el mismo ejercicio fiscal.',
'El unico punto de atencion es que este desempeno espectacular de fin de ano descanso sobre la misma debilidad de siempre: proveedores pagados practicamente de contado. Aunque el ciclo corto lo compensa, entrar al nuevo ano sin una politica de apalancamiento establecida significa que el riesgo de 2024 quedo sin blindar anticipadamente por parte de la gerencia.',
'Usa el impulso de este cierre brillante para formalizar ante tu junta una politica de capital de trabajo para 2024. Define metas de DSO maximo de treinta dias y DPO minimo de quince dias, y ponlas por escrito como compromiso gerencial. Ese orden te dara la estructura financiera que tu talento operativo ya merece tener en el proximo ciclo.',
'Dictamen Trimestral 4Q 2023')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2024 1Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_1Q', 2024, '1Q',
'A pesar de que enero fue un golpe severo con una cartera que llego a los doscientos veinticuatro dias, tu capacidad de reaccion durante febrero y marzo fue admirable. Lograste reducir el ciclo de caja de forma sostenida mes a mes, demostrando que tu firma tiene los reflejos gerenciales necesarios para salir de baches sin derrumbarse ante la presion.',
'El promedio de ciento treinta y seis dias de ciclo en este trimestre es la cifra mas preocupante de los ultimos doce meses. Pasar de tres dias en diciembre a cinco meses en enero implica un colapso en la transicion entre ejercicios fiscales que no puedes volver a permitir. Tu liquidez quedo practicamente paralizada durante el mes mas critico del ejercicio.',
'Debes implementar antes del primero de enero un protocolo de arranque de ano que active la cobranza de cartera pendiente antes del cierre de diciembre. El primer dia del ano no puede ser el primero en que tu equipo piensa en cobrar. Esta medida sencilla reduciria el impacto del primer trimestre y salvaria meses de angustia financiera en el futuro.',
'Dictamen Trimestral 1Q 2024')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2024 2Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_2Q', 2024, '2Q',
'La recuperacion del segundo trimestre de 2024 fue uno de los mejores momentos de gestion operativa del ano. Redujiste tu ciclo de conversion de efectivo de ciento treinta y seis dias a solo cincuenta y siete en promedio, lo que equivale a haberle devuelto a tu caja meses enteros de liquidez atrapada y demostrar capacidad de ejecucion bajo presion.',
'Aunque la mejoria fue notable, setenta y tres dias promedio de cartera indica que tus clientes estan usando tu empresa como fuente de financiacion gratuita por mas de dos meses. El hecho de que la recuperacion dependa de esfuerzos extraordinarios y no de un proceso estandar es el riesgo mas latente que hoy tienes en tu estructura financiera.',
'Aprovecha el impulso de este trimestre para redactar una politica formal de credito con condiciones claras de plazo, mora e incentivos por pronto pago. Que este nivel de eficiencia no sea producto del esfuerzo heroico sino de un proceso que funcione automaticamente. Con la politica correcta, el tercer trimestre puede consolidar este ritmo sin desgastar al equipo.',
'Dictamen Trimestral 2Q 2024')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2024 3Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_3Q', 2024, '3Q',
'El tercer trimestre de 2024 mantuvo una estabilidad operativa razonable, con un ciclo de caja promediando los ochenta y seis dias. Has logrado que la organizacion funcione dentro de un rango predecible despues del caos del primer trimestre, lo que ya es un logro de gestion que le da certeza a tu planificacion de flujos futuros dentro del ano.',
'El mes de agosto fue un retroceso puntual que llevo el ciclo hasta los ciento veintisiete dias, evidenciando que la estacionalidad vacacional sigue siendo tu punto ciego. Tu operacion no tiene mecanismos automaticos para defender la liquidez cuando el mercado se desacelera; dependes de la reaccion manual en lugar de protocolos preventivos y alertas tempranas.',
'Instala un semaforo de cartera que te alerte cuando cualquier cliente supere los cuarenta y cinco dias sin pago antes de que llegues a los noventa. Esa alerta temprana te daria el tiempo suficiente para negociar acuerdos sin presion y evitar que agosto vuelva a ser el mes que le roba el impulso a toda la recuperacion del semestre comercial.',
'Dictamen Trimestral 3Q 2024')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2024 4Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_4Q', 2024, '4Q',
'Cerraste el cuarto trimestre de 2024 con una tendencia de estabilizacion muy alentadora, bajando el ciclo de caja a ochenta y un dias promedio. Esta mejora respecto al trimestre anterior demuestra que el equipo tiene la capacidad de apretar las tuercas justo cuando el ano lo exige, terminando en una posicion mucho mas sana de lo que inicio el ejercicio.',
'El cierre en noventa dias de cartera sigue siendo casi tres veces mas lento que el estandar de excelencia que tenias al final del 2023. El ano te enseno que sin una politica de credito formal, los indicadores oscilan al ritmo de la voluntad de los clientes y no al ritmo de tu presupuesto. Esa dependencia externa es tu mayor vulnerabilidad estructural.',
'Antes de cerrar diciembre, ejecuta una campana intensiva de saneamiento de cartera ofreciendo pequenos descuentos por pago inmediato a clientes con facturas de mas de sesenta dias. Entra al 2025 con la cartera limpia y haras que el arranque del proximo ano sea radicalmente distinto al desastre de enero que acabas de superar este ano.',
'Dictamen Trimestral 4Q 2024')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;
