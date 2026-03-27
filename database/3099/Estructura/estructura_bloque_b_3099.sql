-- SQL Dump: Módulo Estructura (Empresa 3099) - Bloque B (Auditoría Anual 2023-2025)
-- Registros: 21 (7 indicadores x 3 años)
-- Estándar: +40 palabras por sección, Tono Gerencia-a-Gerencia
-- Protocolo: v4.6 Cero Reprocesos con UPSERT Integrity

-- =================================================================================
-- AÑO 2023: ARRANQUE CON SOBERANÍA TOTAL
-- =================================================================================

-- 1. Cobertura de Activos Fijos
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'cobertura_fijos', 2023, 2023, 'Annual', 'success', 
'Al cierre del 2023, lograste que tu patrimonio cubriera perfectamente la totalidad de tus activos fijos e inversiones de largo plazo. Esta paridad (1.0x) indica que no has tenido que empeñar el futuro de la empresa ni sus activos tangibles para sostener la operación diaria, lo que te da una base de seguridad patrimonial envidiable.', 
'Sin embargo, estar justo en el límite de la cobertura significa que no tienes margen de maniobra para nuevas adquisiciones de infraestructura sin recurrir a deuda externa o a una nueva inyección de capital. Tu estructura está "al ras" en cuanto a respaldo de activos fijos, lo que podría limitar tu capacidad de modernización tecnológica rápida si el mercado lo exige.', 
'Te recomiendo que para el próximo año busques generar excedentes que fortalezcan esta cobertura por encima de 1.2x. Debes capitalizar la empresa para que el patrimonio no solo cubra lo que ya tienes, sino que cree un fondo de reserva para la renovación de equipos y software sin depender de terceros en el corto plazo.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 2. Estructura de la Deuda
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'estructura_deuda', 2023, 2023, 'Annual', 'success', 
'Tu estructura de pasivos al cierre de 2023 es extremadamente limpia, con una nula dependencia de deudas de corto plazo bancarias. Es notable cómo has evitado el ciclo de los créditos rotativos que suelen asfixiar los márgenes de las consultoras pequeñas, manteniendo una libertad total sobre tus flujos de caja operativos desde el primer día.', 
'El riesgo latente de no tener una estructura de deuda definida es la falta de historial crediticio empresarial robusto. Al financiarte exclusivamente con recursos propios, los bancos no conocen tu comportamiento de pago bajo presión. En el futuro, cuando necesites un crédito grande para expansión estratégica, podrías encontrar barreras por no haber construido una relación financiera estructurada antes.', 
'Empieza a utilizar pequeñas líneas de crédito de tesorería de manera controlada para "educar" al sistema financiero sobre tu capacidad de pago. No es por necesidad de dinero, sino por estrategia de reputación crediticia. Debes aparecer en el mapa de los bancos como un cliente solvente y con historial para asegurar tu crecimiento futuro.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 3. Multiplicador de Capital
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'multiplicador_capital', 2023, 2023, 'Annual', 'success', 
'Tu multiplicador de capital de 1.5x es el punto de equilibrio perfecto entre seguridad y crecimiento. Significa que por cada peso que has puesto de tu bolsillo, la empresa tiene 1.5 pesos en activos. Es un nivel de apalancamiento muy saludable que demuestra que estás usando el crédito externo con una prudencia magistral.', 
'Sin embargo, este nivel tan conservador indica que la rentabilidad sobre tu patrimonio (ROE) podría estar siendo penalizada. Estás siendo tan precavido con las deudas que el negocio no está aprovechando la potencia de los recursos ajenos para multiplicar tus beneficios finales. En el mundo financiero, ser demasiado seguro a veces significa crecer mucho más lento que el mercado.', 
'Evalúa subir gradualmente este multiplicador hasta 1.8x o 2.0x si tienes proyectos con contratos firmados que lo respalden. El apalancamiento no es malo si el retorno del proyecto supera con creces el costo del dinero. Debes aprender a estirar tus recursos propios con inteligencia financiera para ganar escala sin perder el sueño por las deudas.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 4. Ratio de Capitalización
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'capitalizacion', 2023, 2023, 'Annual', 'success', 
'Tu ratio de capitalización es impecable, situándose muy por debajo del límite de alerta del 40%. Esta proporción muestra que tu estructura de fondeo de largo plazo está cimentada casi exclusivamente en capital propio y no en deudas onerosas, lo que blinda tu balance frente a cualquier crisis de tasas de interés externa.', 
'El aspecto negativo es que tu balance se ve "estático" desde la perspectiva de inversión. Al no tener deuda de largo plazo estructurada, pierdes la oportunidad de realizar amortizaciones programadas que optimicen tu flujo de caja anual. Estás viviendo con un balance de "pago de contado" para todo, lo cual es seguro pero financieramente muy rígido.', 
'Busca convertir tus excedentes de liquidez en inversiones de capital que sigan fortaleciendo tu patrimonio. La meta es que tu capitalización siga siendo baja por falta de deuda, pero alta por el crecimiento constante de tus utilidades retenidas. Asegúrate de reinvertir al menos el 30% de tus ganancias anuales para mantener este escudo protector.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 5. Deuda a Activos Tangibles
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'deuda_tangibles', 2023, 2023, 'Annual', 'success', 
'Mantuviste un ratio de deuda sobre activos tangibles de 0.50x, lo que significa que tus deudas totales representan solo la mitad del valor de lo que puedes "tocar" en tu balance. Tienes una garantía real sobrada para responder ante cualquier obligación externa, lo que te posiciona como un cliente de riesgo mínimo para cualquier entidad.', 
'La alerta aquí es que la valoración de tus activos tangibles podría estar desactualizada o sufriendo depreciación acelerada sin que lo notes. Si tus activos pierden valor contable más rápido de lo que amortizas tus compromisos, este indicador podría deteriorarse rápidamente sin previo aviso, comprometiendo tu solvencia futura ante imprevistos operativos fuertes.', 
'Realiza un avalúo técnico de tus activos principales al cierre de cada semestre. Necesitas tener una visión real del respaldo que tienes para tus deudas. No dejes que la depreciación contable te engañe sobre tu verdadera solidez patrimonial y asegúrate de renovar tu infraestructura antes de que pierda su valor de reventa comercial.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 6. Ratio de Propiedad (Autonomía)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'propiedad_autonomia', 2023, 2023, 'Annual', 'success', 
'Tu autonomía financiera del 67% es el mayor éxito de tu gestión en 2023. Dos de cada tres pesos que hay en la empresa son tuyos. Esta soberanía te permite tomar decisiones estratégicas audaces sin tener que pedir permiso a comités de riesgo bancario o a socios externos con intereses distintos a los tuyos en este año corporativo.', 
'El reverso de esta moneda es la baja diversificación de riesgo patrimonial. Casi toda tu riqueza está concentrada en una sola fuente (tu empresa). Si ocurriera una crisis sistémica en tu sector, no tienes "fuego cruzado" o deuda externa que comparta el riesgo patrimonial contigo. Estás 100% expuesto a las fluctuaciones de esta unidad de negocio individualmente.', 
'Considera la posibilidad de invitar a un socio estratégico con capital fresco si planeas una expansión ambiciosa, para no seguir estirando solo tu capital propio. La autonomía es buena para el control, pero la dilución inteligente es mejor para escalar el negocio exponencialmente sin comprometer toda tu estabilidad personal en el proceso.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 7. Relación Deuda / Patrimonio
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'deuda_patrimonio', 2023, 2023, 'Annual', 'success', 
'Cerraste el año con una relación Deuda/Patrimonio de 0.50x, muy por debajo del límite saludable de 1.5x. Esto significa que por cada peso que le debes a otros, tienes dos pesos de respaldo propio. Es una posición de solvencia patrimonial envidiable que garantiza la paz financiera a largo plazo para todos tus socios estratégicos.', 
'No obstante, una relación tan baja sugiere que no estás aprovechando la palanca financiera para maximizar el valor de la empresa. Podrías estar dejando de ganar dinero por el miedo a los pasivos. La deuda moderada y bien gestionada no es un problema sino un motor de aceleración que hoy tu empresa no está encendiendo por exceso de precaución.', 
'Define un rango de tolerancia para este indicador entre 0.8x y 1.2x. Mantenerse en este corredor te permitiría crecer con más velocidad aprovechando recursos externos sin poner nunca en riesgo real la viabilidad de la compañía. Aprende a convivir con un nivel de pasivo que sea productivo y no solo que sea bajo por inercia contable.', 
'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2024: EL AÑO DE LA PRUEBA ESTRUCTURAL Y RECUPERACIÓN
-- =================================================================================

-- 8. Cobertura de Activos Fijos
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'cobertura_fijos', 2024, 2024, 'Annual', 'info', 
'A pesar de la fuerte presión financiera que viviste a mitad de año, cerraste el 2024 con una cobertura de activos fijos de 1.1x. Esto indica que lograste rescatar tu posición patrimonial y que tus activos de largo plazo vuelven a estar 100% respaldados por tu capital propio, dándote una segunda oportunidad de estabilidad financiera tras la crisis.', 
'El aspecto negativo es la extrema volatilidad que sufrió este indicador en el segundo trimestre, llegando a caer por debajo del 0.8x. Estuviste en una posición donde tus activos fijos estaban siendo financiados con deuda de corto plazo de alto riesgo. Esa "desprotección patrimonial" temporal pudo haber sido fatal si los bancos hubieran cortado tus líneas de crédito de repente.', 
'Te recomiendo que crees un fondo de amortización específico para activos fijos. Debes blindar tu infraestructura operativa para que nunca más dependa de la volatilidad del flujo de caja mensual. La meta para el 2025 es que este indicador no baje del 1.2x bajo ninguna circunstancia, asegurando que tu patrimonio sea siempre tu primer y más fuerte escudo.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 9. Estructura de la Deuda
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'estructura_deuda', 2024, 2024, 'Annual', 'warning', 
'El 2024 demostró que tienes una capacidad de negociación rápida con proveedores. Durante los meses de mayor tensión estructural, lograste que tus pasivos de corto plazo no se desbordaran por completo, manteniendo una estructura de deuda técnica por debajo del 5% del pasivo total en la mayor parte del año corporativo.', 
'Sin embargo, esa baja estructura de deuda "formal" oculta una alta dependencia de obligaciones operativas de último minuto. Básicamente, estás financiando el negocio con deudas comerciales y no financieras, lo que te quita poder de negociación de plazos largos. Tu estructura de deuda es reactiva: solo pides cuando ya no tienes opción, lo que encarece tus costos operativos indirectos.', 
'Es hora de que estructures una deuda financiera de largo plazo real. No esperes a que tu flujo de caja esté apretado para hablar con el banco; aprovecha el buen cierre de este año para asegurar una línea de crédito senior que limpie tu balance de deudas pequeñas y te dé un respiro estratégico real para el próximo trienio.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 10. Multiplicador de Capital
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'multiplicador_capital', 2024, 2024, 'Annual', 'warning', 
'Al cierre del 2024 lograste estabilizar tu multiplicador de capital en 1.39x, recuperando el control total tras haber tocado techos peligrosos de 1.8x en el segundo trimestre. Es notable cómo has entendido que el apalancamiento excesivo en una consultora de servicios puede ser un arma de doble filo si no se maneja con prudencia financiera.', 
'El punto negro del año fue el desbalance de abril, donde el multiplicador se disparó. Esa falta de control temporal indica que no tienes un sistema de alertas tempranas estructurales. Operaste a ciegas durante casi tres meses antes de corregir el rumbo, lo que puso en riesgo la solvencia neta de la compañía ante tus socios y acreedores estratégicos en ese periodo.', 
'Implementa un semáforo de apalancamiento mensual en tu tablero de control gerencial. Si el multiplicador llega a tocar el 1.6x, el negocio debe frenar cualquier gasto no esencial de inmediato. No permitas que la inercia del día a día te vuelva a llevar a niveles de estrés financiero que ya demostraron ser peligrosos para tu tranquilidad personal.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 11. Ratio de Capitalización
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'capitalizacion', 2024, 2024, 'Annual', 'success', 
'A pesar de los retos, tu ratio de capitalización sigue siendo tu mayor fortaleza. Estás cerrando el 2024 con una estructura de fondeo de largo plazo 100% propia, lo que te garantiza que el control total de la empresa sigue en tus manos. Has evitado la entrada de capitales externos que pudieran diluir tu visión del negocio consultor.', 
'El reverso negativo es la descapitalización temporal que sufriste a mitad de año para cubrir vencimientos operativos. Tuviste que usar utilidades acumuladas para apagar incendios de corto plazo, lo que frenó tu plan de inversiones estratégicas para este ciclo. Estás usando tu capital de largo plazo para arreglar baches que deberían resolverse con flujos operativos normales.', 
'Define una reserva de capitalización intocable del 20% de las utilidades anuales. Ese dinero no debe usarse para capital de trabajo, sino solo para el crecimiento del patrimonio neto de la compañía. Necesitas que tu empresa se vuelva "más rica" contablemente cada año para que tu posición de negociación sea cada vez más imbatible ante terceros.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 12. Deuda a Activos Tangibles
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'deuda_tangibles', 2024, 2024, 'Annual', 'info', 
'Tu disciplina para amortizar deudas en el último trimestre te permitió terminar el año con un ratio de deuda a activos tangibles de 0.39x. Es una mejora sustancial comparado con el pico de 0.82x que viste en abril, demostrando que tienes el control sobre tus deudas cuando decides priorizar la limpieza de tu balance patrimonial.', 
'La nota negativa es que durante casi la mitad del año operaste con un nivel de deuda que superaba tu respaldo tangible (Target < 60%). Básicamente, estuviste operando sobre el aire de tu marca y conocimiento, sin activos físicos reales que respaldaran tus deudas comerciales. Esa posición es de alto riesgo si el mercado pierde confianza en tu capacidad técnica.', 
'Empieza a capitalizar tus intangibles de manera formal si es posible, pero sobre todo, sigue comprando activos fijos que le den "peso" a tu balance. Necesitas que tus deudas tengan siempre un respaldo físico superior al 40% de su valor. No dejes que el éxito de la consultora te haga descuidar la base física de respaldo que tus acreedores siempre van a mirar.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 13. Ratio de Propiedad (Autonomía)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'propiedad_autonomia', 2024, 2024, 'Annual', 'success', 
'Terminas el 2024 con la autonomía más alta registrada: 72%. Es un logro monumental haber pasado del 55% al 72% en solo 8 meses. Esta recuperación de la soberanía financiera indica que el negocio ha generado excedentes sanos que se han quedado dentro de la compañía para fortalecer tu posición de dueño absoluto.', 
'El aspecto negativo es el costo emocional y operativo de esa recuperación tan agresiva. Para subir tu autonomía del 55% al 72% tuviste que frenar gastos que quizás eran necesarios para la moral del equipo o para la visibilidad de tu marca. Has priorizado la seguridad estructural sobre la velocidad de crucero del negocio, lo que podría pasarte factura en términos de posicionamiento competitivo.', 
'Planifica para el 2025 un crecimiento que no sacrifique tu autonomía por debajo del 65%. Ya aprendiste que el 55% es tu límite de estrés; no vuelvas a pisar esa zona roja. Usa el exceso de autonomía actual para ser más generoso con tus inversiones en talento humano, asegurando que tu fortaleza financiera se traduzca también en una fortaleza comercial impecable.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 14. Relación Deuda / Patrimonio
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'deuda_patrimonio', 2024, 2024, 'Annual', 'success', 
'Tu ratio deuda/patrimonio cerró el año en un nivel extraordinario de 0.39x, muy lejos de la señal de alerta del 1.50x. Tienes un balance de "oro" para el sistema financiero, lo que te posiciona como un cliente Triple A para cualquier banco que quiera financiar tu próxima gran expansión estratégica en el sector de servicios.', 
'No obstante, esa baja utilización del pasivo indica que podrías estar siendo "demasiado bueno" financiando a tus propios clientes con tu patrimonio. Estamos viendo que tu solidez estructural está absorbiendo los retrasos de pago de tus proyectos, lo que le quita eficiencia a tu capital propio. Básicamente, tu patrimonio está trabajando gratis para otros en este cierre de gestión.', 
'Establece una política de cobro por mora administrativa a tus clientes habituales. No permitas que tu bajísima deuda patrimonio sea la excusa para que otros se financien con tus recursos personales. Debes exigir la misma disciplina estructural a tus deudores que la que tú te impones a ti mismo para mantener este indicador en niveles de excelencia mundial.', 
'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- =================================================================================
-- AÑO 2025: CONSOLIDACIÓN Y OPTIMIZACIÓN ESTRATÉGICA
-- =================================================================================

-- 15. Cobertura de Activos Fijos
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'cobertura_fijos', 2025, 2025, 'Annual', 'success', 
'Mantienes una cobertura de activos fijos del 1.1x de forma constante durante todo el 2025. Has logrado que tu base patrimonial sea el soporte real de tu infraestructura, lo que te permite operar con una seguridad técnica total. Es notable la estabilidad que has inyectado a este indicador tras la volatilidad de los años anteriores.', 
'La nota de precaución es que este ratio no ha mostrado un crecimiento significativo a pesar del aumento en tus utilidades. Estás manteniendo una cobertura de "mantenimiento" pero no de "expansión". Si planeas una renovación masiva de tecnología para el próximo año, tu estructura actual se vería rápidamente presionada si no inyectas capital fresco preventivamente.', 
'Planifica una inversión en activos fijos que sea proporcional a tu crecimiento de ventas. Debes buscar que tu base de activos tangibles crezca al menos un 15% anual para no quedar obsoleto tecnológicamente. Usa tus excedentes para modernizar la operación y mantén tu cobertura siempre un paso adelante de tus necesidades mínimas de resguardo.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 16. Estructura de la Deuda
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'estructura_deuda', 2025, 2025, 'Annual', 'success', 
'Tu estructura de deuda en el 2025 es un ejemplo de disciplina. Has eliminado prácticamente toda dependencia de créditos de corto plazo bancarios, permitiendo que tu flujo de caja sea libre y soberano. Esta limpieza en tu pasivo corriente es tu mejor carta de presentación para cualquier inversionista o socio que quiera unirse a tu visión empresarial.', 
'Sin embargo, esta pureza estructural puede ser síntoma de un crecimiento orgánico demasiado lento. Al no usar deuda estructurada, estás limitando tu capacidad de escala a lo que tu propio bolsillo permite mes a mes. Estás dejando pasar oportunidades de mercado simplemente porque no quieres "contaminar" tu balance con pasivos que, bien gestionados, serían motores de riqueza.', 
'Te sugiero que busques un apalancamiento estratégico del 20% sobre tus activos totales. No es por falta de recursos, sino para acelerar la penetración de mercado. Debes ver la deuda no como un problema, sino como una herramienta de velocidad empresarial que hoy tienes guardada en el cajón por exceso de proteccionismo patrimonial.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 17. Multiplicador de Capital
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'multiplicador_capital', 2025, 2025, 'Annual', 'success', 
'Tu multiplicador de capital cerró el 2025 en 1.46x. Es un nivel de eficiencia impecable para una consultora que ya superó su fase de supervivencia y está en fase de maduración. Tienes la mezcla perfecta entre recursos propios y ajenos, lo que garantiza que el valor de tu patrimonio se multiplique sin poner en riesgo la viabilidad del negocio.', 
'La alerta moderada es que este indicador tiende a estancarse. Notamos que no hay variaciones estratégicas en tu apalancamiento, lo que sugiere que estás en una zona de confort financiera. Si el mercado se vuelve más agresivo o entra un competidor con gran respaldo de capital, tu estructura actual podría ser demasiado lenta para defender tu cuota de mercado actual.', 
'Define proyectos de expansión que requieran un aumento controlado de tu apalancamiento hasta 1.7x. Aprovecha tu buena reputación para captar fondos que te permitan innovar en nuevos servicios digitales o inteligencia artificial aplicada. Debes usar tu solidez para ser el que impone el ritmo en el sector y no solo el que se protege bien.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 18. Ratio de Capitalización
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'capitalizacion', 2025, 2025, 'Annual', 'success', 
'Tu ratio de capitalización en 2025 sigue siendo excepcionalmente bajo, lo que confirma que tu crecimiento es genuino y basado en utilidades reales. Eres dueño absoluto de tu estrategia de largo plazo, lo que te blinda contra presiones de socios capitalistas externos que podrían priorizar el dividendo inmediato sobre la salud de la empresa.', 
'Sin embargo, una capitalización tan baja por falta de deuda de fomento te quita los beneficios del apalancamiento operativo a gran escala. Estás financiando toda tu I+D (Investigación y Desarrollo) con flujo de caja corriente, lo que le resta agresividad a tus lanzamientos. Tu estructura es muy sólida, pero financieramente le falta un poco de "pimienta" crediticia para saltar al siguiente nivel.', 
'Evalúa la toma de un crédito de fomento para innovación tecnológica con plazos de gracia extendidos. Esto te permitiría capitalizar tu conocimiento sin afectar tu flujo de caja diario por al menos 12 meses. Aprovecha tu bajísima capitalización actual para tomar un riesgo inteligente que transforme tu portafolio de servicios corporativos.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 19. Deuda a Activos Tangibles
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'deuda_tangibles', 2025, 2025, 'Annual', 'success', 
'Mantuviste el indicador de deuda a activos tangibles en un saludable 0.48x al cierre del 2025. Tus deudas totales están respaldadas más de dos veces por tus activos físicos, lo que te da una solvencia técnica incuestionable. Has logrado que la empresa crezca sin "inflar" su balance con activos ficticios o valoraciones de marca arriesgadas.', 
'La nota negativa es que tu base de activos tangibles es pequeña para el volumen de facturación que manejas. Si bien eres eficiente, tu falta de "cuerpo físico" en el balance podría ser una debilidad si el entorno fiscal o regulatorio cambia y exige mayores garantías patrimoniales físicas. Estás operando de forma muy liviana, lo que es ágil pero a veces se percibe como frágil ante terceros conservadores.', 
'Invierte en la adquisición de activos fijos estratégicos que tengan valor de mercado estable. Considera comprar tu propia sede operativa o bodegas logísticas si el negocio lo permite. Debes darle "peso real" a tu balance para que tu solvencia no sea solo un número contable, sino una realidad física indiscutible ante cualquier auditor externo.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 20. Ratio de Propiedad (Autonomía)
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'propiedad_autonomia', 2025, 2025, 'Annual', 'success', 
'Cierras el trienio con una autonomía del 68%. Es un balance magistral de soberanía financiera. Has logrado que el negocio florezca manteniendo el control total del timón, sin ceder ante las presiones del sistema financiero bancario tradicional. Esta independencia es tu mayor activo intangible al finalizar este ciclo estratégico del 2025.', 
'El riesgo es el estancamiento patrimonial por falta de nuevos socios. Al ser tan autónomo, podrías estar perdiendo la visión fresca de un socio externo que te ayude a ver oportunidades que tú, por estar en la operación diaria, quizás ignoras. La autonomía absoluta a veces se convierte en una burbuja que impide el crecimiento exponencial por falta de contraste estratégico.', 
'Considera la creación de un consejo consultivo externo que te de feedback sobre tu estructura de propiedad. No es necesario vender acciones, pero sí abrir el negocio a miradas críticas que te ayuden a usar esa autonomía financiera para conquistar mercados internacionales. Debes transformar tu seguridad patrimonial en una plataforma de lanzamiento global.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();

-- 21. Relación Deuda / Patrimonio
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3099, 'deuda_patrimonio', 2025, 2025, 'Annual', 'success', 
'Terminas el 2025 con una relación Deuda/Patrimonio de 0.47x. Es una cifra que grita solvencia y solidez por todos los costados. Has demostrado que sabes gestionar el capital de trabajo con eficiencia sin comprometer nunca la viabilidad patrimonial de la empresa, lo que te deja en una posición de poder total para el inicio del nuevo ciclo 2026.', 
'La alerta final es sobre la retención excesiva de utilidades. Notamos que tu patrimonio está creciendo a un ritmo que supera tus necesidades de inversión. Esto podría indicar que no estás reinvirtiendo lo suficiente en innovación o en la mejora de la infraestructura técnica del negocio. Estás acumulando solidez, pero quizás a costa de no sembrar lo suficiente para el futuro tecnológico del sector.', 
'Define un plan de inversión agresivo para los próximos 24 meses. Usa esa bajísima deuda/patrimonio para financiar la transformación digital total de tu consultora. No permitas que tu empresa se convierta en una caja fuerte llena de dinero; haz que sea un motor de valor constante que use su inmensa solvencia para liderar el cambio en el mercado.', 
'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET 
tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, generado_por = EXCLUDED.generado_por, created_at = NOW();
