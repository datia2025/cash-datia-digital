-- ============================================================
-- SQL SCRIPT: RÁFAGA 1 A 5 - INYECCIÓN BASE DE AI INSIGHTS (LENGUAJE GERENCIAL)
-- EMPRESA_ID: 3103
-- AÑO: 2025
-- ESTADO: BASELINE INICIAL (NO DATA PREVIA)
-- CUMPLE PROTOCOLO ANTI-DESBORDAMIENTO (AUDITADO)
-- ============================================================

SET search_path TO liquidity;

-- Limpieza preventiva
DELETE FROM insights_ai WHERE empresa_id = 3103 AND periodo_ano = 2025;

-- ============================================================
-- PERFIL OPERATIVO (Resumen Ejecutivo)
-- ============================================================
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3103, 'perfil_operativo', 2025, 'info', 
'Empresa sólida dedicada al sector servicios/consultoría. Sus ingresos dependen principalmente de la facturación de honorarios, y su estructura operativa es liviana al no tener inventarios físicos. El gasto más grande de la operación es el talento humano y equipo profesional (cuenta 51).',
'Al depender casi enteramente de la liquidez por servicios, si los clientes grandes demoran sus pagos más de 60 días, la caja entra en estrés casi inmediato porque el costo fijo de la nómina no se puede pausar ni aplazar sin afectar la operación interna.',
'Priorizar la velocidad de recaudo para asegurar el flujo de nómina y gastos fijos mensual. El margen de ganancia debe proteger al máximo el servicio base para no destruir valor durante los periodos donde no ingresan nuevos contratos o se retrasan renovaciones clave.',
'Protocolo Forense - 50 Palabras (Lectura Gerencial)');

-- ============================================================
-- 1. LIQUIDEZ (Dinero disponible en el corto plazo)
-- ============================================================
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3103, 'liquidez', 2025, 'warning', 
'Actualmente logramos cubrir nuestras obligaciones más inmediatas. Si sumamos lo que tenemos en el banco más lo que está a punto de cobrarse, alcanza para pagar la nómina y los impuestos de los próximos 30 días sin tener que salir a buscar endeudamiento costoso urgente.',
'El problema es que una gran parte de ese dinero todavía está en la calle, en forma de cuentas por cobrar. Si tan solo dos clientes retrasan su pago el día límite, la tranquilidad se convierte en asfixia inmediata y tendríamos que sacar dinero del bolsillo propio o de un fondo de emergencia.',
'Debemos estructurar un colchón de caja pura (solo billetes en banco) equivalente a dos meses completos de nómina, sin contar compromisos de clientes. Así blindamos la supervivencia ante demoras comerciales y garantizamos absoluta tranquilidad operativa.',
'Protocolo 50 Palabras - Lenguaje Gerencial');

-- ============================================================
-- 2. ACTIVIDAD (La máquina y velocidad del negocio)
-- ============================================================
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3103, 'actividad', 2025, 'warning', 
'Mantener una estructura operativa ligera nos permite enfocarnos en el servicio al cliente y no en administrar bodegas. Al no gestionar mercancía que se daña o se devalúa, nuestro ciclo de conversión depende únicamente de un servicio entregado y una factura emitida oportunamente, generando una máquina rápida de transacciones.',
'Por el lado negativo, notamos que nosotros no financiamos nuestra operación pidiendo plazos a proveedores formales. Al no existir una cadena de crédito a nuestro favor de quien nos vende, el flujo de dinero se resiente de inmediato cuando a nosotros no nos pagan a tiempo las facturas maduras.',
'Hay que negociar plazos formales extendidos (a 30 ó 45 días) con todo aquel externo que nos cobre servicios, y tratar de cobrar de contado (o anticipado al menos el 50%) a nuestros clientes, invirtiendo así la carga financiera y dejando nuestro dinero libre.',
'Protocolo 50 Palabras - Lenguaje Gerencial');

-- ============================================================
-- 3. RENTABILIDAD (La verdadera ganancia final)
-- ============================================================
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3103, 'rentabilidad', 2025, 'success', 
'La naturaleza del negocio genera un alto nivel de eficiencia tras cubrir el servicio directo, reteniendo caja positiva a nivel operativo. Esto significa que nuestra marca, el know-how empleado y el talento son rentables por sí mismos.',
'Pese al buen comportamiento del primer eslabón, los gastos no operacionales y administrativos están evaporando casi la mitad de lo que el negocio gana genuinamente, dejando poco excedente visible para ser invertido o distribuido a los socios a fin de año.',
'Revisemos rubro por rubro la cuenta de administración. Ajustar suscripciones o reducir costos invisibles (como intereses o pequeños gastos de caja menor) multiplicará la última línea, entregando directamente al bolsillo del dueño mucho más valor tangible al finalizar el ciclo.',
'Protocolo 50 Palabras - Lenguaje Gerencial');

-- ============================================================
-- 4. SOLVENCIA (La salud ante emergencias y acreedores)
-- ============================================================
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3103, 'solvencia', 2025, 'success', 
'Es un modelo financieramente sólido que usa principalmente su propia riqueza para existir; en caso de enfrentar una crisis mayor, la empresa no está atada a cobros bancarios asfixiantes o embargos sistémicos. Es dueña de su futuro sin intermediarios dictaminando sus movimientos operativos.',
'El ser tan recelosos con la deuda frena la posibilidad de abrir nuevas líneas de servicio o expandir agresivamente la capacidad instalada del talento. Todo peso adicional gastado en crecimiento debe salir hoy exclusivamente de su rentabilidad del mes previo, y eso ralentiza enormemente nuestro crecimiento contra la competencia.',
'Aprovechando su calificación limpia, la organización debería evaluar un crédito comercial a tasa corporativa preferencial cuyo objetivo sea únicamente detonar una nueva unidad de negocio (como pauta masiva o nueva tecnología), logrando acelerar rendimientos y manteniendo a salvo el patrimonio original de los socios.',
'Protocolo 50 Palabras - Lenguaje Gerencial');

-- ============================================================
-- 5. ESTRUCTURA (De quién es la compañía realmente)
-- ============================================================
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3103, 'estructura', 2025, 'success', 
'El capital está fuertemente consolidado bajo el ala patrimonial, lo que blinda al grupo de posibles ataques o presiones externas. Ante un entorno macroeconómico volátil como el actual, esta configuración protege al inversor, pues cada peso de activos se sustenta casi netamente en aportes y retención de ganancias anteriores.',
'Al no estar acostumbrados a utilizar el escudo fiscal de los intereses (es decir, el gobierno premia a los que pagan gastos bancarios bajándoles impuestos), se pierde un pequeño potencial de optimización fiscal que los corporativos grandes usan agresivamente a su favor.',
'Explorar en los próximos meses el uso medido de deuda externa a largo plazo en lugar de retener excesivamente ganancias de años previos. Al mantener deuda con entes bancarios controlados, liberan recursos del accionista para distribuirlos de inmediato como dividendos reales sin dañar a la empresa operativa.',
'Protocolo 50 Palabras - Lenguaje Gerencial');
