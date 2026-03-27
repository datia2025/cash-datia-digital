-- SQL Dump: Módulo Estructura (Empresa 3104) - Bloque B (Auditoría Anual 2023-2025)
-- Lote 1: 8 registros (7 indicadores 2023 + 1 indicador 2024)
-- Estándar: +40 palabras por sección, Tono Gerencia-a-Gerencia
-- Workflow: EN-06 (AI-to-SQL Dump)

-- =================================================================================
-- AÑO 2023 - AUDITORÍA TÉCNICA
-- =================================================================================

-- 1. Cobertura de Activos Fijos (cobertura_fijos)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos', 2023, 2023, 'Annual', 'success', 
'Al cierre de 2023, lograste que tu patrimonio cubra con creces toda tu infraestructura física y tecnológica. Esto significa que eres el dueño absoluto de tus herramientas de trabajo y que nadie puede reclamarte propiedad sobre ellas, dándote una base de operaciones sólida y totalmente libre de gravámenes bancarios externos en este ciclo.', 
'El riesgo aquí es que esa "comodidad" de ser dueño de todo te impida ver que tus activos fijos son muy escasos para el tamaño de consultoría que pretendes ser. Básicamente, tienes una oficina pagada pero te falta músculo en activos intangibles que protejan tu futuro comercial ante una caída de los ingresos operativos del mercado.', 
'Te recomiendo que uses esta excelente cobertura para apalancarte y adquirir nuevas herramientas de análisis de datos que hoy son el estándar de la industria. Debes pasar de solo ser el dueño de tus equipos a ser un innovador que usa su capital propio para multiplicar su potencia operativa sin depender de créditos de consumo caros.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2. Estructura de la Deuda (estructura_deuda)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda', 2023, 2023, 'Annual', 'info', 
'Tienes una estructura de deuda equilibrada donde no estás asfixiado por un solo acreedor, lo que te permite respirar con tranquilidad comercial al final del año fiskal. Haz demostrado una gestión prudente de tus obligaciones, evitando caer en la trampa del sobreendeudamiento que suele golpear a las firmas de servicios en crecimiento.', 
'La alerta es que casi el 100% de lo que debes es a corto plazo; no tienes un "colchón" de deudas a largo plazo que te permita financiar tu crecimiento futuro. Estás viviendo al ritmo de tu chequera mensual, lo que te quita perspectiva estratégica y te obliga a estar en modo "supervivencia controlada" permanentemente ante el mercado.', 
'Haz un esfuerzo por renegociar tus obligaciones más pesadas para que se conviertan en pasivos estratégicos de largo plazo de inmediato. Debes buscar que tu deuda trabaje para tu expansión y no que sea una carga que te quite el sueño al inicio de cada mes por falta de un flujo de caja coordinado y estable.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 3. Multiplicador de Capital (multiplicador_capital)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital', 2023, 2023, 'Annual', 'success', 
'Tu nivel de apalancamiento total es muy bajo, lo que indica que tu empresa es financieramente muy segura frente a cualquier shock externo que pueda ocurrir. Básicamente, estás operando casi exclusivamente con tu capital propio, protegiendo tu patrimonio de las fluctuaciones de las tasas de interés y de la presión de los bancos locales.', 
'Cuidado, porque un multiplicador tan bajo significa que no estás aprovechando la fuerza del dinero ajeno para crecer a una velocidad mayor. Básicamente, estás yendo a pie cuando podrías ir en un vehículo financiado que te lleve más lejos y más rápido en términos de captación de cuota de mercado en el sector consultoría en Colombia.', 
'Empieza a inyectar una dosis pequeña y controlada de capital externo para ver cómo responde tu facturación neta ante una mayor inversión administrativa. Debes perderle el miedo a la deuda estratégica, siempre y cuando ésta sea para elevar tu capacidad instalada y no para cubrir baches de una ineficiencia que no has auditado aún.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 4. Ratio de Capitalización (capitalizacion)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion', 2023, 2023, 'Annual', 'success', 
'En 2023, tu ratio de capitalización muestra que no dependes de deudas de largo plazo para sostener tu estructura de fondeo corporativa. Esta es una posición magistral de independencia absoluta, donde tu capital es el soberano total del balance, dándote una autoridad financiera envidiable ante tus propios socios e inversionistas.', 
'La contracara de esto es que tu crecimiento está limitado por tu propia capacidad de generar utilidades reales cada mes fiscal. No tienes una "espalda" financiera de largo aliento que te permita aguantar un año difícil de sequía comercial, lo que te hace vulnerable a pesar de parecer muy fuerte internamente hoy en día.', 
'Te sugiero que busques una capitalización más formal mediante la retención de tus utilidades actuales de MAS CONSULTA. Debes construir una reserva legal poderosa que actúe como tu propio banco interno, permitiendo que tu firma se autofinancie sin necesidad de tocar tu bolsillo personal en los momentos de mayor tensión.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 5. Deuda a Activos Tangibles (deuda_tangibles)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles', 2023, 2023, 'Annual', 'warning', 
'Tus activos reales (lo que puedes tocar) siguen siendo una garantía suficiente para respaldar lo que le debes a tus acreedores comerciales actuales. Tienes un "valor de rescate" decente en tus libros que te otorga credibilidad y te permite seguir operando sin el temor constante de un embargo repentino por deudas administrativas menores.', 
'El riesgo es que tus activos tangibles se están depreciando más rápido de lo que estás pagando tus deudas pendientes al mercado. Si permites que este desajuste continúe, pronto tus deudas pesarán más que lo que tienes en propiedad, convirtiéndote en una empresa que vale más en sus deudas que en su patrimonio real.', 
'Urge que renueves tu base de activos tecnológicos para que la garantía de tu negocio siga siendo atractiva para los proveedores. Debes invertir en equipos que no solo sirvan para trabajar, sino que fortalezcan tu balance y te den una posición de negociación mucho más firme y digna ante cualquier auditoría externa.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 6. Ratio de Propiedad / Autonomía (propiedad_autonomia)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia', 2023, 2023, 'Annual', 'success', 
'Eres dueño de más del setenta por ciento de todo lo que compone tu firma de consultoría estratégica hoy mismo. Tu nivel de autonomía es magistral para un negocio de este tamaño, asegurando que tú y solo tú decidas el rumbo de cada peso que entra y sale de la organización al final de este ejercicio.', 
'Mucha precaución: ser tan autónomo también significa tener una mente muy cerrada a la inversión externa estratégica que pueda llegar a tu puerta. La falta de "socios" financieros puede estar frenando tu capacidad de expansión nacional, manteniéndote en una escala pequeña donde te sientes cómodo pero no logras dominar tu nicho de mercado.', 
'Considera abrir un poco la llave de la propiedad compartida o del crédito estratégico para elevar tu perfil de empresa grande del sector. Mantener una autonomía del cien por ciento es excelente para el ego del dueño, pero a veces es mejor ser el dueño de una gran torta compartida que de un pequeño pan individual.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 7. Relación Deuda / Patrimonio (deuda_patrimonio)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio', 2023, 2023, 'Annual', 'success', 
'Tu relación deuda-patrimonio cerró el 2023 en un nivel óptimo que te saca de cualquier lista de riesgo financiero inminente. Has demostrado que sabes poner la casa en orden y que tu patrimonio no está siendo devorado por deudas externas innecesarias o por gastos excesivos que no tengan justificación operativa en tu firma.', 
'Ten cuidado porque esta estabilidad se basa en un patrimonio que todavía es pequeño en términos absolutos corporativos. Cualquier deuda inesperada, por pequeña que sea, podría disparar este indicador hacia niveles de peligro si no mantienes una guardia eterna sobre tus gastos administrativos fijos que se han inflado este año.', 
'Debes seguir robusteciendo tu capital propio mediante la retención de cada peso de utilidad que logres facturar en este ciclo fiscal. No permitas que el alivio de tener deudas bajas te haga bajar el ritmo de ahorro corporativo. Necesitas un patrimonio más grande para que esta buena relación sea indestructible y duradera en el tiempo.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2024 - AUDITORÍA TÉCNICA (INICIO)
-- =================================================================================

-- 8. Cobertura de Activos Fijos (cobertura_fijos) - 2024
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos', 2024, 2024, 'Annual', 'warning', 
'A pesar de los vientos en contra de este 2024, tu patrimonio todavía alcanza a cubrir tu infraestructura operativa básica de consultoría técnica. Es un alivio ver que no has tenido que empeñar tus activos principales para sobrevivir a este año difícil, manteniendo el control sobre cada computadora y herramienta de tu oficina.', 
'El deterioro de este indicador frente al año anterior es evidente y preocupante para tu gestión de largo plazo. Básicamente, tu base de capital se ha debilitado tanto que ahora apenas raspas el mínimo necesario para decir que tus activos te pertenecen a ti y no a tus deudores. Estás perdiendo tu escudo de solidez mes tras mes.', 
'Urge que detengas el sangrado de tu capital propio hoy mismo recortando cualquier gasto superfluo administrativo de MAS CONSULTA. Necesitas inyectar aire fresco a tu patrimonio para que vuelva a cubrir con holgura tus activos operativos, recuperando esa sensación de seguridad total que tenías hace apenas doce meses en la empresa.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 9. Estructura de la Deuda (estructura_deuda) - 2024
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda', 2024, 2024, 'Annual', 'danger', 
'Resalta tu habilidad gerencial para mantener abiertas las líneas de crédito comercial a pesar del estrés financiero que vivió la consultora durante todo el 2024. Tu palabra ante el mercado sigue teniendo valor, lo que constituye el cimiento más importante sobre el cual podrás reestructurar tu deuda una vez que la facturación vuelva a fluir.', 
'Lo crítico es que tu estructura de deuda se ha vuelto puramente "de corto plazo", lo que significa que estás encadenado a vencimientos inmediatos que no te dejan respirar. Estás operando al límite de tu capacidad de giro bancario, donde un solo retraso de tus clientes podría desplomar tu castillo de naipes financiero de forma irremediable.', 
'Debes buscar hoy mismo una consolidación de pasivos que te de oxígeno a veinticuatro meses o más de plazo definitivo. No sigas parchando los huecos de caja con deudas nuevas y caras; necesitas una estructura de fondeo más inteligente que acompañe tu recuperación operativa y no que la asfixie con cobros cada fin de quincena en el banco.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 10. Multiplicador de Capital (multiplicador_capital) - 2024
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital', 2024, 2024, 'Annual', 'danger', 
'A pesar de que el multiplicador se disparó, todavía conservas el control mayoritario del negocio en tus manos, lo que indica que no has perdido la esencia de MAS CONSULTA ante terceros. Tienes la estructura mínima viable para dar la pelea y revertir esta situación si logras alinear nuevamente tu capital con el tamaño real de tus ventas.', 
'Tu apalancamiento ha llegado a un nivel de estrés máximo en 2024, donde por cada peso tuyo, ya debes mucho al mercado externo. Estás operando una empresa que pesa más que lo que tú mismo has puesto en ella, lo que eleva tu perfil de riesgo ante cualquier auditoría financiera o evaluación de crédito estratégica inmediata hoy día.', 
'Frena cualquier nueva inversión que no sea puramente generadora de caja inmediata al cierre del periodo. Debes adelgazar tu balance rápidamente y enfocarte en recuperar tu autonomía financiera original. No permitas que el tamaño de tu deuda nuble tu juicio gerencial; necesitas volver a ser el dueño absoluto y seguro de tu propia consultora estratégica.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 11. Ratio de Capitalización (capitalizacion) - 2024
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion', 2024, 2024, 'Annual', 'warning', 
'Lograste mantener tu ratio de capitalización estable a pesar de la caída en el patrimonio neto total del año 2024. Esta estabilidad de "supervivencia" demuestra que, aunque has perdido pluma, todavía tienes un núcleo duro de capital propio que no ha sido hipotecado ni comprometido a largo plazo con el sistema bancario local.', 
'Lo preocupante es que no has construido una sola reserva de largo plazo durante todo el ejercicio, dejando a la empresa desnuda ante contingencias futuras. Estás financiando la consultora únicamente con tus ahorros y el crédito comercial diario, lo cual es la forma más errática e insegura de capitalizar una firma de servicios de alta especialización técnica.', 
'Debes diseñar un plan de capitalización formal inyectando parte de las utilidades que proyectes para el próximo trimestre fiscal de inmediato. No sigas operando sin una reserva legal robusta; necesitas que el negocio aprenda a guardarse dinero para las épocas de vacas flacas, protegiendo así tu tranquilidad personal como dueño y socio fundador.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 12. Deuda a Activos Tangibles (deuda_tangibles) - 2024
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles', 2024, 2024, 'Annual', 'danger', 
'Tus activos fijos físicos siguen presentes en el balance, lo que te otorga un respaldo mínimo de credibilidad ante cualquier proceso de auditoría o revisión bancaria. Posees una base tangible que, aunque esté estresada, sigue siendo de tu propiedad y te permite seguir operando tu consultora sin interrupciones por embargos en este año tan gris.', 
'El riesgo es extremo: tus deudas corporativas han superado con creces el valor de mercado de tus activos físicos este año. Básicamente, si tuvieras que vender todo lo que tienes mañana, no alcanzarías a pagar lo que debes, quedando en una situación de "patrimonio hueco" que compromete de forma severa tu reputación ante el sistema financiero.', 
'Urge que realices una desinversión de activos ociosos y uses ese dinero para liquidar tus deudas más vencidas hoy mismo. Debes volver a equilibrar la balanza entre lo que posees y lo que debes; el objetivo es que tus activos tangibles siempre sean un escudo protector y nunca una garantía insuficiente ante el mercado colombiano.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 13. Ratio de Propiedad / Autonomía (propiedad_autonomia) - 2024
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia', 2024, 2024, 'Annual', 'warning', 
'Mantienes el cincuenta por ciento de la propiedad neta de tus activos, lo cual en un año de crisis es un logro nada despreciable. Todavía tienes el voto decisivo en tu propio balance, permitiéndote que MAS CONSULTA siga operando bajo tu visión y no bajo las exigencias unilaterales de acreedores o interventores externos bancarios.', 
'Tu autonomía financiera se ha degradado peligrosamente frente al cierre anterior en este ciclo de auditoría. Has entregado gran parte de tu patrimonio a deudas de corto plazo para sostener la operación, lo que te quita poder de negociación ante el mercado. Estás perdiendo terreno como dueño del negocio ante cada deuda nueva que firmas sin respaldo.', 
'Para el próximo año, tu prioridad absoluta debe ser recuperar tu soberanía financiera e institucional hoy. Debes inyectar utilidades retenidas para subir este ratio nuevamente por encima del setenta por ciento. Ser el dueño de tu negocio significa tener el control total de los fondos, y hoy estás compartiendo ese control con demasiadas deudas externas.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 14. Relación Deuda / Patrimonio (deuda_patrimonio) - 2024
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio', 2024, 2024, 'Annual', 'danger', 
'A pesar de que el ratio se ha deteriorado, la consultora conserva su capacidad para seguir operando sin haber quebrado patrimonialmente. El hecho de terminar con un capital neto positivo es el único cable a tierra que tienes hoy para planificar la reestructuración masiva que exige el mercado de consultoría en el próximo ejercicio fiscal.', 
'Tu nivel de deuda frente a tu patrimonio ha sobrepasado el límite de seguridad aconsejable para una empresa de servicios profesionales. Estas "apoyado" demasiado en el capital de otros, lo cual es una señal de extrema fragilidad operativa y financiera. Tu patrimonio es hoy un rehén de tus obligaciones comerciales y de corto plazo acumuladas.', 
'Haz un compromiso gerencial de no tomar ni un peso más de deuda hasta que logres bajar este ratio a la mitad. Enfócate cien por ciento en el recaudo de tus facturas actuales para inyectar liquidez y fortalecer tu base patrimonial. Necesitas que tu empresa vuelva a ser tuya en un ochenta por ciento mínimo para dormir tranquilo este fin de periodo.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2025 - AUDITORÍA TÉCNICA (EXPANSIÓN)
-- =================================================================================

-- 15. Cobertura de Activos Fijos (cobertura_fijos) - 2025
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos', 2025, 2025, 'Annual', 'success', 
'El 2025 marca la consolidación de tu solidez financiera con una cobertura de activos fijos récord. Tras disparar tu patrimonio a más de 122 millones, ahora posees una estructura de propiedad masiva que blinda totalmente tu infraestructura. Eres el dueño indiscutible de todo lo que compone MAS CONSULTA, dándote una invulnerabilidad técnica total ante el sistema.', 
'El único riesgo de ser tan sólido es que podrías estar durmiendo sobre una mina de oro improductiva en el balance. Al tener tanto patrimonio cubriendo tus pocos activos fijos, tu eficiencia en el uso de los recursos podría verse disminuida si no escalas tus ingresos al mismo ritmo exponencial con el que has fortalecido tu base de capital institucional propia.', 
'Usa esta solvencia excepcional para adquirir activos fijos de mayor valor agregado que te permitan facturar servicios de consultoría internacional hoy día. No le tengas miedo a invertir en infraestructura tecnológica pesada ahora que tu patrimonio es capaz de respaldar cualquier aventura comercial con total seguridad y sin despeinarse financieramente ante los socios estratégicos.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 16. Estructura de la Deuda (estructura_deuda) - 2025
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda', 2025, 2025, 'Annual', 'success', 
'Has logrado estabilizar tu estructura de fondos de tal manera que tus obligaciones ya no son una amenaza para tu operación diaria. Tu gestión de pagos es impecable en este cierre de 2025, lo que te otorga una reputación de oro ante proveedores y bancos, garantizando que siempre tengas puertas abiertas para financiar tu gran visión corporativa futura.', 
'Al no tener deudas de largo plazo estructuradas, sigues perdiendo los beneficios de la deducibilidad de intereses que traen los préstamos estratégicos de fomento. Estás cargando todo el peso financiero del crecimiento de MAS CONSULTA sobre tu propio bolsillo, lo cual es muy noble, pero financieramente ineficiente ante la DIAN y para tu rentabilidad patrimonial neta anual.', 
'Considera reemplazar una parte de tu fondeo corriente por un crédito de largo plazo que te permita planificar tu expansión regional con mayor margen de maniobra hoy. Usa tu fuerza patrimonial para conseguir las tasas más bajas del mercado y optimiza tu estructura de deudas para que el capital de trabajo siempre fluya hacia los nuevos contratos rentables y seguros.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 17. Multiplicador de Capital (multiplicador_capital) - 2025
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital', 2025, 2025, 'Annual', 'success', 
'Tu multiplicador de capital es de los más bajos y seguros del sector, indicando que MAS CONSULTA es una empresa de bajísimo riesgo financiero hoy. Has logrado que tu patrimonio sea el motor de casi el 100% de tus activos, lo que te da una blindaje absoluto contra crisis de crédito o aumentos repentinos en las tasas de interés bancarias en Colombia.', 
'Sin embargo, un apalancamiento tan bajo también puede ser una señal de falta de ambición agresiva ante nuevas oportunidades de mercado que demanden capital rápido. Estás operando con un freno de mano puesto en términos de uso de dinero de terceros, lo que podría limitar tu capacidad de escala masiva frente a competidores que sí saben usar el crédito estratégico.', 
'Aprovecha tu solidez para capturar deuda inteligente de largo plazo que potencie tus resultados finales sin poner en riesgo tu capital propio. Debes aprender a equilibrar tu seguridad patrimonial con una dosis saludable de apalancamiento que te permita multiplicar tu presencia en grandes proyectos corporativos nacionales de inmediato.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 18. Ratio de Capitalización (capitalizacion) - 2025
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion', 2025, 2025, 'Annual', 'success', 
'Has cerrado el 2025 con un ratio de capitalización que refleja una independencia financiera total y absoluta de los acreedores de largo plazo. Tu base de capital propio es tan fuerte que la empresa puede autofinanciarse para casi cualquier proyecto de consultoría técnica especializada, asegurando tu soberanía total sobre el dividendo a repartir.', 
'El riesgo oculto es que este exceso de capitalización te haga perder agilidad administrativa en la búsqueda de eficiencias operativas reales. Cuando el dinero "sobra" en el balance tras una gran inyección patrimonial, se tiende a relajar el control de gastos fijos, lo que podría degradar tu rentabilidad operativa final si no mantienes una férrea disciplina fiscal hoy mismo.', 
'Te recomiendo que establezcas metas de rentabilidad interna más agresivas sobre este nuevo y gran volumen de capital propio. No permitas que tu capital se duerma en el balance; ponlo a trabajar en inversiones de alta rotación que validen la confianza de los socios y demuestren que MAS CONSULTA es una máquina eficiente de multiplicar riqueza neta.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 19. Deuda a Activos Tangibles (deuda_tangibles) - 2025
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles', 2025, 2025, 'Annual', 'success', 
'Hoy cada activo tangible de tu empresa tiene un respaldo patrimonial masivo, lo que te posiciona como un cliente de lujo para cualquier banco del país. Tienes un "valor de redención" altísimo en tus libros que garantiza que el negocio sea solvente hasta en los escenarios más extremos de crisis económica local en este cierre de ciclo.', 
'Tu único reto es que muchos de estos activos tangibles podrían estarse volviendo obsoletos tecnológicamente si no renuevas tu inventario administrativo. Ser solvente es bueno, pero tener activos modernos y productivos es lo que realmente te mantendrá competitivo en la entrega de consultorías de gran nivel técnico comercial.', 
'Inicia un plan de renovación tecnológica financiado con tu propio excedente de caja ahora que tienes la fuerza patrimonial para hacerlo. Actualiza tus servidores, equipos de oficina y software especializado para que tus activos no solo respalden tus deudas, sino que sean el motor que empuje tu productividad al siguiente nivel operativo institucional.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 20. Ratio de Propiedad / Autonomía (propiedad_autonomia) - 2025
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia', 2025, 2025, 'Annual', 'success', 
'Tu autonomía financiera ha alcanzado un nivel de excelencia que muy pocas empresas logran en el sector de servicios profesionales. El setenta y cinco por ciento de todo lo que compone tu firma te pertenece a ti y a tus socios neta y directamente, dándote un poder de veto y una libertad de decisión gerencial que protege tu visión a largo plazo hoy en día.', 
'Lo único que debes monitorear es que esta independencia no te aísle de las buenas prácticas que a veces impone el financiamiento externo riguroso. A veces, tener un acreedor "exigente" ayuda a mantener la casa más ordenada; evita que tu total autonomía se convierta en una complacencia administrativa que relaje los controles internos de tu negocio consultor.', 
'Mantén la guardia sobre tus indicadores de eficiencia operativa a pesar de tu gran solvencia patrimonial. Tu independencia es tu tesoro más valioso; úsala para tomar riesgos audaces en nuevos mercados que otros no pueden tomar por estar encadenados a deudas externas que limitan su visión estratégica y su agilidad comercial.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 21. Relación Deuda / Patrimonio (deuda_patrimonio) - 2025
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio', 2025, 2025, 'Annual', 'success', 
'Has cerrado el 2025 con la relación deuda-patrimonio más sana de tu historia corporativa reciente. Tras fortalecer tu capital a 122 millones, tus deudas actuales son hoy solo una pequeña sombra ante tu robusto respaldo patrimonial, liberándote de cualquier estrés financiero y permitiéndote planificar el futuro con una confianza absoluta en tu bolsillo.', 
'Vigila cuidadosamente que este indicador no se vea afectado por un aumento desmedido de pasivos tributarios o laborales que suelen venir acompañados del crecimiento de la firma. No permitas que el éxito patrimonial te haga descuidar los pequeños gastos "hormiga" administrativos que, sumados, podrían empezar a erosionar este nivel de excelencia alcanzado con tanto esfuerzo comercial.', 
'Asegura este nivel de solidez mediante una política de dividendos prudente que siga alimentando tu base de capital propio en el próximo ejercicio. Felicidades por haber construido una empresa no solo rentable en sus ventas, sino estructuralmente sana y poderosa ante cualquier mirada externa del ecosistema empresarial y financiero nacional.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();
