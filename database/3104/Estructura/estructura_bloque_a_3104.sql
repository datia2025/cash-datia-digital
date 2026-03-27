-- SQL Dump: Módulo Estructura (Empresa 3104) - Bloque A (Insights Maestros 2023-2025)
-- Registros: 15 (1 Anual + 4 Trimestrales x 3 años)
-- Estándar: +40 palabras por sección, Tono Gerencia-a-Gerencia
-- Workflow: EN-06 (AI-to-SQL Dump) con Regla de Unicidad Trimestral (IC-05)

-- =================================================================================
-- AÑO 2023
-- =================================================================================

-- 2023 ANNUAL
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai', 2023, 2023, 'Annual', 'success', 
'A lo largo del 2023, lograste mantener una estructura de fondeo bastante envidiable para una firma de consultoría. Tu independencia de los bancos es tu mayor fortaleza hoy; básicamente, el negocio se sostiene con tu propio esfuerzo y recursos, lo que te da una libertad de maniobra total para tomar decisiones sin tener a un acreedor respirándote en la nuca cada fin de mes.', 
'Sin embargo, esa misma soledad financiera significa que todo el riesgo recae sobre tu espalda. Al no tener una estructura de deuda de largo plazo bien definida, cualquier bache en tu recaudo mensual te obliga a sacrificar tu propio capital o a frenar tu crecimiento personal. Estás operando con un cinturón de seguridad que, aunque es tuyo, es muy estrecho para las ambiciones de expansión que has mostrado en los comités.', 
'Te recomiendo que empieces a construir una relación más estratégica con el sistema financiero para diversificar tus fuentes de fondeo. No esperes a necesitar el dinero para pedirlo; aprovecha tu buena salud actual para asegurar líneas de crédito que protejan tu patrimonio personal. Debes separar gradualmente tu riqueza propia de la operación diaria para que la consultora aprenda a financiarse sola y con inteligencia.', 
'Bloque A - Dictamen Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2023 1Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_1Q', 2023, 2023, '1Q', 'success', 
'Arrancaste el primer trimestre de 2023 con una base de capital muy sólida que protege tus activos fijos de manera impecable. Es gratificante ver cómo has logrado que tu conocimiento y tu marca sean el motor principal, sin necesidad de empeñar la oficina ni los equipos para que la operación funcione con normalidad en este inicio de año.', 
'La alerta aquí no es por falta de dinero, sino por la rigidez de tus pasivos de corto plazo que empezaron a asomarse en estos tres meses. Si permites que las deudas con proveedores o impuestos se acumulen por encima de tu capacidad de giro inmediato, podrías comprometer esa autonomía que tanto te ha costado construir desde que fundaste la firma de servicios.', 
'Asegura que tu estructura de obligaciones comerciales esté alineada con tus hitos de facturación trimestral. Debes negociar plazos más largos con tus proveedores estratégicos para que tu patrimonio no tenga que salir al rescate ante cualquier retraso de tus clientes. Mantén tu capital propio como un escudo de reserva y no como una caja menor para cubrir gastos operativos diarios.', 
'Bloque A - Dictamen Trimestral 1Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2023 2Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_2Q', 2023, 2023, '2Q', 'info', 
'A mitad de año, tu estructura de propiedad sigue demostrando que eres el dueño absoluto de tu destino financiero. Tu nivel de autonomía es alto, lo que significa que por cada peso que el negocio debe fuera, tú tienes un respaldo mucho mayor en tus propios libros, dándote una seguridad patrimonial que pocos colegas del sector consultoría pueden presumir hoy.', 
'El riesgo oculto en este trimestre es que tu estructura de deuda está demasiado concentrada en el corto plazo. Básicamente, estás viviendo al día con tus obligaciones, lo que te impide planificar inversiones de largo aliento en tecnología o en nuevo talento senior. La falta de una deuda de largo plazo estructurada te mantiene atrapado en un ciclo de urgencias operativas constantes.', 
'Es momento de que evalúes convertir parte de tus compromisos inmediatos en obligaciones de largo plazo que te den respiro. Debes buscar que tu estructura de fondeo trabaje para ti y no que tú seas un esclavo de los vencimientos de fin de mes. Reorganiza tu pasivo para que el crecimiento de la consultora no dependa exclusivamente de tu flujo de caja de la próxima semana.', 
'Bloque A - Dictamen Trimestral 2Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2023 3Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_3Q', 2023, 2023, '3Q', 'warning', 
'En este tercer trimestre, resalta la capacidad de tus activos tangibles para respaldar casi la totalidad de tus deudas. Tienes una garantía real muy fuerte en relación con lo que le debes al mercado, lo que te posiciona como un cliente de bajo riesgo y muy alta confiabilidad ante cualquier entidad que decida apoyarte en tus planes de expansión.', 
'La alerta roja se enciende por el multiplicador de tu capital, que indica que estás forzando tu patrimonio para sostener una operación que crece pero no se capitaliza al mismo ritmo. Si sigues estirando la cuerda de tus recursos propios sin inyectar capital fresco o utilidades retenidas, podrías enfrentar un quiebre de solvencia si un proyecto grande llega a fallar repentinamente.', 
'Ponle un freno al crecimiento desordenado que no esté respaldado por tu bolsillo. Debes priorizar la retención de utilidades de estos tres meses para fortalecer tu base patrimonial antes de cerrar el año. Asegura que cada nuevo contrato de consultoría deje un margen que alimente tu reserva legal y no solo que cubra los gastos administrativos que se han disparado últimamente.', 
'Bloque A - Dictamen Trimestral 3Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2023 4Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_4Q', 2023, 2023, '4Q', 'success', 
'Cerraste el último trimestre del año con una relación entre tus deudas y tu patrimonio muy equilibrada. No estás sobreendeudado, lo que te permite terminar el ejercicio con la tranquilidad de que tu empresa sigue siendo mayoritariamente tuya y no de los bancos o de terceros, protegiendo así el legado y el esfuerzo de todo un año de trabajo.', 
'Ten cuidado con la composición de tu deuda al cierre; casi todo lo que debes es exigible ya mismo. Esta estructura de pasivos "al cuello" empaña un poco tus buenos resultados, ya que te obliga a iniciar el 2024 con una presión de recaudo asfixiante. No permitas que el éxito comercial te haga olvidar la importancia de tener deudas sanas y bien distribuidas en el tiempo.', 
'Haz un barrido de tus cuentas por pagar y trata de sanear las más costosas antes del balance final. Te recomiendo que para el próximo año proyectes una estructura de capitalización más formal, donde la deuda de largo plazo te permita financiar tus proyectos de innovación sin drenar tu capital de trabajo mensual. Tu solvencia futura depende de esta disciplina hoy.', 
'Bloque A - Dictamen Trimestral 4Q 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2024
-- =================================================================================

-- 2024 ANNUAL
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai', 2024, 2024, 'Annual', 'warning', 
'Durante el 2024, tu patrimonio se mantuvo como el pilar central que evitó que la empresa cayera en una situación de insolvencia mayor ante los retos operativos sufridos. Contar con un capital propio de casi 25 millones de pesos al cierre es lo que hoy te mantiene con vida en el ecosistema de consultoría colombiana, demostrando que tu base de activos es resiliente.', 
'El gran dolor de cabeza de este ciclo fue el aumento del peso de tus deudas externas frente a tu capital propio. Te has vuelto más dependiente de los recursos de terceros para sobrevivir que en el año anterior, lo que ha reducido tu margen de independencia estratégica. Estás caminando por una línea delgada donde tu autonomía financiera empieza a verse hipotecada por la operación.', 
'Es vital que recuperes tu independencia inyectando nuevamente utilidades a tu balance. Debes evitar a toda costa seguir financiando las pérdidas operativas con más deuda, ya que esto crea un círculo vicioso que terminará por devorar tu patrimonio neto. Tu objetivo para el próximo periodo debe ser volver a ser el dueño del 80% de tu balance y reducir la influencia externa.', 
'Bloque A - Dictamen Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2024 1Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_1Q', 2024, 2024, '1Q', 'info', 
'En este arranque de 2024, lograste que tu estructura de cobertura de activos fijos sea muy holgada. Esto significa que todo lo que tienes en propiedad (muebles, tecnología, oficina) está pagado con tu propio bolsillo y no le pertenece a nadie más, dándote una base sólida y libre de gravámenes para operar tu firma de consultoría con tranquilidad.', 
'La alerta se centra en el ratio de capitalización, que muestra que tus deudas de largo plazo son prácticamente inexistentes. Aunque parezca bueno no deber, en realidad estás perdiendo la oportunidad de usar el dinero de otros para crecer más rápido sin arriesgar tu propia caja quincenal. Estás financiando toda la maquinaria con dinero caro y propio, lo cual es ineficiente estratégicamente.', 
'Debes buscar un apalancamiento inteligente que no comprometa tu bolsillo inmediato. Te sugiero que busques un crédito para activos fijos que te permita liberar tu capital de trabajo para la contratación de consultores senior. No sigas ahorcando tu patrimonio en compras que podrías financiar a 36 meses con tasas competitivas que hoy podrías conseguir por tu buen historial.', 
'Bloque A - Dictamen Trimestral 1Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2024 2Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_2Q', 2024, 2024, '2Q', 'warning', 
'A mitad de 2024, tu patrimonio sigue siendo capaz de absorber todos tus pasivos tangibles, lo que te da un respiro de seguridad ante una posible liquidación de emergencia. Tienes el control de los hilos del negocio y tu palabra ante tus acreedores comerciales sigue teniendo el peso de un respaldo contable real y verificable en tus estados financieros trimestrales.', 
'Lo preocupante en este trimestre es el multiplicador de capital, que se está disparando hacia niveles que indican sobrendeudamiento operativo. Estás usando demasiada deuda proporcional para sostener activos que no están generando la rentabilidad esperada. Básicamente, estás "inflando" el tamaño de tu empresa con dinero que no es tuyo, elevando el riesgo de insolvencia repentina.', 
'Cierra el grifo del endeudamiento comercial de inmediato y enfócate en la eficiencia. Tu patrimonio actual no puede cargar con una estructura de deudas tan pesada por mucho más tiempo sin verse gravemente afectado. Debes depurar tus pasivos y quedarte solo con aquellos que generen un retorno directo a la operación de la consultora antes de que acabe el trimestre.', 
'Bloque A - Dictamen Trimestral 2Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2024 3Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_3Q', 2024, 2024, '3Q', 'danger', 
'La buena noticia es que tu autonomía financiera todavía se mantiene por encima del umbral crítico. A pesar de los retos, más de la mitad de tus activos siguen siendo propiedad de los socios, lo cual es una defensa vital que te permitirá negociar con fuerza cualquier reestructuración necesaria para enderezar el rumbo de la consultora en este periodo.', 
'Sin embargo, tu relación deuda-patrimonio ha tocado niveles peligrosos en estos tres meses. Estas comprometiendo casi todo tu patrimonio para respaldar las operaciones actuales, dejando a la empresa en una situación de "vulnerabilidad máxima" ante cualquier imprevisto del mercado. Tu bolsillo propio ya no tiene capacidad para absorber más golpes sin ver comprometida su existencia legal diaria.', 
'Urge una capitalización inmediata o un recorte drástico de tus pasivos circulantes. No permitas que la consultora se convierta en una empresa que trabaja únicamente para pagar deudas y donde tú, como dueño, te quedas con el riesgo total pero sin beneficios reales. Debes rediseñar tu estructura de fondeo para que sea el negocio el que respalde las deudas y no tu patrimonio personal.', 
'Bloque A - Dictamen Trimestral 3Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2024 4Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_4Q', 2024, 2024, '4Q', 'info', 
'Cierras el 2024 con una estructura de activos tangibles que todavía supera a tus pasivos, lo que garantiza que MAS CONSULTA no sea una empresa hueca. Tienes valor real atrapado en tus libros que te servirá de trampolín para la recuperación masiva que planeas para el 2025, manteniendo la confianza de tus aliados estratégicos al final de este ciclo.', 
'Lo que te resta puntos es la debilidad de tu capitalización anual; no has logrado construir una reserva de largo plazo que te permita respirar. Has terminado el año con una estructura de fondeo "de emergencia" que es muy costosa y estresante de gestionar. Esta falta de visión a largo plazo en tu financiamiento es lo que ha frenado tu capacidad de inversión este año.', 
'Tu meta número uno para el cierre es consolidar tus deudas. Te recomiendo que uses parte de tus ingresos de fin de año para sanear tu relación de patrimonio y empezar el nuevo ejercicio con una hoja limpia. Debes buscar una estructura donde el 70% de tus recursos sean propios y solo el 30% sea deuda estratégica de largo plazo. Esa es la verdadera salud financiera.', 
'Bloque A - Dictamen Trimestral 4Q 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2025
-- =================================================================================

-- 2025 ANNUAL
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai', 2025, 2025, 'Annual', 'success', 
'El 2025 ha sido el año de tu gran salto patrimonial, logrando multiplicar tu base de capital por cinco hasta superar los 122 millones de pesos. Este fortalecimiento masivo de tu estructura de propiedad te saca de la zona de riesgo y te posiciona como un jugador robusto y solvente, consolidando finalmente la riqueza de los socios dentro del balance institucional.', 
'Ten cuidado de no caer en la ineficiencia que trae el exceso de capital ocioso tras este crecimiento tan brusco. Al tener un patrimonio tan alto, tu riesgo ahora no es la quiebra, sino la falta de rentabilidad sobre ese dinero acumulado. No permitas que MAS CONSULTA se convierta en un depósito de capital dormido que no genera los retornos que tus activos ahora demandan técnicamente.', 
'Debes poner a trabajar ese nuevo capital de inmediato para elevar tu escala de negocio. Usa tu solvencia récord para capturar contratos internacionales o de mayor envergadura que antes evitabas por falta de respaldo. Tu meta para el cierre del ciclo debe ser optimizar la rotación de este gran patrimonio para que cada peso invertido se multiplique con la misma agilidad inicial.', 
'Bloque A - Dictamen Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2025 1Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_1Q', 2025, 2025, '1Q', 'success', 
'Arrancaste el 2025 con una inyección de solvencia que ha disparado tu ratio de propiedad a niveles históricos. Eres más dueño de tu negocio que nunca, lo que te otorga una autonomía estratégica total para rechazar proyectos de bajo margen y enfocarte únicamente en lo que verdaderamente hace crecer tu bolsillo y tu marca de consultoría en el mercado local.', 
'El indicador de capitalización sigue en cero, lo que significa que a pesar de ser muy rico en patrimonio, todavía no has aprendido a usar la deuda de largo plazo como una palanca de crecimiento inteligente. Estás financiando toda la operación con tu propia riqueza, lo cual, aunque es muy seguro, limita tu capacidad de expandirte agresivamente sin tocar tus ahorros propios.', 
'Usa tu excelente solvencia trimestral para negociar una estructura de fondeo híbrida con tu banco de cabecera. Convierte tu fortaleza patrimonial en poder de negociación para obtener créditos de inversión que te permitan escalar tu infraestructura tecnológica sin afectar tu liquidez operativa. No dejes que todo el peso del crecimiento recaiga únicamente sobre tus utilidades del periodo.', 
'Bloque A - Dictamen Trimestral 1Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2025 2Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_2Q', 2025, 2025, '2Q', 'info', 
'A mitad de 2025, tu estructura de cobertura de activos fijos es de las mejores del sector, demostrando que posees una de las firmas de consultoría más sólidas institucionalmente hablando. Tienes un respaldo propio para tus equipos y tecnología que garantiza que tu capacidad instalada operativa sea indestructible ante cualquier crisis de crédito externa o bancaria.', 
'La alerta aquí es por el multiplicador de capital, que al ser tan bajo, indica que podrías estar siendo demasiado conservador con tu estructura financiera. Básicamente, tienes el motor a media marcha; podrías estar usando una pequeña dosis de deuda inteligente para potenciar tus resultados y maximizar el retorno sobre ese gran patrimonio que has consolidado este año.', 
'Te sugiero que busques inversiones tácticas que demanden fondeo externo para probar tu capacidad de apalancamiento seguro. No le tengas miedo a la deuda estratégica si ésta sirve para multiplicar tu capacidad de recaudo. Debes aprender a gestionar una estructura de capital un poco más dinámica que no solo dependa de tu ahorro acumulado para cada nuevo paso corporativo.', 
'Bloque A - Dictamen Trimestral 2Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2025 3Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_3Q', 2025, 2025, '3Q', 'success', 
'En este tercer trimestre, tu relación entre lo que debes y lo que tienes (deuda/patrimonio) se ha estabilizado en niveles de excelencia total. Estás operando con el menor riesgo financiero de los últimos tres años, lo que te brinda una paz mental invalorable y te permite concentrarte al 100% en la calidad técnica de tus servicios para tus clientes más exigentes.', 
'Cuidado con la estructura de tus deudas comerciales que todavía muestran una concentración en el corto plazo. No permitas que pequeños compromisos con proveedores o impuestos administrativos empañen tu gran solvencia patrimonial estorbando tu flujo de caja mensual. La desorganización en tus pasivos menores puede ser un ruido molesto en una operación por lo demás impecable.', 
'Debes profesionalizar la gestión de tus pasivos circulantes de inmediato para que coincidan con tus picos de ingreso. Asegura que tu tesorería trabaje de la mano con tu nueva realidad de empresa grande y solvente. Te recomiendo que uses tu peso patrimonial para imponer condiciones de pago más favorables que te permitan mantener el control total de tu caja quincenal.', 
'Bloque A - Dictamen Trimestral 3Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2025 4Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'insight-estructura-ai_4Q', 2025, 2025, '4Q', 'success', 
'Cierras este ciclo 2025 con una marca histórica de independencia financiera, donde el 75% de todo lo que posees es propiedad neta tuya y de tus socios. Es un cierre magistral que culmina tres años de evolución, pasando de una estructura frágil a una de solvencia absoluta que asegura la permanencia de MAS CONSULTA como un referente de solidez en el mercado.', 
'La única alerta real es la inercia de no tener una estructura de deuda de largo plazo estructurada; sigues confiando únicamente en tu capital. Esto, aunque te da seguridad de hierro, te impide aprovechar los beneficios fiscales y financieros que trae un apalancamiento bien gestionado. No permitas que el miedo a deber te impida optimizar el rendimiento total de tu gran base de activos.', 
'Felicidades por la solvencia alcanzada; ahora tu reto para el 2026 es la eficiencia del capital. Te recomiendo diseñar un plan de inversión agresivo que use tu patrimonio como palanca para atraer nuevos socios o líneas de crédito de fomento. Debes pasar de ser una empresa que "protege lo que tiene" a una que "usa lo que tiene para conquistar" nuevos mercados con inteligencia.', 
'Bloque A - Dictamen Trimestral 4Q 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();
