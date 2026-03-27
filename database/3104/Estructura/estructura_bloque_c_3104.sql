-- SQL Dump: Módulo Estructura (Empresa 3104) - Bloque C (Auditoría Trimestral 2023-2025)
-- Lote 1: 8 registros (Q1 2023 completo + Q2 2023 inicio)
-- Estándar: +40 palabras por sección, Tono Gerencia-a-Gerencia
-- Workflow: EN-06 (AI-to-SQL Dump) con Sufijos de Unicidad Trimestral (IC-05)

-- =================================================================================
-- AÑO 2023 - TRIMESTRE 1 (Q1)
-- =================================================================================

-- 1. Cobertura de Activos Fijos (cobertura_fijos_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_1Q', 2023, 2023, '1Q', 'success', 
'Arrancaste el primer trimestre de 2023 con una base de capital propio que blinda totalmente tus activos fijos operativos. Esto significa que eres el dueño absoluto de tu infraestructura técnica y tecnológica en este inicio de año, dándote una independencia total para operar sin temor a reclamos de propiedad externos bancarios o de acreedores comerciales hoy.', 
'Sin embargo, esta cobertura absoluta también puede ser un síntoma de que estás operando con una infraestructura muy escueta y conservadora para las metas de crecimiento que te has trazado. Básicamente, tienes tus equipos pagados pero te falta músculo en activos intangibles que protejan tu futuro comercial ante una posible caída brusca de los ingresos en este ciclo.', 
'Asegura que tu patrimonio no solo cubra lo que ya tienes hoy en día, sino que sirva de plataforma para adquirir nuevas licencias de software especializado que hoy son el estándar de la industria consultora. Debes pasar de ser solo el dueño de tus equipos a ser un innovador que usa su capital para multiplicar su potencia operativa real neta anual.', 
'Bloque C - Auditoría Trimestral 1Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2. Estructura de la Deuda (estructura_deuda_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_1Q', 2023, 2023, '1Q', 'info', 
'Tienes una estructura de fondeo externa muy diversificada en este arranque de año, lo que evita que un solo acreedor tenga el control sobre tu flujo de caja quincenal. Has demostrado una gestión prudente de tus obligaciones comerciales en este primer trimestre, permitiéndote que MAS CONSULTA respire con una tranquilidad institucional que pocos competidores locales poseen hoy.', 
'Lo preocupante en este trimestre es que casi el cien por ciento de tus pasivos son de corto plazo, lo que te obliga a vivir al día con tus compromisos más urgentes en el banco. No tienes una estructura de deuda a largo plazo que te dé el respiro necesario para planificar inversiones estratégicas de gran calado comercial a tres meses vista.', 
'Busca convertir tus compromisos más asfixiantes en obligaciones de largo plazo de inmediato mediante una negociación firme con tus proveedores. Debes lograr que tu deuda trabaje para tu crecimiento estratégico y no que sea una carga que te quite perspectiva y energía gerencial al inicio de cada mes por falta de un flujo coordinado.', 
'Bloque C - Auditoría Trimestral 1Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 3. Multiplicador de Capital (multiplicador_capital_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_1Q', 2023, 2023, '1Q', 'success', 
'Tu nivel de apalancamiento total es bajísimo en este primer periodo, lo que indica que tu empresa es financieramente muy segura frente a cualquier shock externo inesperado del mercado. Básicamente, estás operando casi exclusivamente con tu capital propio, protegiendo tu patrimonio de las fluctuaciones de las tasas de interés y de la presión externa hoy.', 
'El riesgo es que un multiplicador tan bajo significa que no estás aprovechando la fuerza del dinero ajeno para crecer a una velocidad mayor en este trimestre fiscal. Básicamente, estás yendo a pie cuando podrías ir en un vehículo financiado que te lleve más lejos y más rápido en términos de captación de cuota de mercado en la región.', 
'Empieza a inyectar una dosis pequeña y controlada de capital externo estratégico para ver cómo responde tu facturación neta ante una mayor inversión administrativa. Debes perderle el miedo a la deuda inteligente, siempre y cuando ésta sea para elevar tu capacidad instalada y no para cubrir baches de una ineficiencia que no has auditado debidamente.', 
'Bloque C - Auditoría Trimestral 1Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 4. Ratio de Capitalización (capitalizacion_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_1Q', 2023, 2023, '1Q', 'success', 
'Tu ratio de capitalización muestra que no dependes de deudas de largo plazo para sostener tu estructura de fondeo corporativa en este inicio de 2023. Esta es una posición magistral de independencia absoluta, donde tu capital es el soberano total del balance, dándote una autoridad financiera envidiable ante tus propios socios e inversionistas estratégicos hoy.', 
'Ten cuidado porque esta independencia total también implica que tu crecimiento está limitado por tu propia capacidad de generar utilidades reales cada mes quincenal. No tienes una "espalda" financiera de largo aliento que te permita aguantar un trimestre difícil de sequía comercial, lo que te hace vulnerable a pesar de parecer muy fuerte internamente ahora día.', 
'Te sugiero que busques una capitalización más formal mediante la retención de tus utilidades actuales de MAS CONSULTA de inmediato. Debes construir una reserva legal poderosa que actúe como tu propio banco interno, permitiendo que tu firma se autofinancie sin necesidad de tocar tu bolsillo personal en los momentos de mayor tensión del ciclo fiscal.', 
'Bloque C - Auditoría Trimestral 1Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 5. Deuda a Activos Tangibles (deuda_tangibles_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_1Q', 2023, 2023, '1Q', 'warning', 
'Tus activos reales (lo que puedes tocar) representan una garantía suficiente para respaldar lo que le debes a tus acreedores comerciales en este Q1 de 2023. Tienes un "valor de rescate" decente en tus libros que te otorga credibilidad y te permite seguir operando sin el temor constante de un embargo por deudas administrativas menores hoy.', 
'El riesgo oculto es que tus activos tangibles se están depreciando más rápido de lo que estás logrando pagar tus deudas pendientes al sistema financiero externo. Si permites que este desajuste continúe, pronto tus deudas pesarán más que lo que tienes en propiedad física, convirtiéndote en una empresa que vale más en sus pasivos que en su patrimonio.', 
'Urge que renueves tu base de activos tecnológicos de forma definitiva para que la garantía de tu negocio siga siendo atractiva para tus proveedores estratégicos. Debes invertir en equipos que no solo sirvan para trabajar, sino que fortalezcan tu balance y te den una posición de negociación mucho más firme y digna ante cualquier auditoría externa.', 
'Bloque C - Auditoría Trimestral 1Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 6. Ratio de Propiedad / Autonomía (propiedad_autonomia_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_1Q', 2023, 2023, '1Q', 'success', 
'Eres dueño de más del setenta por ciento de todo lo que compone tu firma de consultoría estratégica en este primer trimestre de 2023. Tu nivel de autonomía es magistral para un negocio de este tamaño, asegurando que tú y solo tú decidas el rumbo de cada peso que entra y sale de la organización al final hoy día.', 
'Mucha precaución: ser tan autónomo también puede significar tener una mente muy cerrada a la inversión externa estratégica que pueda llegar a tu puerta en este periodo. La falta de "socios" financieros puede estar frenando tu capacidad de expansión nacional, manteniéndote en una escala pequeña donde te sientes cómodo pero no creces debidamente.', 
'Considera abrir un poco la llave de la propiedad compartida o del crédito estratégico para elevar tu perfil de empresa grande del sector consultoría nacional. Mantener una autonomía del cien por ciento es excelente para tu ego gerencial, pero a veces es mejor ser el dueño de una gran torta compartida altamente rentable hoy.', 
'Bloque C - Auditoría Trimestral 1Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 7. Relación Deuda / Patrimonio (deuda_patrimonio_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_1Q', 2023, 2023, '1Q', 'success', 
'Tu relación deuda-patrimonio arrancó el 2023 en un nivel óptimo que te saca de cualquier lista de riesgo financiero inminente ante los acreedores. Has demostrado que tu patrimonio no está siendo devorado por deudas externas innecesarias o por gastos excesivos que no tengan una justificación operativa clara en tu firma de servicios hoy día.', 
'Ten cuidado porque esta estabilidad se basa en un patrimonio que todavía es pequeño en términos absolutos corporativos frente a la competencia del sector. Cualquier deuda inesperada por pequeña que sea podría disparar este indicador hacia niveles de peligro si no mantienes una guardia eterna sobre tus gastos administrativos fijos e incrementales anuales.', 
'Debes seguir robusteciendo tu capital propio mediante la retención de cada peso de utilidad que logres facturar en este primer trimestre fiscal de MAS CONSULTA. No permitas que el alivio de tener deudas bajas te haga bajar el ritmo de ahorro corporativo. Necesitas un patrimonio más grande para que esta buena relación sea indestructible hoy.', 
'Bloque C - Auditoría Trimestral 1Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2023 - TRIMESTRE 2 (Q2)
-- =================================================================================

-- 8. Cobertura de Activos Fijos (cobertura_fijos_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_2Q', 2023, 2023, '2Q', 'success', 
'A mitad de 2023, tu patrimonio sigue cubriendo con total holgura la totalidad de tus activos fijos operativos y administrativos. Esta solidez patrimonial es tu mejor carta de presentación ante nuevos inversionistas o socios que busquen una empresa madura y con respaldo propio para ejecutar proyectos de gran escala neta hoy mismo día.', 
'El riesgo en este segundo trimestre es que esa cobertura tan alta te haga caer en una zona de confort tecnológico donde no inviertes en renovar tu valor. Al tener tus activos actuales ya pagados, podrías estar perdiendo la agilidad que da la inversión constante en herramientas de vanguardia, dejando que tu competencia te gane en velocidad operativa real.', 
'Implementa un plan de renovación táctica de tus licencias de software y hardware al cierre de este Q2 de forma definitiva e inmediata. No permitas que tu solidez se convierta en obsolescencia operativa; usa tu colchón patrimonial para mantener a MAS CONSULTA siempre en la cima de la eficiencia técnica del sector consultoría.', 
'Bloque C - Auditoría Trimestral 2Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 9. Estructura de la Deuda (estructura_deuda_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_2Q', 2023, 2023, '2Q', 'info', 
'Mantienes una estructura de fondeo externa muy diversificada en este cierre de semestre, lo que evita que un solo acreedor tenga el control sobre tu flujo de caja quincenal. Has demostrado una gestión prudente de tus obligaciones comerciales en este segundo trimestre, permitiéndote que MAS CONSULTA respire con una tranquilidad institucional que pocos competidores locales poseen hoy.', 
'Lo preocupante en este trimestre es que casi el cien por ciento de tus pasivos son de corto plazo, lo que te obliga a vivir al día con tus compromisos más urgentes en el banco. No tienes una estructura de deuda a largo plazo que te dé el respiro necesario para planificar inversiones estratégicas de gran calado comercial a tres meses vista.', 
'Busca convertir tus compromisos más asfixiantes en obligaciones de largo plazo de inmediato mediante una negociación firme con tus proveedores. Debes lograr que tu deuda trabaje para tu crecimiento estratégico y no que sea una carga que te quite perspectiva y energía gerencial al inicio de cada mes por falta de un flujo coordinado hoy.', 
'Bloque C - Auditoría Trimestral 2Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 10. Multiplicador de Capital (multiplicador_capital_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_2Q', 2023, 2023, '2Q', 'success', 
'Tu nivel de apalancamiento total es bajísimo en este segundo periodo, lo que indica que tu empresa es financieramente muy segura frente a cualquier shock externo inesperado del mercado. Básicamente, estás operando casi exclusivamente con tu capital propio, protegiendo tu patrimonio de las fluctuaciones de las tasas de interés y de la presión externa hoy.', 
'El riesgo es que un multiplicador tan bajo significa que no estás aprovechando la fuerza del dinero ajeno para crecer a una velocidad mayor en este semestre fiscal. Básicamente, estás yendo a pie cuando podrías ir en un vehículo financiado que te lleve más lejos y más rápido en términos de captación de cuota de mercado en la región.', 
'Empieza a inyectar una dosis pequeña y controlada de capital externo estratégico para ver cómo responde tu facturación neta ante una mayor inversión administrativa. Debes perderle el miedo a la deuda inteligente, siempre y cuando ésta sea para elevar tu capacidad instalada y no para cubrir baches de una ineficiencia que no has auditado debidamente.', 
'Bloque C - Auditoría Trimestral 2Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 11. Ratio de Capitalización (capitalizacion_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_2Q', 2023, 2023, '2Q', 'success', 
'Tu ratio de capitalización muestra que no dependes de deudas de largo plazo para sostener tu estructura de fondeo corporativa a mitad de 2023. Esta es una posición magistral de independencia absoluta, donde tu capital es el soberano total del balance, dándote una autoridad financiera envidiable ante tus propios socios e inversionistas estratégicos hoy.', 
'Ten cuidado porque esta independencia total también implica que tu crecimiento está limitado por tu propia capacidad de generar utilidades reales cada mes quincenal. No tienes una "espalda" financiera de largo aliento que te permita aguantar un trimestre difícil de sequía comercial, lo que te hace vulnerable a pesar de parecer muy fuerte internamente ahora día.', 
'Te sugiero que busques una capitalización más formal mediante la retención de tus utilidades actuales de MAS CONSULTA de inmediato. Debes construir una reserva legal poderosa que actúe como tu propio banco interno, permitiendo que tu firma se autofinancie sin necesidad de tocar tu bolsillo personal en los momentos de mayor tensión del ciclo fiscal hoy.', 
'Bloque C - Auditoría Trimestral 2Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 12. Deuda a Activos Tangibles (deuda_tangibles_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_2Q', 2023, 2023, '2Q', 'warning', 
'Tus activos reales (lo que puedes tocar) representan una garantía suficiente para respaldar lo que le debes a tus acreedores comerciales en este Q2 de 2023. Tienes un "valor de rescate" decente en tus libros que te otorga credibilidad y te permite seguir operando sin el temor constante de un embargo por deudas administrativas menores hoy.', 
'El riesgo oculto es que tus activos tangibles se están depreciando más rápido de lo que estás logrando pagar tus deudas pendientes al sistema financiero externo. Si permites que este desajuste continúe, pronto tus deudas pesarán más que lo que tienes en propiedad física, convirtiéndote en una empresa que vale más en sus pasivos que en su patrimonio.', 
'Urge que renueves tu base de activos tecnológicos de forma definitiva para que la garantía de tu negocio siga siendo atractiva para tus proveedores estratégicos. Debes invertir en equipos que no solo sirvan para trabajar, sino que fortalezcan tu balance y te den una posición de negociación mucho más firme y digna ante cualquier auditoría externa diaria hoy.', 
'Bloque C - Auditoría Trimestral 2Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 13. Ratio de Propiedad / Autonomía (propiedad_autonomia_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_2Q', 2023, 2023, '2Q', 'success', 
'Eres dueño de más del setenta por ciento de todo lo que compone tu firma de consultoría estratégica a mitad de 2023. Tu nivel de autonomía es magistral para un negocio de este tamaño, asegurando que tú y solo tú decidas el rumbo de cada peso que entra y sale de la organización al final hoy día.', 
'Mucha precaución: ser tan autónomo también puede significar tener una mente muy cerrada a la inversión externa estratégica que pueda llegar a tu puerta en este periodo Semestral. La falta de "socios" financieros puede estar frenando tu capacidad de expansión nacional, manteniéndote en una escala pequeña donde te sientes cómodo pero no creces debidamente hoy.', 
'Considera abrir un poco la llave de la propiedad compartida o del crédito estratégico para elevar tu perfil de empresa grande del sector consultoría nacional de inmediato. Mantener una autonomía del cien por ciento es excelente para tu ego gerencial, pero a veces es mejor ser el dueño de una gran torta compartida altamente rentable hoy.', 
'Bloque C - Auditoría Trimestral 2Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 14. Relación Deuda / Patrimonio (deuda_patrimonio_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_2Q', 2023, 2023, '2Q', 'success', 
'Tu relación deuda-patrimonio a mitad de 2023 se mantiene en un nivel óptimo que te saca de cualquier lista de riesgo financiero inminente ante los acreedores externos. Has demostrado que tu patrimonio no está siendo devorado por deudas innecesarias o por gastos excesivos que no tengan una justificación operativa clara en tu firma de servicios hoy día.', 
'Ten cuidado porque esta estabilidad se basa en un patrimonio que todavía es pequeño en términos absolutos corporativos frente a la competencia del sector regional. Cualquier deuda inesperada por pequeña que sea podría disparar este indicador hacia niveles de peligro si no mantienes una guardia eterna sobre tus gastos administrativos fijos neta anuales.', 
'Debes seguir robusteciendo tu capital propio mediante la retención de cada peso de utilidad que logres facturar en este segundo trimestre fiscal de MAS CONSULTA de inmediato. No permitas que el alivio de tener deudas bajas te haga bajar el ritmo de ahorro corporativo. Necesitas un patrimonio más grande para que esta buena relación sea indestructible hoy.', 
'Bloque C - Auditoría Trimestral 2Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2023 - TRIMESTRE 3 (Q3)
-- =================================================================================

-- 15. Cobertura de Activos Fijos (cobertura_fijos_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_3Q', 2023, 2023, '3Q', 'success', 
'En el tercer trimestre de 2023, tu patrimonio sigue actuando como un blindaje de hierro sobre tu infraestructura física institucional. Cuentas con un respaldo propio envidiable que garantiza que la consultora sea financieramente autónoma y dueña total de sus herramientas operativas para enfrentar el cierre de año con absoluta seguridad gerencial neta hoy.', 
'El riesgo es que ese exceso de protección patrimonial sobre tus activos fijos oculte una falta de inversión agresiva en la captación de nuevos clientes corporativos. No permitas que la seguridad de tener tus equipos pagados te reste hambre comercial; necesitas que tus activos operen a su máxima potencia para que el retorno sobre tu capital propio sea histórico hoy.', 
'Te recomiendo que utilices tu excelente posición de solvencia para negociar alianzas estratégicas que no comprometan tus activos, sino que aprovechen tu solidez institucional. Debes usar tu patrimonio como una plataforma de salto para cerrar este Q3 con un impulso comercial que garantice una rentabilidad neta anual récord para tu bolsillo personal directo.', 
'Bloque C - Auditoría Trimestral 3Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 16. Estructura de la Deuda (estructura_deuda_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_3Q', 2023, 2023, '3Q', 'info', 
'Tu gestión de pasivos sigue siendo prudente y controlada en este inicio del segundo semestre, evitando que el costo de la deuda devore tus utilidades operativas devengadas. Tienes un perfil crediticio sano y atomizado que te permite navegar los retos del mercado consultor con una flexibilidad que tus competidores más endeudados desearían tener hoy mismo.', 
'La alerta es que el cien por ciento de tu fondeo externo sigue anclado al corto plazo, lo que te obliga a una gimnasia financiera agotadora para cubrir los vencimientos cada fin de trimestre. No estás aprovechando las ventajas del crédito estruturado de largo aliento para financiar proyectos de innovación técnica que hoy demanda el mercado internacional.', 
'Inicia las gestiones para perfilar tu deuda hacia plazos más largos que coincidan con la maduración de tus contratos de consultoría más grandes. Debes lograr que tu flujo de caja mensual respire más tranquilo y que tus obligaciones trabajen al ritmo de tu crecimiento y no en contra de tu liquidez quincenal operativa neta hoy día.', 
'Bloque C - Auditoría Trimestral 3Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 17. Multiplicador de Capital (multiplicador_capital_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_3Q', 2023, 2023, '3Q', 'success', 
'Tu apalancamiento total se mantiene en niveles mínimos de seguridad en este tercer trimestre, lo que blinda tu capital propio ante cualquier turbulencia económica regional. Operas con una red de seguridad patrimonial muy amplia, garantizando que el control de MAS CONSULTA permanezca firmemente en tus manos y en las de tus socios fundadores hoy.', 
'El riesgo de este conservadurismo extremo en el fondeo es que podrías estar dejando pasar oportunidades de oro para adquirir carteras de clientes o talento senior que requieran una inyección de capital rápida. Estás limitando voluntariamente tu escala de negocio a lo que tu propio ahorro permite, lo que ralentiza tu posicionamiento frente a competidores ágiles.', 
'Usa tu fortaleza de balance para negociar una línea de crédito rotativo que solo utilices para capturar grandes contratos que demanden una ejecución técnica inmediata. Debes aprender a convivir con un apalancamiento inteligente que multiplique tus resultados finales sin poner en riesgo la solvencia que con tanto rigor has construido este año.', 
'Bloque C - Auditoría Trimestral 3Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 18. Ratio de Capitalización (capitalizacion_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_3Q', 2023, 2023, '3Q', 'success', 
'Al cierre de este Q3, tu ratio de capitalización confirma que tu empresa no tiene deudas pesadas de larga duración que comprometan tu futuro financiero. Esta pureza de capital te otorga una libertad estratégica absoluta para pivotar tu modelo de negocio o invertir en nuevas áreas de consultoría sin tener que pedir permiso a ninguna junta de acreedores hoy.', 
'La alerta es la falta de una visión financiera "de largo aliento" que acompañe tus ambiciones comerciales de fin de año. Al no tener un fondeo estructurado a más de doce meses, toda tu operación pende de un hilo de recaudo mensual constante, lo que genera un estrés innecesario en tu tesorería administrativa y operativa quincenal neta.', 
'Es momento de que proyectes una capitalización más formal inyectando parte de los excedentes de este trimestre a una reserva de inversión institucional. Debes buscar que el negocio cree su propio fondo de maniobra que le permita crecer orgánicamente y con solidez, reduciendo tu dependencia de los flujos de caja inmediatos para cada nuevo paso.', 
'Bloque C - Auditoría Trimestral 3Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 19. Deuda a Activos Tangibles (deuda_tangibles_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_3Q', 2023, 2023, '3Q', 'warning', 
'Tus activos físicos actuales siguen siendo una garantía real válida frente a tus obligaciones de corto plazo en este cierre de tercer trimestre. Posees un respaldo tangible que te da presencia institucional y seguridad jurídica ante tus aliados comerciales estratégicos, asegurando que la empresa tenga un valor de rescate sólido y verificable hoy mismo.', 
'El riesgo es que la falta de renovación de estos activos tangibles está haciendo que pierdan valor contable frente a una deuda que no desciende al mismo ritmo. Si no inyectas tecnología nueva al balance de MAS CONSULTA, pronto tus deudas pesarán más que tu propiedad física, debilitando tu perfil de riesgo ante el sistema financiero nacional neta.', 
'Invierte en activos que sean productivos y que no solo sirvan de garantía, sino que eleven tu calidad de entrega técnica en este trimestre final. Debes asegurar que cada peso invertido en infraestructura fortalezca genuinamente tu posición de propiedad frente a los pasivos acumulados que han crecido ligeramente durante estos últimos tres meses hoy.', 
'Bloque C - Auditoría Trimestral 3Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 20. Ratio de Propiedad / Autonomía (propiedad_autonomia_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_3Q', 2023, 2023, '3Q', 'success', 
'Mantienes un nivel de autonomía financiera extraordinario en este tercer trimestre, siendo tú el dueño de casi el setenta y cinco por ciento de tu firma. Esta soberanía sobre el capital te permite tomar decisiones audaces y mover piezas estratégicas sin depender de aprobaciones externas que ralenticen tu agilidad comercial en el cierre de año.', 
'Mucha precaución: ser tan "independiente" puede estar cegándote ante la necesidad de traer a bordo aliados financieros que inyecten velocidad a tu escalabilidad. A veces, compartir una pequeña porción del éxito neta actual permite que la base de capital propio crezca más rápido mediante el acceso a mercados que hoy te resultan lejanos por presupuesto.', 
'Evalúa si es conveniente para MAS CONSULTA ceder una franja mínima de autonomía a cambio de un apalancamiento que te permita dominar nuevos nichos de servicios. Ser el dueño total es magnífico, pero ser el dueño mayoritario de una empresa multinacional es el verdadero objetivo que deberías perseguir tras consolidar esta solvencia hoy.', 
'Bloque C - Auditoría Trimestral 3Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 21. Relación Deuda / Patrimonio (deuda_patrimonio_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_3Q', 2023, 2023, '3Q', 'success', 
'Tu relación deuda-patrimonio en el Q3 se mantiene como una de las más sanas del mercado de consultoría, dándote un respiro de seguridad invaluable. Has demostrado que sabes gestionar tu crecimiento sin comprometer tu tranquilidad personal, manteniendo un balance equilibrado donde el capital propio es el que manda y el que protege hoy.', 
'Ten cuidado con el aumento marginal de tus deudas operativas en este trimestre que podrían empezar a erosionar este indicador si no controlas el gasto administrativo. Si permites que la burocracia interna crezca más que tus utilidades, pronto verás cómo tu patrimonio pierde peso raletivamente frente a tus obligaciones con terceros en el banco.', 
'Debes seguir robusteciendo tu capital propio mediante la retención estricta de cada excedente de caja que logres facturar en este trimestre. No permitas que el alivio de tener deudas bajas te haga bajar el ritmo de ahorro institucional. Necesitas cerrar el año con un patrimonio récord para iniciar el 2024 con una solvencia indestructible hoy.', 
'Bloque C - Auditoría Trimestral 3Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2023 - TRIMESTRE 4 (Q4)
-- =================================================================================

-- 22. Cobertura de Activos Fijos (cobertura_fijos_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_4Q', 2023, 2023, '4Q', 'success', 
'Cerraste el 2023 con una cobertura de activos fijos impecable, demostrando que tu patrimonio neto ha crecido lo suficiente para blindar tu infraestructura operativa. Esta solidez institucional es tu mejor carta de triunfo ante socios y bancos, garantizando que entres al próximo año con una base de propiedad totalmente libre y soberana hoy.', 
'El único riesgo al finalizar este cuarto trimestre es que esa cobertura absoluta oculte una falta de reinversión en activos que verdaderamente te den escala neta. Al tener tus equipos pagados, podrías estar cayendo en una obsolescencia estratégica sin darte cuenta, dejando que tu infraestructura se quede atrás frente a la agilidad digital hoy.', 
'Planea una inversión agresiva en activos productivos de inmediato para iniciar el próximo ciclo con una potencia operativa renovada y competitiva. Debes usar tu excedente patrimonial para adquirir herramientas que te permitan cobrar tarifas de consultoría premium, validando así la fuerza de tu balance ante los clientes más exigentes del país.', 
'Bloque C - Auditoría Trimestral 4Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 23. Estructura de la Deuda (estructura_deuda_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_4Q', 2023, 2023, '4Q', 'info', 
'Tu cierre de año en cuanto a pasivos es ordenado y atomizado, lo que evita que MAS CONSULTA sufra de dependencias peligrosas con acreedores únicos en este ciclo. Tienes una gestión de cobranzas que ha permitido mantener tus compromisos comerciales bajo control, asegurando una reputación sólida para negociar nuevas líneas de crédito estratégicas hoy.', 
'La alerta roja al cierre del Q4 es que sigues financiándote exclusivamente con pasivos de corto plazo, lo que asfixia tu capacidad de proyectar el crecimiento para el 2024. Estás operando al límite de tu recaudo diario, lo que te quita la paz mental necesaria para dedicarte a lo que mejor sabes hacer: vender consultoría de gran impacto neta anual.', 
'Urge que reestructures tu pasivo circulante hacia obligaciones de largo aliento que coincidan con la ejecución de tus proyectos plurianuales de innovación. Debes lograr que tu deuda sea un aliado estratégico y no una carga operativa diaria que drene tu energía y tu flujo de caja en el arranque del próximo ejercicio fiscal hoy día.', 
'Bloque C - Auditoría Trimestral 4Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 24. Multiplicador de Capital (multiplicador_capital_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_4Q', 2023, 2023, '4Q', 'success', 
'Finalizas el año con un nivel de apalancamiento mínimo que garantiza tu independencia como dueño absoluto del destino de tu firma de consultoría estratégica hoy. Has protegido tu patrimonio personal de forma magistral, demostrando que tu modelo de negocio es solvente y capaz de autofinanciarse sin necesidad de apoyarse en deudas externas pesadas.', 
'Sin embargo, un multiplicador tan bajo al cierre del año indica que has sido quizás demasiado conservador con tus oportunidades de expansión regional reciente. Al no usar deuda estratégica, has tenido que sacrificar velocidad de crecimiento por seguridad institucional, lo que podría haberte costado algunos contratos grandes frente a competidores agresivos.', 
'Para el próximo año, te recomiendo que incorpores una dosis controlada de apalancamiento inteligente para apalancar tus proyectos de mayor calado técnico comercial. Usa tu excelente solvencia para negociar tasas de interés preferenciales que reduzcan tu costo de capital y multipliquen tu rentabilidad neta final acumulada para todos tus socios.', 
'Bloque C - Auditoría Trimestral 4Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 25. Ratio de Capitalización (capitalizacion_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_4Q', 2023, 2023, '4Q', 'success', 
'Tu ratio de capitalización al cierre de diciembre de 2023 es un monumento a la autonomía financiera institucional de MAS CONSULTA. No tienes deudas de largo plazo que asfixien tu balance, lo que te permite cerrar el ciclo con la tranquilidad de ser el dueño total de cada peso neta que has ganado durante este ejercicio fiscal hoy.', 
'Ten cuidado porque cerrar el año sin un fondeo estructurado a futuro puede dejarte vulnerable ante los grandes proyectos que suelen activarse en el primer trimestre del próximo año. Si no tienes una línea de financiamiento lista, podrías perder agilidad comercial frente a empresas que sí cuentan con recursos externos pre-aprobados para crecer rápido.', 
'Es momento de que apertures una línea de crédito de fomento para grandes consultoras que te permita planificar el 2024 con una ambición mucho más agresiva y ganadora. No permitas que tu capital propio haga todo el trabajo pesado; usa tu solvencia para atraer capital barato que potencie tu escala y tu presencia en el mercado nacional hoy día.', 
'Bloque C - Auditoría Trimestral 4Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 26. Deuda a Activos Tangibles (deuda_tangibles_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_4Q', 2023, 2023, '4Q', 'warning', 
'Finalizas el ciclo con activos físicos que respaldan totalmente tus obligaciones con terceros, dándote un margen de seguridad jurídica y comercial muy decente hoy. Eres una empresa con "pies de plomo" que tiene propiedad real sobre sus herramientas de trabajo, lo que te otorga credibilidad inmediata ante cualquier proceso de debida diligencia de socios.', 
'El riesgo es que tus activos tangibles están envejeciendo mientras tus deudas de corto plazo siguen siendo una constante en tu flujo de caja semanal administrativo. Si no renuevas tu infraestructura pronto, tu balance empezará a llenarse de "activos fantasmas" que no tienen valor real de mercado pero que siguen pesando en tus libros contables anuales.', 
'Destina un porcentaje de las utilidades de este cierre de año a la compra de activos tecnológicos de alta rotación para MAS CONSULTA de inmediato. Debes asegurar que tu propiedad física sea moderna y productiva, garantizando que tu respaldo patrimonial sea real y no solo un número frío en un estado financiero antiguo hoy.', 
'Bloque C - Auditoría Trimestral 4Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 27. Ratio de Propiedad / Autonomía (propiedad_autonomia_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_4Q', 2023, 2023, '4Q', 'success', 
'Has terminado el 2023 siendo el dueño indiscutible de casi las tres cuartas partes de tu firma consultora estratégica en el país. Este nivel de autonomía financiera te da un poder de negociación extraordinario ante cualquier amenaza externa o frente a posibles socios que quieran sumarse a tu visión ganadora en el próximo ejercicio fiscal anual.', 
'Mucha precaución: esta autonomía total puede derivar en una complacencia gerencial que te impida buscar mejores eficiencias externas mediante el apalancamiento inteligente hoy. A veces, ser el dueño de todo es ser el esclavo de tu propio capital limitado; no permitas que tu independencia sea el techo que frene el crecimiento exponencial de MAS CONSULTA.', 
'Considera diluir marginalmente esta autonomía en el 2024 para captar recursos que te permitan jugar en las grandes ligas de la consultoría internacional de inmediato. Ser un dueño potente es bueno, pero ser el líder de un consorcio financiado y altamente rentable es lo que verdaderamente transformará tu futuro financiero personal hoy día.', 
'Bloque C - Auditoría Trimestral 4Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 28. Relación Deuda / Patrimonio (deuda_patrimonio_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_4Q', 2023, 2023, '4Q', 'success', 
'Finalizas el año con una relación deuda-patrimonio que es la envidia de cualquier tesorero del sector de servicios profesionales regional hoy. Has logrado que tu patrimonio sea el pilar que sostiene toda la operación, dándote una solidez de roca para enfrentar cualquier incertidumbre económica que traiga el inicio del próximo año fiscal neta neta.', 
'Vigila que esta fuerza patrimonial no se vea afectada por una repartición de dividendos demasiado agresiva en este cierre de diciembre de 2023. Si descapitalizas la empresa ahora por un impulso personal de retiro de caja, podrías entrar al 2024 con una fragilidad estructural que te quite poder de reacción ante nuevos contratos grandes e inmediatos.', 
'Te sugiero que mantengas la mayoría de las utilidades dentro del balance para iniciar el próximo ciclo con un músculo patrimonial histórico y ganador hoy. Tu empresa ha demostrado ser una máquina de generar solvencia; no la debilites ahora que está en su mejor momento estructural y de reputación financiera ante el mercado colombiano.', 
'Bloque C - Auditoría Trimestral 4Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2024 - TRIMESTRE 1 (Q1) - INICIO DEL CICLO DE ESTRÉS
-- =================================================================================

-- 29. Cobertura de Activos Fijos (cobertura_fijos_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_1Q', 2024, 2024, '1Q', 'warning', 
'A pesar de que el entorno económico se ha vuelto más denso en este inicio de 2024, tu patrimonio todavía alcanza a cubrir tu infraestructura operativa básica. Es una señal de resistencia gerencial el que MAS CONSULTA siga operando con sus propios equipos sin haber tenido que rematarlos ante la falta de flujo de caja reciente hoy.', 
'La alerta es clara: este indicador está descendiendo peligrosamente frente al cierre triunfal del año pasado en este primer periodo Semestral. Tu patrimonio se está erosionando debido a gastos fijos que no han bajado al ritmo de tu facturación, dejando a tus activos fijos cada vez más desprotegidos ante una posible intervención de acreedores externos.', 
'Detén de inmediato cualquier gasto operativo que no sea estrictamente necesario para la entrega técnica de tus consultorías actuales hoy día. Necesitas priorizar el fortalecimiento de tu capital propio para que este indicador no caiga por debajo del nivel de seguridad crítica, protegiendo así tu propiedad sobre los equipos de la oficina.', 
'Bloque C - Auditoría Trimestral 1Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 30. Estructura de la Deuda (estructura_deuda_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_1Q', 2024, 2024, '1Q', 'danger', 
'Afortunadamente tienes abiertas las ventanas de comunicación con tus proveedores en este arranque de año tan estresante para tu tesorería administrativa. Tu reputación de pagador serio es lo único que hoy te permite renegociar plazos sin que te corten el suministro de servicios esenciales para seguir facturando tus consultorías técnicas especiales hoy.', 
'Lo crítico en este trimestre es que tu estructura de deuda se ha vuelto cien por ciento de "supervivencia", con vencimientos diarios que te roban el sueño. Estás atrapado en un ciclo de deuda de corto plazo que no te permite ver más allá de la próxima semana, convirtiéndote en un bombero de incendios financieros en lugar de un gerente estratégico.', 
'Diseña hoy mismo un plan de desahogo de pasivos mediante la consolidación de tus deudas más pequeñas en un solo compromiso a doce meses de plazo. Necesitas limpiar tu horizonte de pagos inmediatos para que tu energía gerencial vuelva a enfocarse en vender y no en ver cómo cubrir el próximo cheque del banco de MAS CONSULTA de inmediato.', 
'Bloque C - Auditoría Trimestral 1Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 31. Multiplicador de Capital (multiplicador_capital_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_1Q', 2024, 2024, '1Q', 'danger', 
'Todavía conservas la propiedad mayoritaria de tus acciones en MAS CONSULTA, lo que indica que no has tenido que entregar el control del negocio a terceros externos. A pesar de que el apalancamiento subió bruscamente en este Q1, el poder de decisión sigue estando en tu escritorio, permitiéndote pilotar esta crisis con total autonomía institucional hoy.', 
'Tu multiplicador de capital se ha disparado a niveles de alerta roja, lo que significa que estás sosteniendo la empresa casi exclusivamente con deudas ajenas. Estás operando con un nivel de riesgo altísimo, donde cualquier retraso en un pago de tus clientes podría desplomar tu castillo de naipes financiero de forma irremediable y definitiva hoy mismo.', 
'Frena cualquier plan de inversión o gasto de capital que no tenga un retorno de cash-flow asegurado en menos de treinta días naturales ahora día. Debes enfocarte en reducir tu tamaño operativo para que tu patrimonio vuelva a ser el motor principal de la empresa, evitando que la deuda termine siendo la verdadera dueña de tus esfuerzos gerenciales.', 
'Bloque C - Auditoría Trimestral 1Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 32. Ratio de Capitalización (capitalizacion_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_1Q', 2024, 2024, '1Q', 'warning', 
'Lograste mantener tu ratio de capitalización estable a pesar del vendaval financiero que golpeó a MAS CONSULTA en este primer trimestre de 2024. Esta estabilidad demuestra que tienes un núcleo de capital propio muy resistente que no se ha dejado amilanar por la falta de fondeo de largo plazo externo del sistema financiero bancario hoy.', 
'Lo preocupante es que no has podido construir ni una sola reserva institucional nueva durante estos tres meses, dejando a la empresa desnuda ante cualquier contingencia mayor. Estás financiando la consultora únicamente con tus ahorros pasados y con el crédito comercial del día a día, lo cual es la forma más peligrosa e insegura de operar hoy.', 
'Enfócate en recuperar tu margen operativo para inyectar cada peso de utilidad real a tu base patrimonial de forma inmediata en este Q1. Debes reconstruir tu escudo de capital de largo plazo antes de que la deuda de corto plazo termine por asfixiar tu capacidad de maniobra corporativa ante los acreedores más agresivos del mercado regional.', 
'Bloque C - Auditoría Trimestral 1Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 33. Deuda a Activos Tangibles (deuda_tangibles_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_1Q', 2024, 2024, '1Q', 'danger', 
'A pesar de la crisis, tus activos físicos siguen presentes en el balance, dándote un respaldo mínimo de credibilidad ante cualquier proceso de revisión bancaria en este trimestre. Posees una base tangible que, aunque esté estresada por las deudas acumuladas, sigue siendo de tu propiedad y te permite seguir operando tu consultora hoy día.', 
'El riesgo es extremo en este Q1: tus deudas corporativas han superado con creces el valor de mercado de tus activos físicos este trimestre. Básicamente, si tuvieras que liquidar la empresa mañana, tus activos tangibles no alcanzarían para pagar ni la mitad de lo que debes, quedando en una situación de insolvencia técnica neta anual.', 
'Urge que realices una desinversión de activos ociosos y uses ese dinero para liquidar tus deudas más vencidas de inmediato. Debes volver a equilibrar la balanza entre lo que posees y lo que debes; el objetivo es que tus activos tangibles vuelvan a ser un escudo protector y nunca una garantía insuficiente ante el mercado colombiano hoy.', 
'Bloque C - Auditoría Trimestral 1Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 34. Ratio de Propiedad / Autonomía (propiedad_autonomia_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_1Q', 2024, 2024, '1Q', 'warning', 
'Mantienes el cincuenta por ciento de la propiedad neta de tus activos en este trimestre de crisis, lo cual es un logro de resistencia nada despreciable hoy. Todavía tienes el voto decisivo en tu propio balance, permitiéndote que MAS CONSULTA siga operando bajo tu visión y no bajo las exigencias unilaterales de acreedores externos en el país.', 
'Tu autonomía financiera se ha degradado peligrosamente frente al cierre triunfal del año pasado en este primer ciclo de 2024. Has entregado gran parte de tu patrimonio a deudas de corto plazo para sostener la operación diaria, lo que te quita poder de negociación ante el mercado. Estás perdiendo terreno como dueño real del negocio hoy.', 
'Para el próximo trimestre, tu prioridad absoluta debe ser recuperar tu soberanía financiera e institucional de inmediato. Debes inyectar utilidades retenidas o nuevas para subir este ratio nuevamente por encima del sesenta por ciento. Ser el dueño de tu negocio significa tener el control total de los fondos, y hoy estás compartiendo mucho poder.', 
'Bloque C - Auditoría Trimestral 1Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 35. Relación Deuda / Patrimonio (deuda_patrimonio_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_1Q', 2024, 2024, '1Q', 'danger', 
'A pesar de que el ratio se ha deteriorado bruscamente este trimestre, la consultora conserva la capacidad para seguir operando sin haber quebrado patrimonialmente hoy. El hecho de terminar este Q1 con un capital neto positivo es el único cable a tierra que tienes para planificar la reestructuración masiva que exige el mercado hoy día.', 
'Tu nivel de deuda frente a tu patrimonio ha sobrepasado el límite de seguridad aconsejable para una empresa de servicios profesionales en este periodo. Estas "apoyado" demasiado en el capital de otros, lo cual es una señal de extrema fragilidad operativa y financiera. Tu patrimonio es hoy un rehén de tus obligaciones comerciales acumuladas neta.', 
'Haz un compromiso gerencial de no tomar ni un peso más de deuda hasta que logres bajar este ratio a un nivel manejable de inmediato. Enfócate cien por ciento en el recaudo de tus facturas actuales para inyectar liquidez y fortalecer tu base patrimonial institucional. Necesitas que tu empresa vuelva a ser tuya en un ochenta por ciento mínimo hoy.', 
'Bloque C - Auditoría Trimestral 1Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2024 - TRIMESTRE 2 (Q2)
-- =================================================================================

-- 36. Cobertura de Activos Fijos (cobertura_fijos_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_2Q', 2024, 2024, '2Q', 'warning', 
'A mitad de 2024, lograste estabilizar la caída de tu patrimonio, asegurando que tus activos fijos sigan respaldados por capital propio en esta etapa intermedia. Es un respiro necesario para tu gestión, permitiéndote mantener la propiedad sobre tus herramientas de trabajo mientras navegas las tormentas financieras más fuertes del ciclo neta mensual hoy.', 
'Lo preocupante es que este indicador sigue estando niveles muy bajos en comparación con tu histórico institucional previo. Básicamente, estás operando al límite de tu solvencia patrimonial, donde cualquier gasto extraordinario podría obligarte a empeñar activos operativos para cubrir baches de tesorería administrativa inmediatos en el banco hoy mismo.', 
'Te recomiendo que implementes un plan de austeridad radical en tus gastos fijos de inmediato para liberar recursos que fortalezcan tu patrimonio neto. Necesitas que tu base de capital vuelva a ser un escudo infranqueable que proteja tus activos, dándote la tranquilidad necesaria para enfocarte en vender consultoría de alta gama neta anual hoy.', 
'Bloque C - Auditoría Trimestral 2Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 37. Estructura de la Deuda (estructura_deuda_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_2Q', 2024, 2024, '2Q', 'danger', 
'Resalta tu habilidad gerencial para mantener abiertas las líneas de crédito comercial a pesar del estrés financiero extremo que vive la consultora en este semestre. Tu palabra ante el mercado sigue teniendo valor, lo que constituye el cimiento más importante sobre el cual podrás reestructurar tu deuda una vez que la facturación vuelva a fluir neta.', 
'Lo crítico es que tu estructura de deuda se ha vuelto puramente "de supervivencia", con vencimientos que asfixian tu flujo de caja semanal en este Q2. Estás encadenado a deudas de cortísimo plazo que no dejan margen para la planificación estratégica, convirtiendo tu día a día en una constante angustia por cubrir los pagos bancarios hoy.', 
'Debes buscar hoy mismo una consolidación de pasivos que te dé oxígeno a seis meses o más de plazo definitivo de forma inmediata. No sigas parchando los huecos de caja con deudas nuevas y caras; necesitas una estructura de fondeo más inteligente que acompañe tu recuperación operativa y no que la asfixie con cobros cada quincena hoy día.', 
'Bloque C - Auditoría Trimestral 2Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 38. Multiplicador de Capital (multiplicador_capital_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_2Q', 2024, 2024, '2Q', 'danger', 
'A pesar de que el multiplicador está en niveles de riesgo, todavía conservas el timón estratégico de MAS CONSULTA en tus manos hoy mismo. Tienes la estructura mínima viable para dar la pelea y revertir esta situación si logras alinear nuevamente tu capital con el tamaño real de tus ventas neta acumuladas al cierre de este semestre fiscal.', 
'Tu apalancamiento ha llegado a un nivel de tensión extrema en este trimestre, donde por cada peso tuyo, ya debes demasiado al mercado externo bancario. Estás operando una empresa que pesa mucho más que lo que tú mismo has puesto en ella, lo que eleva tu perfil de riesgo ante cualquier auditoría financiera o evaluación de crédito hoy día.', 
'Frena cualquier nueva inversión o gasto superfluo administrativo que no sea puramente generadora de caja inmediata al cierre de este Q2. Debes adelgazar tu balance rápidamente y enfocarte en recuperar tu autonomía financiera original; no permitas que el tamaño de tu deuda nuble tu juicio gerencial y tu visión estratégica de largo plazo.', 
'Bloque C - Auditoría Trimestral 2Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 39. Ratio de Capitalización (capitalizacion_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_2Q', 2024, 2024, '2Q', 'warning', 
'Lograste sostener tu ratio de capitalización balanceado a mitad de año, lo que demuestra una disciplina férrea para no sobre-endeudarte a largo plazo en tiempos difíciles. Esta es una señal de madurez financiera que te permitirá retomar el crecimiento sólido una vez que el mercado de consultoría técnica recupere su dinamismo habitual hoy.', 
'Lo preocupante es que toda tu operación sigue dependiendo de fondeo de cortísimo plazo, lo que inyecta una volatilidad innecesaria a tu balance semestral actual. No has podido estructurar un crédito de fomento que te dé la estabilidad necesaria para contratar talento senior o invertir en software de última generación para tus proyectos anuales.', 
'Te sugiero que busques una línea de crédito de capital de trabajo a mediano plazo para que el negocio deje de vivir al día financieramente hoy mismo. Debes estructurar tu pasivo de tal manera que MAS CONSULTA tenga un horizonte de pagos claro y manejable, permitiéndote dormir mejor y enfocarte en lo que realmente genera riqueza neta.', 
'Bloque C - Auditoría Trimestral 2Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 40. Deuda a Activos Tangibles (deuda_tangibles_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_2Q', 2024, 2024, '2Q', 'danger', 
'Tus activos reales siguen siendo una carta de garantía válida ante tus proveedores, lo que ha evitado el cierre de líneas de crédito críticas en este cierre de semestre. Posees propiedad física sobre tus equipos y oficinas, dándote un asidero real de solvencia para negociar de pie frente a tus acreedores comerciales más urgentes hoy.', 
'El riesgo es crítico: tus deudas corporativas han superado con creces el valor de mercado de tus activos físicos en este segundo trimestre fiscal del año. Si no reviertes esta tendencia pronto, MAS CONSULTA se convertirá en una empresa hueca cuyo único valor será su marca, pero sin un respaldo tangible que proteja a los socios fundadores.', 
'Urge que apliques una política de pago acelerado de tus deudas con mayor costo financiero de inmediato usando cada peso de cobranza efectiva ahora día. Debes equilibrar la balanza patrimonial hoy mismo para que tus activos vuelvan a ser superiores a lo que debes, recuperando así la dignidad y la fuerza de tu balance corporativo anual.', 
'Bloque C - Auditoría Trimestral 2Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 41. Ratio de Propiedad / Autonomía (propiedad_autonomia_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_2Q', 2024, 2024, '2Q', 'warning', 
'A pesar de la alta presión crediticia, mantienes el cincuenta por ciento de la propiedad neta de tu firma consultora estratégica a mitad de 2024. Este es un hito de resistencia gerencial, ya que has evitado que la crisis te quite el control mayoritario del negocio, dándote todavía el poder de decidir sobre el futuro de MAS CONSULTA hoy día.', 
'Lo preocupante es que tu autonomía financiera está al filo de la navaja en este trimestre semestral. Has cedido demasiado terreno ante deudas de corto plazo para salvar el día, lo que te quita margen de maniobra nacional para negociar contratos grandes que hoy exigen una solidez patrimonial impecable y verificable por terceros externos.', 
'Céntrate en fortalecer tu base de capital propio mediante la capitalización de cualquier excedente operativo que logres generar en este Q2 de inmediato. Debes volver a subir este indicador por encima del setenta por ciento para que tu empresa sea verdaderamente tuya otra vez, eliminando la sombra de los acreedores sobre tus decisiones.', 
'Bloque C - Auditoría Trimestral 2Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 42. Relación Deuda / Patrimonio (deuda_patrimonio_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_2Q', 2024, 2024, '2Q', 'danger', 
'La consultora conserva su capacidad para seguir operando sin haber quebrado patrimonialmente a pesar de la fuerte relación deuda-patrimonio de este semestre. El hecho de que tu capital neto siga siendo positivo a mitad de 2024 es la única base sólida que tienes hoy para planificar el contraataque comercial que necesitas para salvar el año fiscal.', 
'Tu nivel de deuda frente a tu patrimonio ha sobrepasado los límites racionales de seguridad para una empresa de servicios técnicos en este reporte trimestral. Estás operando con un "motor prestado" que consume gran parte de tu energía gerencial mensual, dejándote muy poco espacio para la innovación y la expansión nacional neta inmediata.', 
'Haz un compromiso gerencial de no incrementar tus pasivos financieros bajo ninguna circunstancia en este cierre de Q2 de forma definitiva hoy mismo. Enfócate exclusivamente en el recaudo de cartera vencida para inyectar liquidez y sanear tu balance desde adentro, recuperando la salud estructural que MAS CONSULTA requiere para competir hoy.', 
'Bloque C - Auditoría Trimestral 2Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2024 - TRIMESTRE 3 (Q3) - ESTABILIZACIÓN TÁCTICA
-- =================================================================================

-- 43. Cobertura de Activos Fijos (cobertura_fijos_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_3Q', 2024, 2024, '3Q', 'warning', 
'En este tercer trimestre de 2024, lograste frenar el deterioro de tu cobertura patrimonial sobre los activos fijos operativos. Es una señal de que el plan de austeridad está empezando a dar frutos, permitiéndote conservar la propiedad de tus herramientas técnicas fundamentales mientras el mercado empieza a dar señales de recuperación hoy.', 
'A pesar de la pausa en la caída, el indicador sigue en niveles de "alerta amarilla" en este Q3, lejos de la solidez que tenías el año pasado. Tu patrimonio sigue siendo frágil ante cualquier nuevo imprevisto financiero, lo que te obliga a mantener un monitoreo extremo sobre cada peso que sale de la caja administrativa de MAS CONSULTA.', 
'No bajes la guardia y sigue priorizando el fortalecimiento de tu capital propio mediante la retención de utilidades de este trimestre de inmediato. Necesitas que tu activo fijo vuelva a estar blindado por un patrimonio robusto antes de que acabe el año, asegurando que el 2025 inicie con una base de propiedad indestructible hoy día neta.', 
'Bloque C - Auditoría Trimestral 3Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 44. Estructura de la Deuda (estructura_deuda_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_3Q', 2024, 2024, '3Q', 'danger', 
'Has logrado que tus deudas comerciales no se disparen más allá de lo manejable en este tercer trimestre, manteniendo la operatividad de la firma. Tu gestión de relaciones con proveedores ha sido tu salvavidas en este ciclo, permitiéndote seguir entregando consultorías técnicas de calidad a pesar de la estrechez de fondeo externa hoy mismo.', 
'Lo preocupante es que sigues atrapado en la "trampa del corto plazo" en este cierre de Q3, donde cada peso que entra ya tiene dueño en el banco. No has podido todavía negociar una salida estructural que te dé un respiro de más de noventa días, lo que asfixia tu capacidad de respuesta ante nuevas licitaciones grandes del sector nacional.', 
'Aprovecha la incipiente recuperación de tu flujo de caja para negociar un crédito de restructuración integral de pasivos de inmediato. Debes limpiar tus cuentas por pagar más urgentes y convertirlas en una sola obligación manejable que te devuelva la paz mental y la visión estratégica para cerrar este 2024 con dignidad financiera hoy.', 
'Bloque C - Auditoría Trimestral 3Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 45. Multiplicador de Capital (multiplicador_capital_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_3Q', 2024, 2024, '3Q', 'danger', 
'A pesar de que el multiplicador sigue alto, el ritmo de crecimiento de la deuda se ha ralentizado notablemente en este tercer trimestre fiscal. Todavía eres el capitán de tu propio destino patrimonial, conservando el control de las decisiones críticas de MAS CONSULTA mientras esperas que la marea de la crisis termine de bajar por completo hoy.', 
'Tu apalancamiento sigue estando en la zona de peligro sísmico financiero en este trimestre, lo que te quita mérito ante posibles inversionistas o socios de calidad. Estás operando con un capital propio que es apenas una sombra de tus obligaciones totales, lo que te hace extremadamente vulnerable a cualquier cambio brusco en el mercado consultor.', 
'Frena en seco cualquier gasto que no esté directamente atado a un contrato firmado y con anticipo cobrado en este cierre de Q3 hoy. Tu misión hoy es des-apalancar la empresa a marchas forzadas para que tu patrimonio vuelva a pesar más que tu deuda, recuperando la soberanía real sobre cada activo que compone tu balance anual neta.', 
'Bloque C - Auditoría Trimestral 3Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 46. Ratio de Capitalización (capitalizacion_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_3Q', 2024, 2024, '3Q', 'warning', 
'Lograste que tu ratio de capitalización no se desplomara en este tercer trimestre, demostrando una resiliencia patrimonial admirable ante la falta de fondeo externo. Has sabido estirar tus recursos propios para mantener la consultora a flote, protegiendo el núcleo duro de tu negocio de las exigencias asfixiantes de las deudas de largo plazo hoy.', 
'Lo negativo es que la falta de capitalización fresca te impide tomar la ofensiva en un mercado que ya empieza a mostrar huecos dejados por competidores que no aguantaron. Al no tener una base de capital expansiva en este Q3, MAS CONSULTA se ve obligada a una estrategia defensiva que podría costarte oportunidades de crecimiento rápido ahora neta.', 
'Busca inyectar capital fresco, ya sea mediante utilidades o nuevos aportes, para aprovechar el último trimestre de este 2024 de forma agresiva inmediata. Debes pasar de "aguantar" a "atacar", y para eso necesitas un balance capitalizado que te dé la fuerza necesaria para ganar contratos que hoy demandan una solvencia técnica impecable hoy día.', 
'Bloque C - Auditoría Trimestral 3Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 47. Deuda a Activos Tangibles (deuda_tangibles_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_3Q', 2024, 2024, '3Q', 'danger', 
'Tus activos físicos siguen siendo tu última línea de defensa patrimonial en este cierre de tercer trimestre de 2024, dándote respaldo jurídico institucional. Eres una empresa con base real que tiene propiedad sobre sus equipos, lo que te permite seguir operando sin el riesgo inminente de una parálisis técnica por falta de infraestructura hoy.', 
'El riesgo es extremo aún: sigues en una situación de "patrimonio hueco" donde tus deudas pesan más que tus activos tangibles en este reporte de Q3. Esta debilidad estructural asusta a cualquier banco que quiera financiar tu expansión futura, manteniéndote preso de un perfil de riesgo alto que te quita poder de negociación neta nacional.', 
'Ejecuta un plan de saneamiento de pasivos de forma inmediata utilizando cada peso del flujo de caja positivo que logres capturar en este trimestre. Debes lograr que tus activos tangibles vuelvan a superar con holgura a tus deudas para que tu balance recupere la dignidad y la fuerza necesaria para enfrentar el próximo ciclo anual ganando.', 
'Bloque C - Auditoría Trimestral 3Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 48. Ratio de Propiedad / Autonomía (propiedad_autonomia_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_3Q', 2024, 2024, '3Q', 'warning', 
'A pesar de los embates financieros, conservas el cincuenta por ciento de la autonomía de tu firma de consultoría estratégica a estas alturas del año. Seguir siendo el dueño mayoritario tras seis meses de crisis es un testimonio de tu tenacidad gerencial, permitiéndole a MAS CONSULTA navegar bajo tu propio mando y no bajo el de otros hoy.', 
'Mucha precaución: tu autonomía financiera está estancada en niveles de supervivencia activa en este reporte del tercer trimestre fiscal del país. No has logrado recuperar el terreno perdido en el Q1, lo que te mantiene en una posición de fragilidad ante cualquier nuevo shock económico que pueda presentarse en el cierre del ciclo anual neta hoy.', 
'Es imperativo que subas tu nivel de participación neta en los activos mediante el fortalecimiento del capital propio de forma inmediata este Q3. Debes volver a ser el dueño absoluto de tu destino financiero para poder tomar decisiones de inversión audaces que MAS CONSULTA requiere para dominar el próximo ejercicio fiscal con total éxito.', 
'Bloque C - Auditoría Trimestral 3Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 49. Relación Deuda / Patrimonio (deuda_patrimonio_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_3Q', 2024, 2024, '3Q', 'danger', 
'La consultora conserva su capacidad para seguir operando sin haber quebrado patrimonialmente a pesar del alto nivel de apalancamiento alcanzado este trimestre. El hecho de que tu capital neto siga siendo positivo en este cierre de Q3 es la única señal de esperanza que tienes hoy para planificar el fortalecimiento estructural masivo del 2025.', 
'Tu nivel de deuda frente a tu patrimonio sigue estando en niveles intolerables para una gestión de servicios profesionales de alta gama en este periodo neta anual. Estás "alquilando" tu operación a los acreedores comerciales, lo que te quita méritos de solvencia y te mantiene en un perfil de riesgo corporativo extremadamente alto para cualquier auditor.', 
'Haz un compromiso de no tomar ni un peso más de financiamiento externo hasta que logres equilibrar esta balanza patrimonial de forma inmediata hoy mismo. Debes centrarte en reducir tus pasivos mediante el recaudo acelerado de facturación neta, recuperando así la salud institucional que MAS CONSULTA ha perdido durante este año de estrés intenso.', 
'Bloque C - Auditoría Trimestral 3Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2024 - TRIMESTRE 4 (Q4)
-- =================================================================================

-- 50. Cobertura de Activos Fijos (cobertura_fijos_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_4Q', 2024, 2024, '4Q', 'warning', 
'A pesar de los vientos en contra de este cierre de 2024, tu patrimonio todavía alcanza a cubrir tu infraestructura operativa básica de consultoría técnica estratégica. Es un alivio ver que no has tenido que empeñar tus activos principales para sobrevivir a este año difícil, manteniendo el control sobre cada computadora y herramienta de tu oficina.', 
'El deterioro de este indicador frente al cierre del año pasado es evidente y preocupante para tu gestión de largo plazo en este reporte de Q4. Básicamente, tu base de capital se ha debilitado tanto este trimestre que ahora apenas raspas el mínimo necesario para decir que tus activos te pertenecen a ti y no a tus deudores directos hoy.', 
'Urge que detengas el sangrado de tu capital propio hoy mismo recortando cualquier gasto superfluo administrativo de MAS CONSULTA de inmediato para el 2025 neta. Necesitas inyectar aire fresco a tu patrimonio para que vuelva a cubrir con holgura tus activos operativos, recuperando esa sensación de seguridad total que tenías hace apenas doce meses hoy día.', 
'Bloque C - Auditoría Trimestral 4Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metolodogia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 51. Estructura de la Deuda (estructura_deuda_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_4Q', 2024, 2024, '4Q', 'danger', 
'Resalta tu habilidad gerencial para mantener abiertas las líneas de crédito comercial a pesar del estrés financiero que vivió la consultora durante todo el Q4. Tu palabra ante el mercado sigue teniendo valor institucional, lo que constituye el cimiento más importante sobre el cual podrás reestructurar tu deuda una vez que la facturación fluya neta hoy.', 
'Lo crítico es que tu estructura de deuda se ha vuelto puramente "de corto plazo" en este cierre de año, lo que significa que estás encadenado a vencimientos bancarios. Estás operando al límite de tu capacidad de giro bancario, donde un solo retraso de tus clientes podría desplomar tu castillo de naipes financiero de forma irremediable ahora hoy.', 
'Debes buscar hoy mismo una consolidación de pasivos que te de oxígeno a veinticuatro meses o más de plazo definitivo de forma inmediata al iniciar el 2025 neta. No sigas parchando los huecos de caja con deudas nuevas y caras; necesitas una estructura de fondeo más inteligente que acompañe tu recuperación operativa y no que la asfixie quincenal.', 
'Bloque C - Auditoría Trimestral 4Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 52. Multiplicador de Capital (multiplicador_capital_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_4Q', 2024, 2024, '4Q', 'danger', 
'A pesar de que el multiplicador se disparó bruscamente al cierre de año, todavía conservas el control mayoritario del negocio en tus manos gerenciales actuales hoy. Tienes la estructura mínima viable para dar la pelea y revertir esta situación si logras alinear nuevamente tu capital con el tamaño real de tus ventas neta acumuladas al cierre del ciclo.', 
'Tu apalancamiento ha llegado a un nivel de estrés máximo en este reporte del Q4, donde por cada peso propio, ya debes mucho dinero al mercado externo bancario. Estás operando una empresa que pesa más que lo que tú mismo has puesto en ella, lo que eleva tu perfil de riesgo ante cualquier auditoría financiera o evaluación de crédito hoy día.', 
'Frena cualquier nueva inversión o gasto administrativo que no sea puramente generadora de caja inmediata de forma definitiva al iniciar el próximo trimestre fiscal hoy. Debes adelgazar tu balance rápidamente y enfocarte en recuperar tu autonomía financiera original; no permitas que el tamaño de tu deuda nuble tu juicio gerencial estratégico neta anual.', 
'Bloque C - Auditoría Trimestral 4Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 53. Ratio de Capitalización (capitalizacion_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_4Q', 2024, 2024, '4Q', 'warning', 
'Lograste mantener tu ratio de capitalización estable a pesar del entorno tan hostil que tuvo que sortear MAS CONSULTA en este cuarto trimestre del año hoy. Esta estabilidad de "supervivencia" demuestra que, aunque has perdido pluma, todavía tienes un núcleo duro de capital propio que no ha sido hipotecado ni comprometido a futuro neta hoy.', 
'Lo preocupante es que no has construido una sola reserva de largo plazo institucional durante todo el ejercicio fiscal de este 2024 que llega a su fin hoy. Estás financiando la consultora únicamente con tus ahorros y el crédito comercial diario, lo cual es la forma más errática e insegura de capitalizar una firma de servicios especializados neta.', 
'Debes diseñar un plan de capitalización formal inyectando parte de las utilidades que proyectes para el próximo Q1 de 2025 de inmediato de forma definitiva ahora. No sigas operando sin una reserva legal robusta; necesitas que el negocio aprenda a guardarse dinero para las épocas de vacas flacas, protegiendo así tu tranquilidad personal hoy.', 
'Bloque C - Auditoría Trimestral 4Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 54. Deuda a Activos Tangibles (deuda_tangibles_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_4Q', 2024, 2024, '4Q', 'danger', 
'Tus activos fijos físicos siguen presentes en el balance al cierre de año, lo que te otorga un respaldo mínimo de credibilidad ante socios y proveedores hoy. Posees una base tangible que, aunque esté estresada, sigue siendo de tu propiedad neta y te permite seguir operando tu consultora sin interrupciones por embargos en este ciclo tan gris hoy.', 
'El riesgo es extremo al cierre del Q4: tus deudas corporativas han superado con creces el valor de mercado de tus activos físicos este trimestre final del año. Básicamente, si tuvieras que vender todo mañana, no alcanzarías a pagar lo que debes, quedando en una situación de "patrimonio hueco" que compromete severamente tu reputación neta anual.', 
'Urge que realices una desinversión de activos ociosos y uses ese dinero para liquidar tus deudas más vencidas de inmediato al iniciar el próximo ejercicio fiscal hoy. Debes volver a equilibrar la balanza entre lo que posees y lo que debes; el objetivo es que tus activos tangibles siempre sean un escudo protector y nunca una carga insuficiente.', 
'Bloque C - Auditoría Trimestral 4Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 55. Ratio de Propiedad / Autonomía (propiedad_autonomia_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_4Q', 2024, 2024, '4Q', 'warning', 
'Mantienes el cincuenta por ciento de la propiedad neta de tus activos al cierre de 2024, lo cual tras un año de crisis es un logro defensivo muy valioso hoy. Todavía tienes el voto decisivo en tu propio balance, permitiéndote que MAS CONSULTA siga operando bajo tu visión y no bajo las exigencias de acreedores externos agresivos hoy día.', 
'Tu autonomía financiera se ha degradado peligrosamente frente al cierre triunfal del año pasado en este último reporte del cuarto trimestre fiscal del país neta hoy. Has entregado gran parte de tu patrimonio a deudas de corto plazo para sostener la operación, lo que te quita poder de negociación institucional ante el mercado competitivo hoy.', 
'Para el próximo año que inicia, tu prioridad absoluta debe ser recuperar tu soberanía financiera e institucional de inmediato de forma definitiva ahora mismo. Debes inyectar utilidades retenidas para subir este ratio nuevamente por encima del setenta por ciento. Ser el dueño de tu negocio significa tener el control total de cada peso hoy.', 
'Bloque C - Auditoría Trimestral 4Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 56. Relación Deuda / Patrimonio (deuda_patrimonio_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_4Q', 2024, 2024, '4Q', 'danger', 
'A pesar de que el ratio se ha deteriorado bruscamente este trimestre, la consultora conserva su capacidad para seguir operando sin haber quebrado patrimonialmente hoy. El hecho de terminar este cierre anual con un capital neto positivo es el único cable a tierra que tienes para planificar la restructuracion masiva del próximo ciclo fiscal neta.', 
'Tu nivel de deuda frente a tu patrimonio ha sobrepasado el límite de seguridad aconsejable para una empresa de servicios profesionales en este reporte del Q4 histórico hoy. Estas "apoyado" demasiado en el capital de otros, lo cual es una señal de extrema fragilidad operativa y financiera. Tu patrimonio es hoy un rehén de tus obligaciones comerciales.', 
'Haz un compromiso gerencial de no tomar ni un peso más de deuda hasta que logres bajar este ratio a la mitad de inmediato de forma definitiva al iniciar el 2025 hoy. Enfócate cien por ciento en el recaudo de facturas actuales para inyectar liquidez y fortalecer tu base patrimonial. Necesitas que tu empresa vuelva a ser tuya en un ochenta por ciento.', 
'Bloque C - Auditoría Trimestral 4Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2025 - TRIMESTRE 1 (Q1) - LA REVOLUCIÓN PATRIMONIAL
-- =================================================================================

-- 57. Cobertura de Activos Fijos (cobertura_fijos_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_1Q', 2025, 2025, '1Q', 'success', 
'Inicias el 2025 con una transformación estructural sin precedentes en la historia de MAS CONSULTA hoy. Tu cobertura de activos fijos se ha multiplicado, lo que significa que hoy tienes un patrimonio tan robusto que podrías comprar tu oficina actual cinco veces sin despeinarte financieramente. Es un blindaje total para tu infraestructura técnica hoy neta.', 
'El reto ahora es no permitir que semejante cantidad de capital propio se quede ocioso en el balance de este primer trimestre del año neta. Tener demasiada cobertura patrimonial sobre activos fijos indica que podrías estar siendo ineficiente en el uso de tus recursos, dejando dinero "quieto" que no está produciendo nueva consultoría estratégica nacional.', 
'Te recomiendo que uses este nuevo músculo financiero para adquirir tecnología de punta y expandir tu presencia física en nuevas regiones del país de inmediato hoy. Tienes el respaldo absoluto para crecer sin miedo; no permitas que tu capital se convierta en una zona de confort institucional, sino en la rampa de lanzamiento para tu dominio total hoy día.', 
'Bloque C - Auditoría Trimestral 1Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 58. Estructura de la Deuda (estructura_deuda_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_1Q', 2025, 2025, '1Q', 'success', 
'Has logrado sanear tu estructura de pasivos de forma magistral en este arranque de 2025, eliminando la asfixia del corto plazo definitivamente hoy. Hoy tu deuda está perfectamente equilibrada con tu flujo de caja, dándote una libertad operativa que no tenías hace años y permitiéndote negociar con proveedores desde una posición de poder absoluto.', 
'Vigila que esta nueva comodidad crediticia no te lleve a descuidar los procesos de pago administrativo que tanto te costó organizar durante la crisis del 2024. El hecho de que hoy tengas liquidez de sobra para pagar no significa que debas relajar tus políticas de tesorería, ya que el orden estructural es lo único que garantiza la paz perpetua hoy.', 
'Aprovecha tu brillante calificación crediticia actual para negociar tasas de interés aún más bajas para cualquier proyecto de inversión futuro neta hoy. Tienes el sartén por el mango; haz valer tu solvencia ante los bancos y conviértete en el cliente preferencial que todas las entidades financieras quieren tener hoy mismo en Colombia neta.', 
'Bloque C - Auditoría Trimestral 1Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 59. Multiplicador de Capital (multiplicador_capital_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_1Q', 2025, 2025, '1Q', 'success', 
'Tu multiplicador de capital ha bajado a niveles óptimos, lo que te devuelve el control absoluto y real de tu firma de consultoría estratégica hoy. Has pasado de ser un gerente estresado por las deudas ajenas a ser un dueño patrimonialmente sólido que opera MAS CONSULTA con su propia fuerza económica, garantizando independencia total neta hoy.', 
'Tener un multiplicador tan bajo podría indicar que estás dejando de usar el apalancamiento inteligente que potencia los negocios de gran escala en el país hoy. Si bien la seguridad es primordial tras la tormenta, cerrar totalmente la puerta al crédito barato puede restarte velocidad frente a consorcios internacionales que operan con capital mixto.', 
'Te sugiero que reinicies una política de apalancamiento estratégico pero muy conservador para financiar tus nuevos grandes contratos anuales hoy día. Usa tu excelente solvencia para atraer recursos externos que multipliquen tu rentabilidad final; ya no necesitas el crédito para sobrevivir, sino que ahora lo usas únicamente para ganar más hoy.', 
'Bloque C - Auditoría Trimestral 1Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 60. Ratio de Capitalización (capitalizacion_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_1Q', 2025, 2025, '1Q', 'success', 
'La capitalización masiva que ha experimentado MAS CONSULTA en este primer trimestre de 2025 es un hito de solvencia para todo el sector nacional hoy. Has logrado blindar el largo plazo de la empresa con reservas propias que garantizan su supervivencia por décadas, dándote una autoridad financiera que te permite liderar cualquier mesa de negociación hoy.', 
'Cuidado con la tentación de repartir dividendos excesivos ahora que el balance se ve tan saludable y lleno de capital propio tras la inyección del Q1. Si descapitalizas el negocio tan pronto, podrías perder la ventana de oportunidad histórica que tienes para comprar competidores pequeños o integrar nuevas líneas de servicios técnicos neta hoy.', 
'Establece una política formal de reinversión del setenta por ciento de tus utilidades para mantener este ratio de capitalización en la estratósfera financiera hoy. Tu empresa hoy es una fortaleza indestructible; mantén ese escudo levantado para que el 2025 sea recordado como el año en que MAS CONSULTA se convirtió en un gigante patrimonial hoy.', 
'Bloque C - Auditoría Trimestral 1Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 61. Deuda a Activos Tangibles (deuda_tangibles_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_1Q', 2025, 2025, '1Q', 'success', 
'Tus activos físicos hoy son un respaldo absoluto y total de tu solvencia corporativa, con una relación deuda-tangibles envidiable en este trimestre neta. Has recuperado el valor real de tu balance, asegurando que cada peso que posees en equipos y propiedad sea genuinamente tuyo y no una garantía prendaria de terceros externos bancarios hoy.', 
'El único riesgo en un balance tan "limpio" de deudas contra activos es caer en la inacción operativa por miedo a volver a comprometer tus equipos en el banco. No permitas que la posesión total de tus herramientas te quite el apetito por la innovación agresiva; MAS CONSULTA debe seguir siendo una máquina de producir resultados y no un museo hoy.', 
'Te recomiendo que utilices tus activos tangibles al cien por ciento de su capacidad técnica y comercial para maximizar el retorno sobre inversión actual hoy. Ya tienes el respaldo, ahora necesitas la productividad extrema que te permita seguir inyectando capital propio para modernizar tu flota tecnológica cada año de forma sostenida hoy día.', 
'Bloque C - Auditoría Trimestral 1Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 62. Ratio de Propiedad / Autonomía (propiedad_autonomia_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_1Q', 2025, 2025, '1Q', 'success', 
'Eres hoy el dueño absoluto del noventa por ciento de los activos de tu consultora tras la histórica restructuración de este primer trimestre del 2025 neta. Este nivel de autonomía estratégica es el sueño de cualquier fundador, dándote un poder de veto y una libertad de acción que te coloca por encima de toda la competencia regional hoy mismo.', 
'Tener una autonomía tan alta puede aislarte de las dinámicas del mercado financiero que exigen una cuota mínima de deuda para validar tu modelo de negocio ante terceros. A veces, ser el dueño de "todo" te impide ver las eficiencias que se logran cuando compartes el riesgo con acreedores de alta calidad técnica y financiera nacional hoy.', 
'Mantén esta soberanía patrimonial como tu bandera principal, pero no descartes alianzas estratégicas que requieran una mínima dilución para escalar el negocio nacional. Tu posición de fuerza actual es perfecta para negociar los mejores términos posibles con cualquier socio que quiera sumarse a la consultora líder del mercado hoy día neta.', 
'Bloque C - Auditoría Trimestral 1Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 63. Relación Deuda / Patrimonio (deuda_patrimonio_1Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_1Q', 2025, 2025, '1Q', 'success', 
'Has logrado invertir la balanza de poder en tu balance corporativo, donde hoy tu patrimonio es veinte veces superior a tu deuda total en este reporte Q1. Es una victoria gerencial definitiva que limpia las cicatrices del 2024 y te proyecta como una de las firmas consultoras más sólidas y solventes de todo el ecosistema nacional hoy mismo.', 
'Vigila que este ratio no se deteriore por una mala gestión de la liquidez excedente que hoy inunda tu cuenta bancaria administrativa de MAS CONSULTA neta. No caigas en gastos de lujo o inversiones fuera de tu "core" de negocio solo porque hoy sientes que el dinero es infinito en tu balance; el rigor financiero debe seguir siendo tu norma.', 
'Utiliza esta fortaleza patrimonial para negociar los contratos más grandes y exigentes que antes estaban fuera de tu alcance por falta de respaldo neta hoy. Hoy tu balance es tu mejor carta de presentación y tu activo comercial más potente; úsalo para cerrar tratos que aseguren el dominio de MAS CONSULTA en los próximos cinco años fiscales.', 
'Bloque C - Auditoría Trimestral 1Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2025 - TRIMESTRE 2 (Q2)
-- =================================================================================

-- 64. Cobertura de Activos Fijos (cobertura_fijos_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_2Q', 2025, 2025, '2Q', 'success', 
'A mitad de 2025, tu cobertura patrimonial sigue en niveles históricos, asegurando que cada inversión en activos fijos esté blindada por capital propio neta. Has construido una base estructural tan potente que MAS CONSULTA es hoy una roca financiera, capaz de absorber cualquier choque externo sin poner en riesgo su propiedad esencial hoy.', 
'Ten cuidado con el conservadurismo excesivo que puede estar frenando la renovación tecnológica necesaria para seguir siendo el líder técnico del mercado hoy día. Si bien es bueno tener los activos pagos, es malo tener equipos obsoletos solo por el placer de decir que son cien por ciento tuyos patrimonialmente hablando hoy mismo neta.', 
'Ejecuta un plan agresivo de actualización de hardware y software para todo tu equipo de consultores sénior aprovechando tu inmensa capacidad patrimonial actual hoy. Debes asegurar que tu infraestructura sea tan moderna como tu balance, dándote la ventaja competitiva necesaria para dominar el mercado internacional de consultoría estratégica.', 
'Bloque C - Auditoría Trimestral 2Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 65. Estructura de la Deuda (estructura_deuda_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_2Q', 2025, 2025, '2Q', 'success', 
'Tu estructura de pasivos a cierre de junio es un modelo de eficiencia para el sector de servicios, con un balance perfecto entre plazos y costos neta hoy. Has logrado que MAS CONSULTA deje de ser una empresa que vive al día y se convierta en una firma con una planificación financiera de largo plazo envidiable y ganadora hoy día.', 
'Vigila el surgimiento de pequeños pasivos administrativos que podrían empezar a acumularse si relajas el control sobre tu nuevo flujo de caja tan abundante hoy. En épocas de bonanza, es fácil perder de vista los pequeños goteos de dinero que, sumados, pueden erosionar tu impecable estructura de deuda actual de forma silenciosa e invisible.', 
'Considera la posibilidad de prepagar algunas obligaciones de mediano plazo para optimizar aún más tu costo financiero total antes de que acabe el año fiscal hoy. Tienes la liquidez y el respaldo para hacerlo; cada peso que ahorres en intereses hoy es un peso que fortalece tu rentabilidad final y tu capacidad de expansión nacional neta.', 
'Bloque C - Auditoría Trimestral 2Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 66. Multiplicador de Capital (multiplicador_capital_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_2Q', 2025, 2025, '2Q', 'success', 
'Has consolidado tu multiplicador de capital en niveles de seguridad total, lo que te posiciona como el dueño absoluto y soberano de MAS CONSULTA hoy mismo. Esta independencia financiera es tu activo más valioso, permitiéndote tomar decisiones audaces sin tener que pedir permiso a ninguna entidad bancaria o tercero externo agresivo hoy.', 
'Un multiplicador tan bajo a mitad de año podría significar que no estás aprovechando el apalancamiento estratégico para financiar grandes licitaciones internacionales neta hoy. La seguridad es excelente, pero el crecimiento exponencial a veces requiere una dosis controlada de capital ajeno para no agotar tus propios recursos neta anuales hoy.', 
'Te sugiero que apertures una línea de crédito de "oportunidad" que solo utilices para proyectos con un retorno de inversión muy superior a la tasa de interés actual neta. Usa tu inmensa solvencia patrimonial para captar capital barato que potencie tu escala, pero siempre manteniendo el timón estratégico firmemente en tus propias manos hoy día.', 
'Bloque C - Auditoría Trimestral 2Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 67. Ratio de Capitalización (capitalizacion_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_2Q', 2025, 2025, '2Q', 'success', 
'Tu ratio de capitalización semestral es un monumento a la previsión financiera y a la fortaleza patrimonial de tu firma de consultoría estratégica hoy. Has logrado que la empresa tenga un escudo de capital de largo plazo que la protege de cualquier volatilidad del mercado, dándote una tranquilidad mental que se traduce en mejores decisiones hoy.', 
'Ten cuidado con el exceso de capital ocioso que puede estar generando una rentabilidad mínima si se mantiene únicamente en cuentas de ahorros tradicionales hoy día. Tu balance está tan capitalizado que ahora tu mayor reto no es conseguir dinero, sino saber dónde ponerlo a trabajar para que genere un valor agregado técnico superior nacional.', 
'Estudia la posibilidad de crear un fondo de inversión corporativo para el desarrollo de nuevos productos digitales de consultoría estratégica de forma inmediata hoy. Usa tu fuerza de capital para innovar y no solo para atesorar; el mercado premia a los que usan su solvencia para transformar el futuro y no solo para contemplar el pasado hoy.', 
'Bloque C - Auditoría Trimestral 2Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 68. Deuda a Activos Tangibles (deuda_tangibles_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_2Q', 2025, 2025, '2Q', 'success', 
'El respaldo de tus activos físicos sobre tu deuda corporativa es hoy total y absoluto, dándote una solvencia técnica impecable ante cualquier auditor externo. Eres dueño real de cada equipo, vehículo y propiedad que compone el balance de MAS CONSULTA, lo que blinda tu operación ante cualquier intento de presión por parte de acreedores hoy neta.', 
'El riesgo ahora es la obsolescencia técnica de esos activos que hoy posees al cien por ciento y que podrían estar perdiendo valor de mercado frente a la competencia digital. Poseer equipos viejos no es una señal de éxito, sino de descuido administrativo; no confundas la propiedad patrimonial con la modernidad operativa en este semestre hoy.', 
'Inicia un proceso de renovación de activos tecnológicos críticos utilizando tu excedente de liquidez actual de forma inmediata en este cierre de junio hoy día. Debes asegurar que tu base tangible sea tan moderna como tu estrategia comercial, garantizando que el respaldo de tu balance sea siempre de alta calidad técnica y funcional hoy.', 
'Bloque C - Auditoría Trimestral 2Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 69. Ratio de Propiedad / Autonomía (propiedad_autonomia_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_2Q', 2025, 2025, '2Q', 'success', 
'Mantienes el noventa por ciento de la autonomía de tu firma de consultoría al cierre de este primer semestre del 2025 de forma magistral y ganadora hoy. Eres el capitán indiscutible de tu destino corporativo, con un poder de decisión que no depende de fondeo externo ni de exigencias de terceros ajenos a tu visión estratégica nacional neta.', 
'Recuerda que una autonomía tan absoluta puede volverte menos receptivo a las críticas constructivas que a veces imponen los socios capitalistas externos en el país hoy. No permitas que ser el dueño total te nuble la vista sobre las mejoras operativas que otros ojos podrían detectar en tu estructura de gastos e inversiones anuales hoy.', 
'Considera la posibilidad de invitar a un consejo asesor externo que te ayude a profesionalizar aún más tu toma de decisiones estratégicas de forma inmediata hoy. Ya tienes la autonomía financiera, ahora busca la excelencia de gobierno corporativo que MAS CONSULTA requiere para convertirse en el líder absoluto de la región nacional neta.', 
'Bloque C - Auditoría Trimestral 2Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 70. Relación Deuda / Patrimonio (deuda_patrimonio_2Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_2Q', 2025, 2025, '2Q', 'success', 
'La relación deuda-patrimonio de este semestre es la más saludable en la historia reciente de MAS CONSULTA, con un capital propio que triplica tus deudas hoy. Esta fortaleza te posiciona como un jugador de ligas mayores, capaz de enfrentar cualquier crisis reputacional o económica con la tranquilidad de quien tiene las cuentas muy claras hoy.', 
'Vigila que esta fuerza patrimonial no se traduzca en una burocracia pesada que eleve tus costos fijos innecesariamente ahora que te sientes financieramente invencible hoy día. La humildad administrativa sigue siendo la mejor política para que este ratio se mantenga en niveles de excelencia durante todo lo que resta del ejercicio fiscal neta.', 
'Utiliza este impecable indicador para negociar alianzas con firmas internacionales que buscan socios locales con una solvencia técnica y patrimonial comprobada hoy mismo. Tu balance hoy no es solo un papel, es tu mejor herramienta de ventas para capturar los proyectos de consultoría más ambiciosos y rentables de todo el mercado colombiano.', 
'Bloque C - Auditoría Trimestral 2Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2025 - TRIMESTRE 3 (Q3) - CONSOLIDACIÓN ESTRATÉGICA
-- =================================================================================

-- 71. Cobertura de Activos Fijos (cobertura_fijos_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_3Q', 2025, 2025, '3Q', 'success', 
'Llegas al tercer trimestre de 2025 con una cobertura de activos fijos que es simplemente inexpugnable, dándote un blindaje patrimonial total ante el mercado hoy. Cada peso invertido en tu infraestructura técnica está respaldado por utilidades generadas y retenidas, lo que garantiza que MAS CONSULTA sea dueña real de su destino operativo hoy día.', 
'Tener semejante nivel de cobertura patrimonial puede indicarte que has dejado de actualizar tus activos fijos físicos por un tiempo prolongado en este ciclo nacional neta. Un patrimonio "estático" es un capital que no está innovando; asegúrate de que tu infraestructura sea tan moderna como lo es tu capacidad de pago actual ante los bancos.', 
'Te sugiero que inicies un plan de renovación tecnológica de ciclo corto para que tu equipo comercial siempre disponga de las mejores herramientas del mercado internacional hoy. Tienes el respaldo absoluto para hacerlo sin endeudarte; úsalo como una ventaja competitiva para atraer y retener el mejor talento humano del sector de consultoría.', 
'Bloque C - Auditoría Trimestral 3Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 72. Estructura de la Deuda (estructura_deuda_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_3Q', 2025, 2025, '3Q', 'success', 
'Tu estructura de pasivos al cierre de septiembre es un ejemplo de saneamiento financiero definitivo, con vencimientos perfectamente alineados con tus facturas neta hoy. Has logrado erradicar la deuda tóxica de corto plazo que te agobiaba, sustituyéndola por una gestión de proveedores sana y con plazos extendidos que favorecen tu caja hoy.', 
'Vigila que esta nueva abundancia de recursos no te lleve a aceptar condiciones de pago de tus clientes demasiado laxas que empiecen a estresar tu capital de trabajo hoy. El hecho de que hoy tengas una estructura de deuda liviana no debe ser excusa para que tus clientes te paguen a plazos infinitos; mantén tu rigor comercial intacto hoy día.', 
'Te recomiendo que establezcas un fondo de emergencia líquida que cubra seis meses de tus pasivos operativos actuales de forma inmediata en este cierre de Q3 neta hoy. Tienes la oportunidad de crear un colchón de seguridad que te permita dormir tranquilo ante cualquier crisis futura, cementando la estabilidad de MAS CONSULTA para siempre hoy.', 
'Bloque C - Auditoría Trimestral 3Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 73. Multiplicador de Capital (multiplicador_capital_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_3Q', 2025, 2025, '3Q', 'success', 
'Has consolidado un multiplicador de capital de "excelencia institucional", donde tu patrimonio es el dueño absoluto de cada paso estratégico de MAS CONSULTA hoy. Esta solidez te otorga una independencia total ante el sistema financiero, permitiéndote navegar por encima de las fluctuaciones de las tasas de interés con total soberanía neta.', 
'Tener un multiplicador tan extremadamente bajo en este tercer trimestre puede ser una señal de que estás siendo excesivamente precavido con tu expansión comercial hoy día. A veces, un poco de deuda estratégica ayuda a mantener la disciplina operativa y te permite alcanzar mercados que hoy te están vedados por falta de escala financiera inmediata neta.', 
'Establece un plan de apalancamiento preventivo que te permita financiar tus tres proyectos más ambiciosos para el 2026 sin tocar tu capital operativo de forma inmediata hoy. Tienes la solvencia para exigir las mejores condiciones del mercado; haz valer tu fuerza patrimonial y convierte el crédito en una herramienta de conquista comercial neta.', 
'Bloque C - Auditoría Trimestral 3Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 74. Ratio de Capitalización (capitalizacion_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_3Q', 2025, 2025, '3Q', 'success', 
'Tu ratio de capitalización al cierre de septiembre es un testimonio de la transformación radical que ha vivido tu consultora este año neta hoy. Has pasado de la fragilidad del 2024 a una solidez estructural envidiable, con reservas de largo plazo que hoy te permiten planificar el crecimiento de MAS CONSULTA con una ambición ganadora definitiva neta.', 
'Ten cuidado con la autocomplacencia que puede generar un balance tan robusto en este periodo de consolidación nacional del tercer trimestre fiscal neta hoy. No permitas que la seguridad financiera te quite el hambre por la eficiencia operativa; recuerda que el capital propio también tiene un costo de oportunidad que debes maximizar cada día hoy.', 
'Te sugiero que inicies una política formal de valoración de marca y de activos intangibles para reflejar fielmente la verdadera potencia de tu capitalización actual hoy. Eres una empresa grande no solo por lo que tienes en el banco, sino por la reputación que hoy respalda tu balance; haz que esa fuerza se sienta en cada nueva propuesta comercial neta.', 
'Bloque C - Auditoría Trimestral 3Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 75. Deuda a Activos Tangibles (deuda_tangibles_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_3Q', 2025, 2025, '3Q', 'success', 
'El respaldo total de tus activos físicos sobre tus obligaciones financieras es hoy una garantía absoluta de tu solvencia corporativa nacional neta. Has logrado que MAS CONSULTA sea una empresa con pies de plomo, dueña real de su infraestructura y con un balance tangible que es el orgullo de tus socios y fundadores hoy día mismo.', 
'Lo negativo de poseer todos tus activos al cierre del Q3 es el riesgo de no renovarlos a la velocidad que exige la revolución digital de la consultoría estratégica hoy. No permitas que tus equipos se vuelvan obsoletos solo por el placer de tenerlos pagos; tu balance debe ser dinámico y reflejar siempre la vanguardia tecnológica del sector neta.', 
'Implementa un sistema de leasing operativo para tu renovación tecnológica de fin de año, permitiendo que tu capital propio fluya hacia proyectos de mayor valor agregado hoy. Tienes el respaldo patrimonial para hacerlo sin riesgo; mantén tu infraestructura siempre en el estado del arte para seguir cobrando tarifas de consultoría premium neta.', 
'Bloque C - Auditoría Trimestral 3Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 76. Ratio de Propiedad / Autonomía (propiedad_autonomia_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_3Q', 2025, 2025, '3Q', 'success', 
'Conservas el noventa por ciento de la autonomía de tu firma consultora estratégica al cierre de este tercer trimestre del 2025 hoy mismo. Esta posesión casi total te otorga una libertad de maniobra excepcional para capturar oportunidades de mercado rápidas sin pasar por comités de crédito externos ni por la aprobación de terceros ajenos hoy.', 
'Esa autonomía total puede volverte ciego ante las eficiencias que se logran cuando operamos con una cuota saludable de deuda de inversión del sistema financiero neta hoy. No permitas que tu independencia financiera se convierta en una burbuja de aislamiento operativo que te impida ver las mejores prácticas que los bancos exigen a sus clientes hoy.', 
'Considera la posibilidad de abrir tu capital un cinco o diez por ciento a socios industriales que te traigan no solo dinero, sino conocimiento de mercados externos hoy día. Tienes la fuerza patrimonial para negociar desde arriba; busca alianzas que te den escala global sin sacrificar tu control estratégico sobre MAS CONSULTA neta hoy.', 
'Bloque C - Auditoría Trimestral 3Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 77. Relación Deuda / Patrimonio (deuda_patrimonio_3Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_3Q', 2025, 2025, '3Q', 'success', 
'Tu relación deuda-patrimonio al cierre de septiembre es un modelo de salud estructural, con un capital propio que blinda totalmente tu operación nacional neta. Has construido una muralla financiera que hoy impide que cualquier fluctuación de la economía colombiana afecte la visión de largo plazo de tu firma de consultoría estratégica hoy.', 
'Vigila que esta potencia patrimonial no se traduzca en una relajación de tus márgenes de ventas por sentirte demasiado seguro financieramente en este cierre anual hoy. La solvencia es un premio a tu buena gestión pasada, no una excusa para dejar de ser eficiente en tu operación diaria presente; mantén tu rigor de costos intacto hoy día neta.', 
'Utiliza esta impecable solidez para ofrecer condiciones comerciales irresistibles a tus clientes de mayor volumen nacional de forma inmediata al cierre de este Q3 hoy. Tienes el aire financiero para aguantar plazos que tu competencia no puede, úsalo como un arma de destrucción competitiva para quedarte con los negocios más grandes de 2026 hoy.', 
'Bloque C - Auditoría Trimestral 3Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2025 - TRIMESTRE 4 (Q4) - CIERRE DE CICLO MAESTRO
-- =================================================================================

-- 78. Cobertura de Activos Fijos (cobertura_fijos_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'cobertura_fijos_4Q', 2025, 2025, '4Q', 'success', 
'Cierras el 2025 con una cobertura de activos fijos inigualable, certificando que MAS CONSULTA es hoy una empresa plenamente capitalizada y ganadora nacional neta hoy. Has logrado que tu patrimonio sea el dueño absoluto de tu infraestructura operativa, dándote una solidez de roca para enfrentar cualquier desafío que traiga el próximo año hoy día.', 
'El reto para el cierre de diciembre es asegurar que esta inmensa cobertura no sea el resultado de una falta de inversión agresiva durante los últimos doce meses hoy. Un balance estático es un balance que está envejeciendo; no permitas que la acumulación de patrimonio sea el fin en sí mismo, sino el medio para renovar tu potencia técnica neta.', 
'Te recomiendo que cierres el año ejecutando una inversión masiva en activos fijos de última generación para tus consultores asociados de forma inmediata hoy mismo neta. Usa tu fuerza patrimonial para entrar al 2026 con las mejores herramientas del mercado, garantizando que tu liderazgo sea tanto financiero como tecnológico nacional hoy día.', 
'Bloque C - Auditoría Trimestral 4Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 79. Estructura de la Deuda (estructura_deuda_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'estructura_deuda_4Q', 2025, 2025, '4Q', 'success', 
'Finalizas el ciclo anual con una estructura de deuda impecable y perfectamente balanceada con tus ciclos de facturación de servicios técnicos especiales hoy. Has logrado que MAS CONSULTA sea una firma predecible y solvente ante sus proveedores, eliminando cualquier rastro de tensión financiera en este cierre de diciembre tan exitoso hoy día neta.', 
'Vigila que esta nueva paz crediticia no te lleve a aceptar contratos con retenciones de pago demasiado agresivas para el próximo arranque de año en el país hoy. El hecho de que hoy tengas liquidez sobrante no significa que debas financiar gratuitamente a tus clientes; mantén el respeto por tu propio flujo de caja de forma definitiva hoy.', 
'Aprovecha tu brillante historial crediticio de este 2025 para negociar una línea de crédito revolvente con tasas preferenciales para el próximo trimestre de 2026 hoy mismo. Debes tener los recursos listos antes de necesitarlos, asegurando que MAS CONSULTA nunca vuelva a vivir el estrés que tuvimos que navegar durante el año pasado nacional neta.', 
'Bloque C - Auditoría Trimestral 4Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 80. Multiplicador de Capital (multiplicador_capital_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'multiplicador_capital_4Q', 2025, 2025, '4Q', 'success', 
'Tu multiplicador de capital al cierre de 2025 es el sello final de una gestión patrimonial impecable que ha devuelto la empresa a sus verdaderos dueños hoy. Has logrado un nivel de autonomía envidiable que te permite planificar tu retiro personal o tu expansión nacional sin depender de la benevolencia de ningún banco externo en este ciclo neta.', 
'Tener un multiplicador tan bajo al finalizar el año puede ser visto por algunos socios como una señal de sub-utilización de recursos para el crecimiento masivo hoy día. En un mercado tan competitivo, a veces el que no arriesga capital ajeno deja de capturar mercados que hoy están migrando hacia la competencia más agresiva estructural neta hoy.', 
'Te sugiero que para el próximo mes de enero diseñes una estrategia de apalancamiento preventivo para financiar tu expansión hacia mercados internacionales de inmediato hoy. Tienes el respaldo absoluto; usa una pequeña fracción de ese poder para conquistar nuevos territorios sin poner en riesgo tu preciada solidez patrimonial actual hoy día.', 
'Bloque C - Auditoría Trimestral 4Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 81. Ratio de Capitalización (capitalizacion_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'capitalizacion_4Q', 2025, 2025, '4Q', 'success', 
'Finalizas el 2025 con un ratio de capitalización histórico para MAS CONSULTA, consolidando un blindaje patrimonial de largo plazo que es hoy tu mayor activo estratégico neta. Has demostrado una disciplina férrea para retener utilidades y fortalecer el núcleo duro del negocio, garantizando que el próximo año inicie con una fuerza financiera total.', 
'Vigila que esta enorme capitalización no se traduzca en una pérdida de agilidad comercial por miedo a comprometer recursos propios en proyectos de alto riesgo y alta rentabilidad neta hoy. El exceso de capital puede volverse un ancla si no se usa con sabiduría emprendedora; no permitas que la seguridad de tu balance frene tu instinto de crecimiento nacional.', 
'Te recomiendo que establezcas un plan de expansión regional agresivo para el 2026, utilizando tu fortaleza de capitalización para comprar firmas más pequeñas o abrir nuevas sucursales hoy. Tienes la base para convertirte en el líder indiscutible del mercado; no desperdicies este momento histórico de solidez patrimonial y actúa con ambición hoy mismo neta.', 
'Bloque C - Auditoría Trimestral 4Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 82. Deuda a Activos Tangibles (deuda_tangibles_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_tangibles_4Q', 2025, 2025, '4Q', 'success', 
'Tus activos físicos cierran el año como un pilar inexpugnable de tu solvencia corporativa, con una cobertura patrimonial que blinda totalmente tu propiedad institucional hoy día neta. Has logrado que MAS CONSULTA sea dueña real de su infraestructura básica técnica, dándote una autoridad moral y financiera para negociar de pie ante cualquier auditor bancario.', 
'Lo negativo es que cerrar el año con tantos activos propios puede llevarte a una zona de confort tecnológico donde dejes de invertir en la modernización digital que el mercado exige hoy. No permitas que tener los equipos pagos sea una excusa para operar con herramientas obsoletas; tu balance debe reflejar siempre la vanguardia de tu servicio hoy.', 
'Diseña hoy mismo un presupuesto de inversión tecnológica masiva para el próximo Q1 de 2026, asegurando que tu fuerza de consultoría tenga las mejores herramientas del mundo neta. Usa tu impecable relación deuda-tangibles para captar leasing preferencial si es necesario, manteniendo siempre la modernidad como tu bandera de calidad regional hoy día.', 
'Bloque C - Auditoría Trimestral 4Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 83. Ratio de Propiedad / Autonomía (propiedad_autonomia_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'propiedad_autonomia_4Q', 2025, 2025, '4Q', 'success', 
'Eres al cierre de 2025 el dueño absoluto y soberano del noventa por ciento de tu firma consultora estratégica en el país, un logro de independencia patrimonial total hoy neta. Has alcanzado la cima de la autonomía financiera, lo que te permite decidir sobre el futuro de MAS CONSULTA sin interferencias externas, garantizando tu visión de largo plazo hoy.', 
'Esa autonomía total puede aislarte de las exigencias de eficiencia que imponen los mercados financieros globales a las empresas de alto crecimiento nacional hoy día neta hoy. No permitas que ser el dueño de "todo" te impida ver las oportunidades de mejora operativa que ojos externos podrían detectar en tu estructura de toma de decisiones anuales.', 
'Te sugiero que crees un comité de expertos externos de alto nivel que desafíen tus planes estratégicos para el 2026 de forma periódica y rigurosa a partir de hoy mismo neta. Ya tienes la autonomía financiera del dueño, ahora busca la sofisticación de las grandes corporaciones para que tu liderazgo sea verdaderamente indestructible hoy día neta.', 
'Bloque C - Auditoría Trimestral 4Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 84. Relación Deuda / Patrimonio (deuda_patrimonio_4Q)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'deuda_patrimonio_4Q', 2025, 2025, '4Q', 'success', 
'Finalizas el ciclo maestro de 2025 con una relación deuda-patrimonio que es la envidia de cualquier tesorero del sector de servicios profesionales regional neta hoy día neta. Has logrado que tu patrimonio sea el motor que impulsa toda la operación, dándote una solidez de roca para enfrentar cualquier incertidumbre económica con total éxito hoy.', 
'Vigila que esta fuerza patrimonial no se vea afectada por una repartición de dividendos demasiado agresiva en este cierre de diciembre de 2025 por un impulso personal hoy. Si descapitalizas la empresa ahora que está en su mejor momento, podrías entrar al 2026 con una fragilidad estructural que te quite poder de reacción ante nuevos socios hoy.', 
'Te sugiero que mantengas la mayoría de las utilidades dentro del balance para iniciar el próximo ciclo con un músculo patrimonial histórico y ganador en todo el país hoy. Tu empresa ha demostrado ser una máquina de generar solvencia y riqueza real; no la debilites ahora que está en la cima estructural y reputacional del mercado colombiano neta.', 
'Bloque C - Auditoría Trimestral 4Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();
