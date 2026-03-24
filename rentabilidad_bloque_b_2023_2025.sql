-- SQL Dump Completo: Módulo Rentabilidad (Empresa 3104) - Bloque B (Auditoría Anual 2023-2025)
-- Registros: 24 (8 indicadores x 3 años)
-- Estándar: +40 palabras por sección, Tono Gerencia-a-Gerencia
-- Workflow: EN-06 (AI-to-SQL Dump)

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'ebitda', 2023, 2023, 'Annual', 'success', 'Cerraste el 2023 con un margen EBITDA excepcional del 32.46%, lo que demuestra que tu operacion técnica de consultoría tiene una potencia enorme para generar flujo de caja bruto. Este nivel de rentabilidad operativa es un indicativo sólido de que tu estructura de esfuerzos directos esta perfectamente alineada con los ingresos capturados.', 'Debes monitorear que esta fortaleza no se diluya en ineficiencias administrativas que no fueron auditadas a fondo en el ejercicio actual. Un EBITDA alto puede generar una falsa sensacion de seguridad financiera si no se controla el descalce entre la facturacion y el recaudo real de esos excedentes operativos tan valiosos.', 'Aprovecha este excelente margen para reinvertir en la mejora de tus herramientas de gestion comercial y de proyectos. Debes asegurar que la rentabilidad operativa se mantenga constante mediante la optimizacion del tiempo de tus consultores senior, eliminando cualquier fuga de valor en actividades de soporte no facturables durante el proximo ciclo fiscal.', 'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'neto', 2023, 2023, 'Annual', 'success', 'Tu margen neto del 36.46% es una cifra magistral que valida la rentabilidad final de tu modelo de negocio. Lograste que mas de una tercera parte de cada peso facturado llegara limpio a la utilidad final, lo cual es testimonio de una gestion financiera impecable y de una estrategia de precios acertada.', 'Cuidado con la dependencia de ingresos extraordinarios que podrian haber inflado este numero en el balance de 2023. Si la rentabilidad neta no es puramente operativa y recurrente, podrias enfrentar un choque de realidad financiera si las condiciones del mercado de servicios profesionales cambian bruscamente el proximo periodo ante factores externos imprevistos.', 'Debes fortalecer tu fondo de maniobra utilizando estas utilidades para reducir cualquier pasivo oneroso pendiente. Te recomiendo que mantengas una politica de reinversión inteligente que permita diversificar tu cartera de clientes, eliminando la concentracion de riesgo en pocos contratos de alto margen que hoy sostienen tu excelente rentabilidad neta anual corporativa.', 'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'operativo', 2023, 2023, 'Annual', 'danger', 'A pesar de la cifra negativa en libros, la traccion comercial de tu firma sigue siendo tu mayor activo. El volumen de contratos firmados y la aceptacion de tus servicios en el mercado colombiano demuestran que posees un negocio de consultoría vibrante que solo requiere un ajuste fino en los costos de soporte.', 'Un margen operativo del -35.96% es un foco rojo critico que indica que tus gastos generales de administracion estan devorando por completo la riqueza generada por tus consultores. Basicamente, el costo de mantener tu oficina y estructura indirecta es superior al valor que estas cobrando por tu conocimiento tecnico especializado este año.', 'Urge que realices una auditoría de gastos fijos administrativos vinculados a la operacion central de MAS CONSULTA. Debes eliminar cualquier suscripción, alquiler o gasto de oficina que no sea vital para la entrega del servicio. Ajustar tu estructura operativa mas liviana permitira que los ingresos fluyan directamente hacia la utilidad neta sin ser interceptados por ineficiencias.', 'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'bruto', 2023, 2023, 'Annual', 'success', 'Mantener un margen bruto del 100% es la caracteristica ganadora de tu firma, ya que explotas el conocimiento puro sin costos directos de materiales. Esto te otorga una flexibilidad total para escalar tu operacion sin preocuparte por la inflacion de costos de insumos fisicos que golpea a otras industrias menos agiles.', 'Al no tener costos de bienes vendidos, tu mayor riesgo es la capacidad ociosa de tu talento humano intelectual. Si tus especialistas no estan facturando activamente, tu margen del 100% es simplemente un dato teorico en el papel que no se traduce en billetes reales en tu cuenta bancaria operativa mensual.', 'Debes enfocarte en maximizar la tasa de utilizacion de tus consultores senior de manera inmediata. Asegurate de que cada proyecto tenga hitos de facturacion claros y frecuentes para capitalizar tu margen bruto infinito en liquidez real. Al carecer de costos de insumos, tu prioridad absoluta debe ser la velocidad de ejecucion y entrega certificada.', 'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'patrimonio', 2023, 2023, 'Annual', 'info', 'Tu patrimonio neto cerro en terreno positivo, sirviendo como un colchon de seguridad vital para la operacion de la consultora. Este respaldo contable te brinda la credibilidad necesaria ante bancos y proveedores para financiar tu crecimiento futuro y asegurar que la empresa tenga un valor real para ti como socio fundador.', 'Debes vigilar que el crecimiento patrimonial sea sostenido y no se vea amenazado por retiros de dividendos excesivos antes de tiempo. Si no alimentas tu base de capital propio con utilidades retenidas, podrias perder tu capacidad de respuesta ante inversiones imprevistas o contingencias legales que demanden una solvencia financiera inmediata y firme.', 'Implementa una politica de fortalecimiento patrimonial reinvirtiendo una franja estrategica de tus ganancias anuales. Un patrimonio mas robusto te permitira negociar mejores contratos de consultoría con grandes corporativos que exigen estados financieros solidos como requisito de entrada, elevando asi el perfil de tus clientes y la valoracion real de tu firma profesional.', 'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'roa', 2023, 2023, 'Annual', 'danger', 'Tu arquitectura financiera liviana te permite operar con muy pocos activos fijos, lo cual es ideal para un negocio de servicios basado en la mente humana. Esta ligereza operativa significa que, con ajustes menores en tu rentabilidad final, lograras elevar tu retorno sobre activos mas rapido que cualquier competidor con infraestructura pesada.', 'Un ROA negativo del -11.36% indica que tus activos actuales no estan siendo rentabilizados de manera optima. Tienes dinero atrapado en cuentas por cobrar o en saldos improductivos que estan perdiendo valor en el tiempo en lugar de generar riqueza neta para la firma, lo cual es un desperdicio de tu capacidad instalada.', 'Debes acelerar el ciclo de recaudo de tus facturas para convertir tus activos de duro cobro en efectivo circulante productivo de inmediato. Al mejorar la velocidad con la que tu dinero da vueltas en el balance, elevaras automaticamente este indicador de eficiencia, demostrando que cada peso invertido en MAS CONSULTA produce un resultado tangible y generoso.', 'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'roe', 2023, 2023, 'Annual', 'success', 'Lograste un ROE extraordinariamente alto, lo que tecnicamente indica que has multiplicado de forma masiva el dinero de los socios durante este ciclo. Esta capacidad de apalancamiento sobre el capital propio es tu mayor fortaleza comercial para atraer fondos de inversion o nuevos aliados estrategicos interesados en alta rentabilidad corporativa.', 'Mucha cautela: un ROE tan elevado suele ser señal de un patrimonio muy pequeño que magnifica porcentualmente las utilidades. No te dejes cegar por la cifra porcentual estratosferica; asegurate de que la utilidad en valores absolutos sea suficiente para cubrir tus metas de vida y de reinvencion del negocio a largo plazo sin riesgos externos.', 'Utiliza este indicador de exito para posicionar a la firma como una ''joya'' de rentabilidad en el mercado local colombioano. Sin embargo, enfocate en robustecer tu base de capital para que este alto retorno se sustente sobre numeros mas solidos y seguros, reduciendo la volatilidad y protegiendo tu patrimonio ante posibles fluctuaciones del mercado operativo.', 'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'utilidad', 2023, 2023, 'Annual', 'danger', 'Cerraste el año manteniendo el equilibrio en tu utilidad acumulada, lo que es un logro de resiliencia ante un entorno economico de servicios tan desafiante. Has evitado destruir valor y te encuentras en una posicion neutral perfecta para dar el salto hacia un nuevo nivel de riqueza operativa en el proximo ejercicio fiscal.', 'Estar en el punto de equilibrio o utilidad cero es una zona de confort extremadamente peligrosa. Significa que estas trabajando solo para pagar gastos fijos y nomina, sin generar un excedente real para ti. Cualquier contrato fallido o retraso de pago podria empujarte al terreno de las perdidas de manera instantanea y sin previo aviso gerencial.', 'Debes romper el ciclo de utilidad nula implementando metas de facturacion mas agresivas con margenes de utilidad controlados. Deja de aceptar proyectos de consultoría que consumen demasiadas horas administrativas y enfocate en servicios de alta especialización que dejen un residuo de utilidad neta real en tu bolsillo mes tras mes, consolidando tu riqueza acumulada.', 'Bloque B - Auditoría Anual 2023', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'ebitda', 2024, 2024, 'Annual', 'danger', 'A pesar de la cifra negativa reportada en 2024, tu firma conserva la traccion necesaria para seguir activa en el mercado de consultoría estratégica. La marca sigue siendo reconocida por su calidad técnica, lo cual constituye el cimiento mas valioso sobre el cual podras construir tu estrategia de recuperacion operativa y rentabilidad inmediata.', 'Un margen EBITDA negativo del -38.05% es un deterioro operativo critico que no admite demoras en su correccion inmediata. Estas quemando recursos internos para sostener la operacion basica, lo que significa que el valor generado por tus servicios no esta alcanzando siquiera para cubrir los costos de ejecucion tecnica mas elementales este año fiscal.', 'Debes ejecutar un plan de reduccion de costos operativos hoy mismo para detener el sangrado de caja. Evalua la rentabilidad de cada consultor y de cada proyecto vigente; corta cualquier actividad que no sea estrictamente generadora de flujo de efectivo positivo. Necesitas volver a los basicos operativos para asegurar la supervivencia y el crecimiento futuro de la organizacion.', 'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'neto', 2024, 2024, 'Annual', 'danger', 'La capacidad de mantener tu estructura funcionando ante un margen neto negativo demuestra una resiliencia gerencial admirable. Posees la infraestructura y el talento para revertir este resultado si logras optimizar las fuentes de ingresos y alinear tus contratos comerciales con los costos reales de la operacion administrativa y operativa actual.', 'Cerrar con un margen neto negativo del -33.91% indica una destruccion de valor peligrosa para la sostenibilidad de tus ahorros y los de tus socios. Tu bolsillo esta asumiendo el costo de una estructura de consultoría que hoy no es rentable, lo que compromete seriamente tu capacidad de maniobra y tu tranquilidad financiera a mediano plazo.', 'Urge que renegocies las condiciones de tus servicios mas costosos y elimines los gastos no esenciales que estan drenando tu utilidad neta. Debes priorizar contratos de cobro rapido y alto impacto que logren girar el signo de este indicador hacia terreno positivo antes de que la capitalización propia de la empresa se vea agotada por completo.', 'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'operativo', 2024, 2024, 'Annual', 'success', 'Has logrado un margen operativo del 35.08% en 2024, lo que representa una recuperacion brillante de tu eficiencia administrativa. Este resultado demuestra que has tomado control sobre los gastos de soporte y que tu oficina ahora trabaja al servicio de la rentabilidad, permitiendo que la mayoría del ingreso fluya hacia la utilidad con fluidez.', 'Debes asegurarte de que esta eficiencia operativa sea sostenible y no el resultado de un recorte de costos excesivo que pueda comprometer la calidad de tus entregables a futuro. Un margen operativo alto exige una vigilancia constante sobre la productividad de tu equipo para evitar que el relajamiento administrativo comprometa estos logros alcanzados con tanto esfuerzo.', 'Manten el rigor administrativo alcanzado y automatiza las tareas de soporte que aun consumen tiempo manual valioso. Utiliza este margen positivo para mejorar la capacitacion de tus consultores, asegurando que la operacion siga siendo ligera y altamente competitiva, convirtiendose en el motor principal de tu riqueza neta para los proximos años fiscales de la firma.', 'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'bruto', 2024, 2024, 'Annual', 'success', 'Mantenes el margen bruto perfecto del 100% en 2024, demostrando la pureza de tu modelo de servicios intelectuales en MAS CONSULTA. Al no depender de materias primas, tienes un escudo contra la inflacion operativa externa, permitiendote que cada peso de ventas netas sea una oportunidad de oro para financiar tu estructura administrativa interna.', 'El riesgo de este margen del 100% es que podria generar complacencia en la gestion de tiempos de tu equipo de consultoría senior. Si no controlas rigurosamente las horas invertidas vs. las facturadas, estaras desperdiciando el potencial infinito de este indicador en ineficiencias de ejecucion que ningun balance contable podra compensar jamas por mas ingresos reportados.', 'Debes implantar un control estricto sobre el cumplimiento de hitos de tus proyectos estrategicos para este ciclo. Asegura que la facturacion sea inmediata al entregar resultados tecnicos parciales. Al no tener costos de insumos, tu mayor lucro proviene de la agilidad: gira tus proyectos mas rapido para que la rentabilidad bruta se transforme en caja liquida real.', 'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'patrimonio', 2024, 2024, 'Annual', 'info', 'Tu patrimonio ha crecido sustancialmente llegando a los 24.9 millones en 2024, lo que fortalece significativamente la solvencia de la consultora colombiana. Este incremento en tu base de capital propio es el resultado de una gestion de activos mas inteligente, otorgandote un respaldo mucho mas solido para afrontar deudas o inversiones agresivas con total autonomia.', 'Vigila que este aumento patrimonial no este inflado por valorizaciones contables que no tengan respaldo en liquidez real en el banco. Si tu patrimonio crece pero tu caja sigue apretada, podrias enfrentar problemas de liquidez a pesar de lucir mas fuerte en el papel, lo que limitaría tu capacidad de respuesta ante emergencias de flujo de efectivo operativo inmediato.', 'Continua con la politica de capitalización de utilidades para que este crecimiento patrimonial sea la base de tu proxima expansion nacional. Con un patrimonio de este nivel, puedes empezar a negociar acuerdos de consultoría de gran escala que requieran garantias financieras solidas, posicionando a MAS CONSULTA como un jugador de peso en el sector de servicios estratégicos.', 'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'roa', 2024, 2024, 'Annual', 'success', 'Lograste un ROA del 19.66% en 2024, lo cual es una cifra excelente que demuestra que tus activos estan trabajando al maximo para generar riqueza. Has sabido aprovechar cada recurso de la firma para producir utilidad neta, demostrando una eficiencia operativa que valida la ligereza de tu modelo de negocio de consultoría profesional senior.', 'Aunque el rendimiento es alto, asegurate de no estar subinvirtiendo en la infraestructura necesaria para sostener la calidad técnica de tus servicios en el largo plazo. Trabajar con activos demasiado escuetos podria generar cuellos de botella operativos si el volumen de tus contratos escala mas rapido de lo que tu actual capacidad instalada administrativa puede procesar realmente.', 'Reinvierta parte de este retorno en mejorar tus capacidades tecnológicas de analisis de datos y automatizacion comercial. Al mantener este nivel de ROA mientras haces crecer tu base de activos controlados, estaras construyendo una empresa no solo rentable hoy, sino extremadamente escalable y valiosa ante cualquier evaluacion externa de inversionistas o de socios futuros.', 'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'roe', 2024, 2024, 'Annual', 'success', 'Tu ROE del 89.55% en 2024 es una señal de alta eficiencia en la multiplicacion del capital de los socios estrategicos de la firma. Estas logrando retornos muy superiores al promedio del sector servicios, lo que demuestra que tu modelo de negocio es una maquina potente de generacion de beneficios sobre el patrimonio neto invertido hasta ahora.', 'Debes monitorear que este ROE no descienda abruptamente si decides fortalecer tu patrimonio via utilidades retenidas proximamente. Un retorno alto sobre una base de capital pequeña es facil de lograr, pero el verdadero reto gerencial es mantener esta eficiencia a medida que la empresa se capitaliza y crece en volumen de activos reales y liquidez bancaria.', 'Manten tu enfoque en proyectos de consultoría de alto margen para preservar esta potencia generadora de riqueza para los socios. Te sugiero que utilices estos resultados positivos para consolidar tu posicion en el mercado, demostrando que posees una de las firmas de consultoría mas rentables de la region en terminos de retorno patrimonial neto anual.', 'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'utilidad', 2024, 2024, 'Annual', 'danger', 'Has mantenido la utilidad acumulada en equilibrio durante el 2024, logrando que la empresa se sostenga sin comprometer el valor neto acumulado previamente. Esta estabilidad es clave para permitirte planificar la transicion hacia un modelo de negocio mucho mas rentable sin la presion de tener que cubrir perdidas operativas arrastradas del pasado.', 'Mantenes la zona de utilidad cero, lo que implica que sigues operando al limite de tu capacidad financiera de soporte. No estas construyendo un excedente real que te permita invertir en el crecimiento explosivo de la firma. Estas en un estado de ''supervivencia controlada'' que podria volverse insolvente ante cualquier imprevisto estrategico menor del mercado local.', 'Debes reevaluar tu estructura de precios y tus costos variables para inyectar utilidad real al balance del proximo trimestre fiscal. Enfocate en aumentar el valor percibido de tus consultorías para que puedas cobrar margenes superiores que finalmente se traduzcan en una utilidad acumulada creciente que fortalezca tu bolsillo y tu capacidad de inversion propia futuro.', 'Bloque B - Auditoría Anual 2024', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'ebitda', 2025, 2025, 'Annual', 'warning', 'Has logrado que tu margen EBITDA vuelva a terreno positivo en 2025, lo que marca el fin de la etapa de quemar recursos para operar. Aunque el margen es estrecho, es el primer paso vital para recuperar la potencia generadora de flujo de caja que caracteriza a tu firma de consultoría cuando opera bajo estándares de eficiencia total.', 'Un margen EBITDA de solo 0.14% es extremadamente fragil y te deja sin margen de error alguno ante cualquier contratiempo operativo. Estas operando al raz de tus costos de ejecucion técnica, lo que significa que el valor que generas se consume casi en su totalidad para mantener la operacion quincenal activa, sin dejar espacio para el ahorro corporativo.', 'Debes centrarte en una estrategia agresiva de optimizacion de costos operativos para ensanchar este margen EBITDA de inmediato. Revisa tus contratos de soporte tecnico y asesoria externa para asegurarte de que estas obteniendo el mejor valor por cada peso invertido. Necesitas elevar este indicador al 15% minimo para garantizar la sostenibilidad a largo plazo.', 'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'neto', 2025, 2025, 'Annual', 'success', 'Has estabilizado el margen neto en un 10.05% al cierre de 2025, logrando finalmente que la empresa retenga una parte digna de sus ingresos tras cubrir todos los compromisos. Mantenes un nivel de rentabilidad final que te permite proyectar el proximo ciclo fiscal con optimismo y con una base de ganancias que demuestra la viabilidad comercial.', 'Estar en el 10% neto es caminar por una cuerda floja financiera en el sector de servicios. Cualquier aumento leve en los impuestos ante la DIAN o un retraso en un hito de un gran cliente podria anular tu ganancia del año por completo. Tu estructura financiera actual aun no tiene el colchon necesario para absorber choques de liquidez externos bruscos.', 'Busca elevar este margen neto mediante la captacion de proyectos de consultoría ''premium'' de alto valor agregado que demanden menos soporte administrativo recurrente. Solo si logras llegar a un margen neto del 15% o superior, tendras la tranquilidad financiera necesaria para escalar MAS CONSULTA hacia nuevos mercados con total seguridad patrimonial y de bolsillo propio.', 'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'operativo', 2025, 2025, 'Annual', 'danger', 'A pesar del margen operativo negativo, has logrado reducir significativamente la ineficiencia administrativa respecto a años anteriores en 2025. Se nota un esfuerzo por controlar los gastos de soporte, lo que indica que estas en el camino correcto para volver a una estructura corporativa liviana y eficiente que permita maximizar cada peso facturado.', 'Un margen operativo del -10.02% sigue indicando que tu estructura de soporte es demasiado pesada para el volumen actual de ventas de consultoría. Sigue existiendo un desbalance entre el costo de operacion de la oficina y el valor que se entrega al cliente, lo que erosiona tus margenes antes de llegar a la utilidad neta final de la firma.', 'Debes concluir el proceso de optimizacion administrativa eliminando los ultimos reductos de gastos fijos innecesarios de este periodo. Considera la tercerizacion de servicios de soporte o la reduccion de infraestructura fisica sobrante. Al girar este indicador hacia positivo, liberaras el verdadero potencial de ganancia de tus consultores senior para tu beneficio personal directo.', 'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'bruto', 2025, 2025, 'Annual', 'success', 'Finalizas el 2025 manteniendo el margen bruto impecable del 100%, lo que confirma que tu ventaja competitiva en el sector de consultoría estrategica permanece intacta. Tienes la maquina de ventas mas potente posible, donde cada ingreso neto entra sin ser disminuido por costos directos físicos, permitiendote financiar tu vision sin restricciones.', 'Vigila que este margen del 100% no oculte una caida en la productividad intelectual de tu equipo consultor especializado este año. Si los proyectos se extienden mas de lo planeado, tu rentabilidad bruta es una cifra vanidosa que no oculta el hecho de que estas perdiendo dinero por el tiempo excesivo invertido en cada contrato de consultoría activa.', 'Implementa indicadores de gestion por proyecto (KPIs) que midan la rentabilidad real de cada hora-hombre invertida frente al valor facturado. Solo manteniendo una ejecucion técnica agil podras transformar este margen bruto absoluto en una riqueza neta real y creciente para cerrar el proximo ciclo financiero de la empresa con exito rotundo.', 'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'patrimonio', 2025, 2025, 'Annual', 'info', 'Has disparado tu patrimonio neto hasta alcanzar los 122.8 millones en 2025, lo que representa una fortaleza financiera y una solvencia extraordinaria para MAS CONSULTA hoy. Este colosale incremento en tu base de capital propio te posiciona como una empresa solida y confiable, capaz de negociar con los jugadores mas grandes del mercado corporativo nacional.', 'Este nivel de patrimonio exige una responsabilidad gerencial mucho mayor para mantener su rentabilidad y tasa de retorno anual. Si tu base de capital crece pero tus utilidades netas no lo hacen al mismo ritmo, estaras diluyendo tu eficiencia financiera, convirtiendo a la consultora en un negocio pesado que no le saca provecho a su enorme respaldo contable.', 'Utiliza este respaldo patrimonial para apalancar el crecimiento explosivo de la firma mediante la contratacion de nuevos consultores senior especialistas. Un patrimonio de esta magnitud te permite tomar riesgos calculados y expansiones comerciales que antes eran imposibles, asegurando que tu firma se convierta en el referente indiscutible de rentabilidad en la region.', 'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'roa', 2025, 2025, 'Annual', 'danger', 'Aunque el ROA final es negativo, has logrado acercarte mucho al punto de equilibrio en el rendimiento de tus activos fijos en 2025. Tu modelo de negocio sigue siendo ligero y facil de gestionar, lo que te permitira revertir esta tendencia rapidamente en cuanto el volumen de proyectos se incremente marginalmente en el proximo periodo fiscal de auditoría.', 'Un ROA negativo del -4.35% indica que tu enorme base de activos (potencialmente por el crecimiento patrimonial) aun no esta siendo cargada con la utilidad necesaria para producir riqueza. Estas operando una estructura de 122 millones que no esta retornando ni un centavo neto para compensar el uso de esos recursos financieros y operativos corporativos.', 'Debes enfocar tus activos crecientes en la generacion de ingresos de alta frecuencia para elevar la rotacion de capital de inmediato. No permitas que el dinero se quede quieto en el balance; moviliza tus recursos financieros hacia actividades de consultoría que tengan un retorno inmediato, demostrando que puedes gestionar una empresa grande con la misma agilidad inicial.', 'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'roe', 2025, 2025, 'Annual', 'danger', 'La solidez de tu patrimonio actual demuestra que tienes la capacidad de absorber este reporte de rentabilidad ROE negativo sin comprometer la continuidad de la oficina. Posees un colchon de capital propio envidiable en Colombia que te otorga el tiempo necesario para reajustar tu estrategia comercial y volver a los altos indices de retorno patrimonial previos.', 'Un ROE negativo del -6.01% es un recordatorio severo de que el capital de los socios estrategicos de la firma esta perdiendo valor en el tiempo en lugar de multiplicarse. Estas en una etapa donde la inversion propia no esta recibiendo el premio de la rentabilidad, lo cual es insostenible si aspiras a mantener el interes de tus aliados y tu propia tranquilidad.', 'Urge que realices una reingeniería de tu oferta comercial para capturar margenes netos mas agresivos que logren elevar el ROE por encima del 15% minimo requerido por el mercado. Con el respaldo patrimonial que ya tienes, solo necesitas mejorar la eficiencia del gasto final para que la rentabilidad fluya de nuevo hacia tus bolsillos de forma directa y generosa.', 'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

INSERT INTO insights (empresa_id, indicador_key, periodo_ano, year, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at)
VALUES (3104, 'utilidad', 2025, 2025, 'Annual', 'danger', 'Mantener la estructura de consultoría activa ante una utilidad negativa acumulada demuestra tu temple como lider gerencial de MAS CONSULTA. Posees una marca con traccion y una lealtad de clientes corporativos que es el motor principal para revertir estos numeros rojos en el corto plazo mediante una gestion mas enfocada en la caja hoy mismo.', 'Finalizar con una perdida acumulada de mas de 754 mil pesos en el 2025 es un golpe directo a la sostenibilidad de tus ahorros y liquidez disponible. La operacion de todo un año fiscal no solo fue gratuita, sino que te costo dinero de tu propio capital propio para mantenerla viva, drenando peligrosamente tu solvencia financiera neta frente al mercado laboral.', 'Debes ejecutar un plan de recuperacion de utilidades agresivo eliminando de inmediato cualquier proyecto de consultoría que no sea rentable neta mas del 25%. Prioriza el recaudo de cartera vencida y no inicies nuevas labores sin un anticipo del 30% minimo que garantice el flujo de caja. Necesitas borrar este signo negativo del balance con urgencia operativa maxima.', 'Bloque B - Auditoría Anual 2025', 'antigravity', NOW())
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();

