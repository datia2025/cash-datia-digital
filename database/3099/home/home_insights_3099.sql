-- =============================================
-- PROYECTO: Datia Liquidity Dashboard
-- EMPRESA: CARLOS TAMAYO Y ASOCIADOS S.A.S. (ID 3099)
-- MÓDULO: RESUMEN EJECUTIVO (HOME)
-- PERIODO: CIERRE 2025 (ANNUAL)
-- ESTÁNDAR: PROTOCOLO GERENCIA-A-GERENCIA (+40 PALABRAS)
-- FECHA GENERACIÓN: 24 de Marzo, 2026
-- =============================================

-- 1. PERFIL OPERATIVO Y ECONOMÍA
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES 
(3099, 'perfil-operativo', 2025, 'Annual', 'info', 
 'Carlos Tamayo y Asociados se consolida como una firma de consultoría con una estructura ligera en activos fijos pero con una alta dependencia del capital humano calificado. Su modelo de negocio se basa en la prestación de servicios profesionales, lo que le permite operar con un bajo nivel de inventarios y una estructura de costos principalmente variable, facilitando la adaptabilidad ante cambios en la demanda del mercado.', 
 '', 
 'Seguir optimizando la productividad del capital humano.', 
 'Forensic Profile - 2025'),
(3099, 'macro-inflacion', 2025, 'Annual', 'info', '7.2%', '', '', 'Dato Externo IPC'),
(3099, 'macro-banrep', 2025, 'Annual', 'info', '12.0%', '', '', 'Dato Externo BanRep'),
(3099, 'macro-costo', 2025, 'Annual', 'info', '18.5%', '', '', 'Dato Externo Mercado');

-- 2. PILLAR 1: LIQUIDEZ
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai', 2025, 'Annual', 'success', 
 'Tu empresa cuenta con una posición de liquidez estable, respaldada por un capital de trabajo neto de $491 millones. El ratio de efectivo de 1.5 indica que tienes la capacidad de cubrir tus obligaciones más inmediatas con la caja disponible, lo cual te brinda un margen de maniobra confortable para la operación diaria sin depender de financiamiento externo de emergencia.', 
 'Sin embargo, es vital monitorear que este exceso de caja no se convierta en dinero ocioso que pierda valor frente a la inflación actual. Mantener niveles demasiado altos de efectivo sin una estrategia de inversión o de crecimiento puede reducir la rentabilidad potencial del patrimonio líquido que has acumulado con tanto esfuerzo.', 
 'Te recomiendo evaluar el uso de excedentes en inversiones de corto plazo de bajo riesgo que compensen la inflación del 7.2%. También podrías considerar negociar descuentos por pronto pago con proveedores estratégicos para convertir ese efectivo en una mejora directa de tus márgenes operativos de este año.', 
 'Pillar 1 - 40 Words Rule')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion;

-- 3. PILLAR 2: ACTIVIDAD
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai', 2025, 'Annual', 'success', 
 'Has logrado una eficiencia notable en tu ciclo operativo, reduciendo los días de cobro a clientes a solo 36 días, lo cual está por debajo de la meta sugerida de 45 días. Esta agilidad en el recaudo es el motor principal de tu flujo de caja actual, permitiéndote liberar recursos que anteriormente estaban atrapados en facturas pendientes por cobrar.', 
 'A pesar del buen recaudo, estás pagando a tus proveedores en un promedio de 16 días, lo cual es significativamente más rápido que el plazo de cobro. Esta asimetría en los plazos significa que estás financiando la operación con tu propia caja en lugar de aprovechar el crédito comercial que el mercado suele otorgar a empresas de tu solidez.', 
 'Mi recomendación es intentar extender los plazos de pago a proveedores hacia los 30 o 45 días, igualando tu ciclo de recaudo. Esto te permitiría conservar el dinero en tu cuenta por más tiempo, fortaleciendo tu capital de trabajo y dándote mayor poder de negociación para futuras inversiones sin costo financiero.', 
 'Pillar 2 - 40 Words Rule')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion;

-- 4. PILLAR 3: RENTABILIDAD
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-rentabilidad-ai', 2025, 'Annual', 'warning', 
 'Tu margen operativo del 16.9% se sitúa por encima de la inflación anual del 5.8%, lo que significa que tu negocio está generando riqueza real y protegiendo el valor del dinero en el tiempo. Esta es una señal clara de que tu operación pura es rentable y de que tus precios de venta están bien alineados con tus costos.', 
 'No obstante, el margen neto negativo del -10.1% detectado en el cierre del periodo es una señal de alerta crítica. Esto indica que existen gastos no operativos, cargas financieras pesadas o impuestos que están consumiendo toda la ganancia generada por la operación, resultando en una pérdida contable final para los socios del negocio.', 
 'Es urgente realizar una auditoría de tus gastos administrativos y financieros para identificar dónde se está fugando la utilidad. Debes revisar si existen deudas con tasas muy altas o gastos extraordinarios que puedan ser recortados o refinanciados para asegurar que el esfuerzo operativo suba hasta el bolsillo de los dueños.', 
 'Pillar 3 - 40 Words Rule')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion;

-- 5. PILLAR 4: SOLVENCIA
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-solvencia-ai', 2025, 'Annual', 'success', 
 'La solvencia de tu compañía es sobresaliente, con una cobertura de intereses de 20.9 veces, lo que indica que el riesgo de insolvencia es prácticamente inexistente bajo las condiciones actuales. Este nivel de respaldo financiero te otorga una gran tranquilidad mental y operativa frente a cualquier imprevisto de mercado.', 
 'Si bien tener cero o muy baja deuda es una señal de seguridad, también podría indicar que el negocio no está aprovechando el apalancamiento financiero para crecer a mayor velocidad. En un entorno donde tu retorno sobre el patrimonio es del 14%, podrías estar perdiendo oportunidades de expansión que el capital propio solo no puede cubrir.', 
 'Te sugiero mantener este perfil de bajo riesgo, pero evaluar la toma de créditos muy específicos para proyectos de alta rentabilidad que superen el costo de la deuda. Esto te permitiría potenciar el crecimiento de la firma sin comprometer tu estabilidad de largo plazo que hoy es tu mayor fortaleza.', 
 'Pillar 4 - 40 Words Rule')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion;

-- 6. PILLAR 5: ESTRUCTURA
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-estructura-ai', 2025, 'Annual', 'success', 
 'La estructura de capital de tu empresa es conservadora y sólida, donde el 68% de la operación es financiada con recursos propios de los socios. Esta mayoría accionaria sobre los activos totales garantiza que el control del negocio permanezca firmemente en tus manos, sin presiones externas de acreedores bancarios.', 
 'El resto del fondeo (32%) proviene de terceros, lo cual es una proporción saludable y manejable. Sin embargo, debes vigilar que la composición de esos terceros sea principalmente comercial (proveedores sin interés) y no bancaria, para evitar que los gastos financieros erosionen tu rentabilidad neta que actualmente presenta debilidad.', 
 'Debes mantener esta política de reinversión de utilidades para seguir fortaleciendo el patrimonio propio. Una estructura donde el dueño es el principal financista de la "máquina" operativa es la mejor defensa contra la volatilidad de las tasas de interés que el país está experimentando actualmente.', 
 'Pillar 5 - 40 Words Rule')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion;

-- 7. ESTATUS DE PANEL LATERAL
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, metodologia)
VALUES 
(3099, 'posicion-financiera-status', 2025, 'Annual', 'success', 'SALUDABLE'),
(3099, 'bolsillo-status', 2025, 'Annual', 'success', 'EN CONTROL');

-- 8. CONTEXTOS ESPECÍFICOS DE RESUMEN
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo)
VALUES 
(3099, 'contexto-liquidez-ai', 2025, 'Annual', 'info', 'Diagnóstico basado en un capital de trabajo robusto y una baja dependencia de deuda a corto plazo para la nómina.'),
(3099, 'impacto-cartera-ai', 2025, 'Annual', 'info', 'La reducción del ciclo de cobro a 36 días ha inyectado frescura de caja inmediata permitiendo cubrir gastos operativos sin trauma.'),
(3099, 'diagnostico-roe-ai', 2025, 'Annual', 'info', 'El retorno se apoya en un margen operativo sólido, aunque la pérdida neta final limita el crecimiento real del patrimonio este año.');
