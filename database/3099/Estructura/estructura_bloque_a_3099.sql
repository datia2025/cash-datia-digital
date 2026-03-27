-- SQL Dump: Módulo Estructura (Empresa 3099) - Bloque A (Insights Maestros 2023-2025)
-- Registros: 15 (1 Anual + 4 Trimestrales x 3 años)
-- Estándar: +40 palabras por sección, Tono Gerencia-a-Gerencia
-- Protocolo: v4.6 Cero Reprocesos con UPSERT Integrity

-- =================================================================================
-- AÑO 2023: CIMIENTOS DE AUTONOMÍA
-- =================================================================================

-- 2023 ANNUAL
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai', 2023, 2023, 'Annual', 'success', 
'Cerramos el 2023 con una estructura de capital envidiable. Tu autonomía financiera del 67% demuestra que la mayor parte de tu operación se financia con recursos propios (patrimonio). Esta es tu mayor ventaja competitiva hoy, ya que te permite navegar sin la presión de vencimientos bancarios asfixiantes que suelen limitar a la competencia en el sector servicios.', 
'No obstante, esa alta dependencia de tu propio capital significa que el riesgo de liquidez personal está muy expuesto. Si bien no le debes casi nada a terceros, tampoco estás aprovechando el apalancamiento financiero para acelerar tu crecimiento. Tu costo de capital propio suele ser mayor que el de una deuda bancaria bien negociada, y estás asumiendo todo el peso financiero sobre tus hombros.', 
'Te sugiero que empieces a evaluar una estructura de deuda híbrida para el próximo año. No le temas a las líneas de crédito revolventes; úsalas para financiar tu capital de trabajo y mantén tu patrimonio como un fondo de reserva estratégica para inversiones de largo plazo. Debes profesionalizar la mezcla de fondeo para que el negocio aprenda a crecer con dinero de terceros de manera inteligente.', 
'Bloque A - Dictamen Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2023 1Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_1Q', 2023, 2023, '1Q', 'success', 
'Arrancaste el primer trimestre con una solvencia patrimonial muy robusta. Tus activos están respaldados casi en su totalidad por tu capital social y utilidades, lo que te da una tranquilidad operativa total. Es notable cómo has logrado mantener los gastos administrativos bajo control sin comprometer la calidad del servicio técnico que ofreces a tus clientes corporativos.', 
'El punto de atención en estos tres meses es la rigidez de tus activos fijos. Tienes una gran parte de tu riqueza atrapada en activos que no generan liquidez inmediata. Si bien esto te da seguridad estructural, te resta agilidad para responder a cambios bruscos del mercado. Tu estructura de fondeo es sólida, pero quizás demasiado estática para los retos de expansión que planeas.', 
'Asegúrate de que no estás sobre-capitalizando el negocio innecesariamente. Es un buen momento para definir una política de dividendos que no desangre la empresa pero que sí retribuya tu esfuerzo. Debes buscar un equilibrio donde el patrimonio sea suficiente para garantizar solvencia, pero no tan alto que penalice la rentabilidad sobre tu inversión neta en este inicio de año.', 
'Bloque A - Dictamen Trimestral 1Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2023 2Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_2Q', 2023, 2023, '2Q', 'info', 
'A mitad de año, tu multiplicador de capital sigue en niveles óptimos (1.5x), lo que indica que no estás sobre-endeudado. Tienes un balance muy saneado y una relación deuda/patrimonio que cualquier banco vería con muy buenos ojos. Tu independencia financiera es tu escudo protector ante la volatilidad de las tasas de interés que estamos viendo actualmente en el mercado financiero.', 
'La alerta moderada aquí es el costo de oportunidad. Al no tener deuda financiera significativa, estás perdiendo el beneficio del escudo fiscal que ofrecen los intereses. Esto significa que estás pagando más impuestos proporcionalmente de lo que una empresa con una estructura de deuda optimizada pagaría. Tu estructura es muy segura, pero financieramente podría ser un poco más eficiente y agresiva para crecer.', 
'Te recomiendo que busques asesoría para estructurar una emisión de deuda privada o una línea de crédito de fomento. Debes empezar a "usar el dinero de otros" para financiar proyectos que tengan un retorno superior al costo de la deuda. No permitas que tu aversión al riesgo financiero frene la escala que tu consultora ya está demostrando tener capacidad de absorber.', 
'Bloque A - Dictamen Trimestral 2Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2023 3Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_3Q', 2023, 2023, '3Q', 'success', 
'En este tercer trimestre, tu ratio de propiedad se mantiene firme por encima del 65%. Es admirable la disciplina patrimonial que has mantenido; básicamente, eres el dueño absoluto de tus activos. Esto te otorga un poder de negociación enorme frente a socios potenciales o proveedores estratégicos, ya que tu posición de fuerza es incuestionable en este cierre de bloque.', 
'El riesgo oculto es la complacencia financiera. Al no tener la presión de un acreedor externo, corres el peligro de relajar el control sobre tus cuentas por cobrar. Notamos que tu estructura de fondeo está "subsidiando" la mora de algunos clientes habituales. Estás financiando a terceros con tu propio patrimonio sin cobrarles un costo financiero, lo cual es ineficiente en el largo plazo.', 
'Ajusta tus políticas de crédito comercial de inmediato. Tu patrimonio es para fortalecer tu negocio, no para ser el banco gratuito de tus clientes. Empieza a exigir pagos anticipados o a negociar descuentos por pronto pago para que tu capital propio siempre esté circulando en proyectos nuevos y no estancado en facturas de meses anteriores que erosionan tu valor patrimonial.', 
'Bloque A - Dictamen Trimestral 3Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2023 4Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_4Q', 2023, 2023, '4Q', 'success', 
'Cierras el año con una estructura de fondeo extremadamente robusta. Tu autonomía del 67% al cierre de diciembre es un sello de garantía para la continuidad del negocio. Has logrado que tu riqueza neta crezca a la par de la operación, lo que te posiciona como una empresa de muy bajo riesgo y alta estabilidad estructural para los retos del 2024.', 
'Sin embargo, tu pasivo corriente sigue representando casi la totalidad de tus deudas. No tienes una estructura de deuda de largo plazo que te permita planificar inversiones grandes en tecnología o talento sin afectar tu operación diaria. Estás financiando tus necesidades con proveedores y obligaciones de corto plazo, lo que te quita respiro estratégico ante cualquier imprevisto financiero.', 
'Mi consejo de fin de año es que busques convertir parte de tus deudas de corto plazo en obligaciones de largo plazo aprovechando tu buen balance. Debes estirar tus plazos de pago generales para que el flujo de caja respire mejor. La meta para el próximo año debe ser balancear tu pasivo para que no todo venza en los próximos 30 días.', 
'Bloque A - Dictamen Trimestral 4Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();


-- =================================================================================
-- AÑO 2024: RESILIENCIA ANTE LA VOLATILIDAD
-- =================================================================================

-- 2024 ANNUAL
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai', 2024, 2024, 'Annual', 'info', 
'El 2024 fue un año de prueba para tu estructura financiera, y lograste superarlo con éxito. A pesar de los picos de endeudamiento en el segundo trimestre, cerraste el año recuperando tu autonomía hasta un impresionante 72%. Esto demuestra que tienes una capacidad de reacción asombrosa para reconducir el negocio hacia niveles de seguridad patrimonial cuando la cuerda se tensa.', 
'El punto más crítico fue el mes de abril, donde tu apalancamiento subió peligrosamente hasta 1.8x. Estuviste a punto de perder el control de tu mezcla de fondeo debido a un aumento súbito de obligaciones de corto plazo. Esa volatilidad indica que tu estructura de pasivos sigue siendo reactiva y no proactiva, lo que te expone a sustos innecesarios ante cualquier bache operativo.', 
'Debes establecer un "techo de endeudamiento" rígido para el 2025. No permitas que tu apalancamiento vuelva a superar el 1.6x bajo ninguna circunstancia operativa. Necesitas crear una reserva de capital de trabajo que se alimente de las utilidades de este buen cierre de año para que no tengas que recurrir a pasivos externos de emergencia cuando surjan nuevas oportunidades de negocio.', 
'Bloque A - Dictamen Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2024 1Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_1Q', 2024, 2024, '1Q', 'success', 
'Comenzaste el 2024 manteniendo la solidez del cierre anterior. Tu autonomía del 68% en este primer trimestre te da el blindaje necesario para planificar el año con ambición. Es positivo ver que tu estructura de capital sigue siendo el motor principal de tus operaciones, brindándote una independencia total de los mercados financieros externos en este arranque.', 
'La nota negativa es que tu deuda patrimonial empezó a subir sutilmente en marzo. Aunque todavía estás en niveles muy seguros, la tendencia indica que estás empezando a consumir recursos a un ritmo mayor que tu generación de capital propio. Si no le pones freno a este crecimiento de pasivos operativos, podrías comprometer la solvencia que con tanto esfuerzo lograste estabilizar el año pasado.', 
'Te recomiendo que audites a fondo tus gastos de inicio de año. Asegúrate de que cada peso de deuda que estás adquiriendo esté directamente ligado a un proyecto que genere utilidades en el corto plazo. No financies gastos administrativos generales con pasivos; usa solo tus flujos operativos para cubrir la nómina y los servicios básicos para mantener tu estructura limpia.', 
'Bloque A - Dictamen Trimestral 1Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2024 2Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_2Q', 2024, 2024, '2Q', 'warning', 
'A pesar del estrés estructural, rescatamos tu capacidad para seguir operando sin caer en una crisis de solvencia real. Tu patrimonio sigue siendo suficiente para cubrir tus obligaciones totales, lo que evitó que entraras en niveles de riesgo crítico durante el pico de endeudamiento que viste en abril y mayo de este agitado segundo trimestre del 2024.', 
'Encendemos la alerta por la caída de tu autonomía al 55% en abril. Fue el momento de mayor fragilidad del año; básicamente, por cada peso que tenías, ya debías casi la mitad a terceros. Este nivel de apalancamiento (1.8x) te dejó con muy poco margen de error ante cualquier cliente que se demorara en pagar, recordándonos que tu estructura puede ser vulnerable a choques externos.', 
'Debes implementar un plan de choque para reducir tus pasivos de corto plazo de inmediato. Negocia plazos extendidos con tus proveedores y prioriza el recaudo de cartera para inyectar liquidez y reducir la dependencia de créditos rotativos. Tu meta para el próximo trimestre debe ser devolver la autonomía financiera a niveles superiores al 65% para recuperar tu tranquilidad.', 
'Bloque A - Dictamen Trimestral 2Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2024 3Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_3Q', 2024, 2024, '3Q', 'info', 
'Es muy gratificante ver la corrección que hiciste en este tercer trimestre. Lograste subir tu autonomía del 60% al 64% en apenas tres meses. Esta tendencia de desapalancamiento es la señal correcta de que estás recuperando el equilibrio estructural y que el negocio está aprendiendo a financiarse de nuevo con sus propios excedentes operativos.', 
'El residuo negativo de la crisis anterior es que tu multiplicador de capital sigue un poco alto (1.6x) en comparación con tus promedios históricos. Todavía estás "estirando mucho la sábana" patrimonial para sostener la operación actual. Esa presión residual te impide tomar oportunidades de inversión grandes que requieren un balance mucho más holgado y limpio del que tienes hoy.', 
'Sigue con la política de austeridad en la adquisición de nuevas deudas. Usa estos tres meses para limpiar por completo tus extractos bancarios de obligaciones menores que solo generan ruido contable. Debes llegar al cierre de año con una estructura de fondeo que sea un ejemplo de eficiencia y no una lista interminable de pequeños compromisos por pagar a corto plazo.', 
'Bloque A - Dictamen Trimestral 3Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2024 4Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_4Q', 2024, 2024, '4Q', 'success', 
'Cierre espectacular del 2024. Has logrado una autonomía financiera del 72%, el nivel más alto registrado en los últimos dos años. Tu patrimonio ahora respalda casi tres cuartas partes de tus activos, lo que te devuelve una soberanía total sobre tu negocio. Has demostrado una resiliencia patrimonial que es digna de resaltar en este informe de cierre.', 
'A pesar del éxito, vemos que tu ratio de capitalización es casi nulo, lo que confirma que no tienes deuda de largo plazo. Sigues dependiendo exclusivamente de fondos inmediatos, lo que te obliga a ser extremadamente cuidadoso con tu flujo de caja mensual. No tienes un amortiguador financiero de largo respiro que te permita soñar con expansiones territoriales o compras de activos grandes.', 
'Para el 2025, tu reto es mantener este 70% de autonomía pero empezando a introducir "deuda sana" de largo plazo. Debes buscar financiamiento para activos productivos que se paguen solos en 3 o 5 años. No le tengas miedo a crecer con deuda si esta es de largo aliento y tiene una tasa fija competitiva; eso le dará a tu estructura el dinamismo que hoy le falta.', 
'Bloque A - Dictamen Trimestral 4Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();


-- =================================================================================
-- AÑO 2025: CONSOLIDACIÓN Y EFICIENCIA ESTRUCTURAL
-- =================================================================================

-- 2025 ANNUAL
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai', 2025, 2025, 'Annual', 'success', 
'El 2025 ha sido el año de la consolidación definitiva de tu fortaleza financiera. Mantener una autonomía promedio del 68% y un apalancamiento estable de 1.4x es una señal de madurez empresarial absoluta. Has logrado equilibrar el crecimiento del negocio con la preservación de tu riqueza patrimonial, creando una estructura robusta, ágil y altamente confiable.', 
'El único punto de vigilancia es que tu estructura operativa sigue siendo muy pesada en pasivos corrientes (recursos de corto plazo). Si bien los manejas bien, vives bajo una vigilancia constante de los vencimientos mensuales. Esa carga administrativa de gestionar deudas pequeñas le quita tiempo a la gerencia para pensar en la estrategia de largo plazo de la compañía.', 
'Te recomiendo que simplifiques tu mezcla de fondeo. El próximo año deberías consolidar tus múltiples pasivos pequeños en una sola obligación bancaria estructurada con mejores condiciones. Debes liberar tiempo mental y operativo para buscar nuevas líneas de negocio que aprovechen la altísima capacidad de respaldo patrimonial que has construido en estos tres años.', 
'Bloque A - Dictamen Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2025 1Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_1Q', 2025, 2025, '1Q', 'success', 
'Iniciaste el 2025 con una salud patrimonial envidiable, manteniendo una autonomía financiera del 71% durante todo el trimestre. Es notable cómo has internalizado la disciplina del desapalancamiento tras los sustos del 2024. Tu negocio hoy es una fortaleza que no depende de nadie externo para abrir sus puertas cada mañana, lo que te da una paz mental invaluable.', 
'El riesgo latente es que tu capital está siendo "demasiado conservador". Al tener tanto respaldo propio y tan poca deuda, tu ROE (Retorno sobre el Patrimonio) podría estar por debajo de su potencial máximo. Estás operando con un margen de seguridad tan amplio que estás sacrificando eficiencia financiera a cambio de una tranquilidad absoluta que ya tienes garantizada por de más.', 
'Atrévete a inyectar un poco más de dinamismo a tu estructura. Considera usar el exceso de autonomía para financiar una campaña de marketing agresiva o para contratar ese equipo senior que has postergado. Tu balance tiene la espalda suficiente para aguantar una inversión de riesgo moderado sin despeinar la solvencia general que ya es un estándar en tu gestión.', 
'Bloque A - Dictamen Trimestral 1Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2025 2Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_2Q', 2025, 2025, '2Q', 'info', 
'A mitad de este año, resalta la constancia de tu apalancamiento en 1.5x. Has logrado romper el ciclo de volatilidad que viste el año pasado en este mismo periodo. Tu estructura de fondeo ahora es predecible, estable y controlada, lo que te permite navegar por la incertidumbre económica regional con una coraza financiera muy bien ajustada a tus necesidades operativas.', 
'Vigilamos sutilmente un aumento en tu ratio de deuda/patrimonio durante mayo, que subió temporalmente a 0.66x. Aunque es un incremento controlado, es un recordatorio de que los costos operativos de mitad de año tienden a presionar tu mezcla de fondeo. Si no vigilas de cerca esos picos estacionales, podrías volver a caer en la reactividad financiera que ya habías superado.', 
'Mantén la guardia alta con los compromisos de mitad de año. Asegura que los pagos de impuestos y beneficios de nómina estén previstos en tu flujo de caja para no tener que estirar la cuerda de tus pasivos operativos. Debes buscar que cada trimestre sea un espejo de estabilidad patrimonial, sin importar las presiones del calendario fiscal o comercial de la consultora.', 
'Bloque A - Dictamen Trimestral 2Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2025 3Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_3Q', 2025, 2025, '3Q', 'success', 
'En este tercer trimestre, tu autonomía financiera se consolidó de nuevo en el 67%. Has logrado transformar tu estructura de fondeo en un activo estratégico en sí mismo. Tienes una solvencia que te permite decir "no" a contratos malos o riesgosos, algo que muy pocas empresas del sector pueden hacer. Tu capital propio es tu seguro de libertad operativa en este cierre de bloque.', 
'La alerta es sobre la deuda a activos tangibles. Notamos que tu pasivo total está muy cerca del límite de respaldo que ofrecen tus activos físicos. Esto significa que tu mayor valor hoy es intangible (tu marca y conocimiento), lo cual es bueno para una consultora, pero limita tu capacidad de obtener créditos con garantía real si llegaras a necesitarlos urgentemente.', 
'Sigue invirtiendo en activos productivos que fortalezcan tu balance tangible. Compra equipos de alta gama o software propietario que puedas capitalizar en tus libros. Esto le dará un soporte físico a tu estructura de deudas y mejorará tus indicadores de respaldo patrimonial frente a terceros que solo valoran lo que pueden ver físicamente en un inventario.', 
'Bloque A - Dictamen Trimestral 3Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2025 4Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'insight-estructura-ai_4Q', 2025, 2025, '4Q', 'success', 
'Cierras el trienio 2023-2025 con una salud estructural impecable. Tu autonomía del 68% al cierre de diciembre es el broche de oro para una gestión financiera magistral. Has logrado que tu empresa sea un modelo de independencia, solvencia y control patrimonial, posicionándote para un 2026 lleno de oportunidades de expansión sin precedentes en tu historia.', 
'El reto final es la optimización de los excedentes. Tienes tanto respaldo patrimonial que podrías estar "sentado sobre el dinero" en lugar de ponerlo a trabajar. Tu estructura de fondeo es tan segura que ya raya en lo ineficiente desde el punto de vista puramente financiero de retorno sobre inversión. Estás en la posición ideal para ser mucho más agresivo estratégicamente.', 
'Para el próximo año, considera una re-estructuración agresiva de tus pasivos para el crecimiento. Tienes la solvencia para apalancar proyectos de gran escala. No te conformes con mantener el status quo estructural; usa tu inmensa credibilidad financiera para conquistar nuevos mercados. Tienes el tanque lleno de capital propio, es hora de pisar el acelerador a fondo.', 
'Bloque A - Dictamen Trimestral 4Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();
