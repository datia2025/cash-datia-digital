-- 🛡️ Dashboard Solvencia - Bloque B: Auditoría Anual Técnica (Empresa 3104)
-- Estándar: Gerencia-a-Gerencia (+40 palabras por sección, Tuteo)
-- Años: 2023, 2024, 2025
-- Indicadores: cargos_fijos, intereses, servicio_deuda, deuda_ebitda, endeudamiento_total, solvencia_patrimonial

-- ============================================================================
-- 2023: AÑO DE ESTRÉS FINANCIERO
-- ============================================================================

-- [1: Cobertura de Cargos Fijos - 2023]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, 'Annual', 'cargos_fijos', 'Cobertura de Cargos Fijos - Auditoría 2023', 'danger',
'Resulta valioso que, a pesar de la asfixia financiera, hayas mantenido la estructura operativa mínima para no detener la prestación de tus servicios de consultoría. Tu esfuerzo por sostener los contratos de arrendamiento y servicios básicos permitió que la empresa continuara visible para sus clientes estratégicos durante los momentos más difíciles del año.',
'Tus números de este año son críticos, pues muestran una incapacidad total para cubrir tus gastos fijos más elementales con la utilidad operativa que generaste. Estar en terreno negativo significa que cada mes que pasó estuviste consumiendo capital adicional o aumentando tus deudas solo para mantener las luces encendidas y las oficinas abiertas.',
'Debes replantear tu estructura de costos fijos de inmediato para que sea mucho más liviana y flexible ante las variaciones de tus ingresos. Te sugerimos negociar periodos de gracia con tus arrendadores o buscar espacios de trabajo compartidos que reduzcan tu carga mensual y te permitan recuperar el equilibrio operativo cuanto antes.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [2: Cobertura de Intereses - 2023]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, 'Annual', 'intereses', 'Cobertura de Intereses - Auditoría 2023', 'danger',
'Rescatamos tu honestidad financiera al reconocer la situación de fragilidad y mantener una comunicación abierta con tus acreedores financieros durante este ejercicio. Haber evitado procesos de cobro jurídico masivos en medio de esta iliquidez es un testimonio de tu capacidad de negociación y de la confianza que aún inspiras en tus aliados.',
'Tu capacidad de cubrir intereses este año fue nula, lo que indica que tus deudas financieras se convirtieron en una carga insoportable para tu flujo de caja. Cada peso que debías pagar en intereses se sumó a tu capital o drenó tus ahorros, creando una bola de nieve peligrosa que amenaza con devorar el valor de tu empresa.',
'Es el momento de sentarte con tus bancos para buscar una reestructuración de deudas que detenga la acumulación de intereses moratorios de inmediato. Considera seriamente la posibilidad de intercambiar parte de tu deuda por capital o buscar socios que inyecten fondos frescos para liquidar los préstamos que tienen las tasas de interés más agresivas.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [3: Cobertura Servicio Deuda - 2023]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, 'Annual', 'servicio_deuda', 'Cobertura Servicio Deuda - Auditoría 2023', 'danger',
'A pesar de la tormenta, lograste priorizar los pagos más críticos que mantenían tu calificación crediticia en un nivel operativo aceptable para futuras negociaciones. Tu habilidad para gestionar el poco efectivo disponible y dirigirlo hacia las obligaciones que garantizaban la continuidad operativa fue un acto de malabarismo financiero que salvó a la empresa.',
'El indicador de servicio de deuda en negativo confirma que tu EBITDA no fue suficiente para cubrir ni el capital ni los intereses de tus préstamos. Esta situación te ha dejado sin capacidad de ahorro y te ha obligado a postergar inversiones necesarias en talento y tecnología, debilitando tu posición competitiva frente a otras firmas consultoras.',
'Define un plan de pagos estrictamente basado en tus proyecciones de recaudo de facturas ya emitidas para evitar nuevos incumplimientos. Te recomendamos suspender cualquier reparto de utilidades o bonificaciones extraordinarias hasta que logres que este indicador de servicio de deuda sea superior a uno punto dos veces, garantizando así tu solvencia básica.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [4: Deuda Neta / EBITDA - 2023]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, 'Annual', 'deuda_ebitda', 'Deuda Neta / EBITDA - Auditoría 2023', 'danger',
'Es destacable que hayas mantenido un control sobre la solicitud de nuevos créditos ante la imposibilidad de pagarlos con la generación propia de caja. Esta prudencia evitó que tu nivel de endeudamiento llegara a un punto de no retorno, permitiéndote conservar al menos una estructura de capital que podría ser saneada con una recuperación operativa.',
'Tener un ratio de deuda sobre EBITDA negativo o extremadamente alto es la confirmación de que tu operación no tiene la fuerza necesaria para repagar sus deudas. Básicamente, si tuvieras que pagar todo lo que debes hoy con tu utilidad operativa actual, tardarías una eternidad o simplemente no podrías hacerlo sin vender tus activos físicos.',
'Enfócate en proyectos que te den márgenes operativos muy altos, incluso si eso significa reducir el volumen total de tus ventas actuales. Necesitas que cada hora de consultoría que factures contribuya con un margen de EBITDA robusto que te permita bajar esta relación deuda/caja hacia niveles manejables de menos de tres veces.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [5: Endeudamiento Total - 2023]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, 'Annual', 'endeudamiento_total', 'Endeudamiento Total - Auditoría 2023', 'danger',
'Valoramos que la deuda que has adquirido esté concentrada en el sostenimiento de tu estructura productiva y no en gastos suntuarios o inversiones de alto riesgo. Mantener la integridad de tus activos principales, a pesar de estar tan apalancado, te da una base sobre la cual construir la reconstrucción financiera que planeas para el año entrante.',
'Cierras el año con casi el cien por ciento de tu empresa financiada por terceros, lo que te quita toda autonomía sobre tus propias decisiones estratégicas. Estás trabajando para pagarles a tus acreedores y no para construir riqueza propia, lo que pone en duda quién es el verdadero dueño del futuro de tu organización en estos momentos.',
'Es imperativo bajar este ratio de endeudamiento al menos por debajo del setenta por ciento mediante la retención de utilidades futuras o la inyección de capital neto. Te sugerimos evitar cualquier nueva deuda, por pequeña que sea, y enfocarte en liquidar los pasivos corrientes que tienen vencimientos inmediatos y garantías reales comprometidas.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [6: Solvencia Patrimonial - 2023]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, 'Annual', 'solvencia_patrimonial', 'Solvencia Patrimonial - Auditoría 2023', 'danger',
'Tener una base de socios comprometidos que no retiraron su capital a pesar de los resultados negativos es tu mayor fortaleza en este momento de crisis. Ese respaldo moral y legal de los accionistas es lo que ha impedido que la empresa entre en una liquidación forzosa por falta de patrimonio neto suficiente para operar.',
'Tu solvencia patrimonial está en terreno negativo, lo que técnicamente significa que tus deudas son más grandes que el valor total de tus activos. Esta situación es insostenible legalmente en el largo plazo y te deja sin ninguna capacidad de atraer nuevos inversores o conseguir mejores condiciones de crédito con el sistema financiero nacional.',
'Inicia de inmediato un plan de capitalización que revierta este signo negativo y te devuelva tu prestigio financiero ante terceros de confianza. Debes asegurar que para el cierre del próximo año, tu patrimonio represente al menos el cuarenta por ciento de tu estructura total de capital, devolviéndole la solidez y el valor a tu marca.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- 2024: EL AÑO DE LA RECONSTRUCCIÓN MAGISTRAL
-- ============================================================================

-- [7: Cobertura de Cargos Fijos - 2024]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, 'Annual', 'cargos_fijos', 'Cobertura de Cargos Fijos - Auditoría 2024', 'success',
'Has logrado una recuperación impresionante en tu capacidad de cobertura, pasando de la crisis a una solidez que te permite dormir tranquilo cada noche. Generaste utilidades suficientes para cubrir tus cargos fijos más de treinta veces, lo que indica que tu estructura de gastos está ahora perfectamente alineada con tu potencia de facturación.',
'El único riesgo en esta nueva etapa es que el éxito te lleve a inflar nuevamente tus costos fijos de manera innecesaria bajo la ilusión de abundancia masiva. Mantener este nivel de eficiencia requiere una disciplina constante para no añadir burocracia o lujos que no contribuyan directamente a la entrega de valor excepcional a tus clientes.',
'Sigue con la política de costos magros y aprovecha esta holgura para crear un fondo de reserva que cubra al menos seis meses de tus cargos fijos recurrentes. Te recomendamos reinvertir parte de este excedente en automatizar procesos que antes eran manuales, blindando así tu rentabilidad ante posibles fluctuaciones futuras en el volumen de tus proyectos.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [8: Cobertura de Intereses - 2024]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, 'Annual', 'intereses', 'Cobertura de Intereses - Auditoría 2024', 'success',
'Tu capacidad para cubrir intereses se recuperó de manera magistral, demostrando que saneaste tus finanzas y aumentaste tu eficiencia operativa en tiempo récord. Ahora tus utilidades superan tus gastos financieros por un margen tan amplio que los bancos ya no son una preocupación, sino aliados que buscan ofrecerte sus mejores tasas.',
'A pesar del gran número final, notamos que hubo fluctuaciones significativas entre trimestres que sugieren una sensibilidad a la estacionalidad de tus cobros más grandes. No debes bajar la guardia en la gestión de tu flujo de caja, ya que un bache en el recaudo podría estresar momentáneamente esta cobertura tan valiosa que has construido.',
'Considera la posibilidad de prepagar las deudas que aún conservan tasas variables para eliminar cualquier incertidumbre ante posibles subidas en el costo del dinero. Te sugerimos mantener este ratio de cobertura por encima de diez veces para garantizar que tu empresa sea siempre vista como una inversión de bajo riesgo por cualquier socio potencial.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [9: Cobertura Servicio Deuda - 2024]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, 'Annual', 'servicio_deuda', 'Cobertura Servicio Deuda - Auditoría 2024', 'success',
'Cierras el año con un indicador de servicio de deuda sólido, lo que confirma que tu EBITDA es más que suficiente para pagar tus deudas y aún dejar excedentes de caja. Esta es la marca de una empresa sana que puede autofinanciar su crecimiento sin tener que depender constantemente de favores bancarios o inyecciones externas de capital.',
'Notamos que el ratio se apretó un poco hacia el final del año, coincidiendo con inversiones estratégicas o pagos extraordinarios que realizaste para expandir tu capacidad. Aunque la situación es muy positiva, es vital que planifiques tus flujos de caja con anticipación para que estos pagos de capital no coincidan con periodos de bajo recaudo operativo.',
'Establece un calendario de pagos automatizado y mantén una comunicación constante con tu tesorería para prever estos picos de salida de efectivo con meses de antelación. Te recomendamos que cualquier nuevo financiamiento que tomes tenga un periodo de amortización que se ajuste cómodamente a tu nuevo ciclo de generación de EBITDA real.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [10: Deuda Neta / EBITDA - 2024]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, 'Annual', 'deuda_ebitda', 'Deuda Neta / EBITDA - Auditoría 2024', 'success',
'Esta es quizá tu mayor victoria del año: lograste que tu deuda neta sea prácticamente insignificante frente a tu capacidad de generación de caja actual. Ahora tienes una empresa con un apalancamiento ultra-bajo, lo que te posiciona con una ventaja competitiva enorme para adquirir competidores o invertir en nuevos mercados de forma agresiva.',
'Tener tan poca deuda puede ser visto por algunos financieros como una falta de optimización fiscal; sin embargo, en tu caso particular, fue el remedio necesario tras la crisis previa. El reto ahora es no volverse excesivamente cauteloso y dejar pasar oportunidades de crecimiento rentables por un miedo infundado a volver a tomar financiamiento responsable.',
'Evalúa proyectos de expansión que tengan un retorno sobre la inversión claro y utiliza tu capacidad de endeudamiento actual de forma quirúrgica y muy estratégica. Mantener este ratio entre cero y una vez es el escenario ideal para una firma de consultoría que desea ser ágil y resiliente ante cualquier cambio en la economía.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [11: Endeudamiento Total - 2024]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, 'Annual', 'endeudamiento_total', 'Endeudamiento Total - Auditoría 2024', 'success',
'Lograste reducir tu endeudamiento del casi noventa por ciento a un asombroso veintitrés por ciento al cierre de este año, recuperando la posesión real de tu empresa. Ahora eres dueño de más del setenta por ciento de tus activos, lo que te devuelve la libertad de decidir el rumbo de tu negocio sin pedir permiso a los bancos.',
'La caída tan rápida del endeudamiento podría haber sacrificado liquidez inmediata si no se manejó con cuidado la velocidad de los pagos a capital realizado. Debes asegurarte de que este nivel de desapalancamiento sea sostenible y no haya sido producto de una desinversión de activos estratégicos que podrías necesitar para el crecimiento futuro.',
'Mantén tu meta de endeudamiento estructural por debajo del cuarenta por ciento para asegurar que siempre tengas aire en el balance ante cualquier eventualidad o crisis. Te sugerimos que cualquier incremento de pasivos futuro esté ligado directamente a la adquisición de activos productivos que tengan una vida útil larga y gran capacidad de generación.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [12: Solvencia Patrimonial - 2024]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, 'Annual', 'solvencia_patrimonial', 'Solvencia Patrimonial - Auditoría 2024', 'success',
'Cierras el año con una solvencia patrimonial envidiable de casi uno a uno, lo que significa que tienes tanto patrimonio como deudas totales en tu balance contable. Esta es una señal inequívoca de solidez absoluta que te abre las puertas a las mejores licitaciones y contratos con clientes corporativos de primer nivel mundial.',
'El riesgo es que esta nueva solvencia te tiente a realizar retiros de utilidades masivos que debiliten nuevamente tu base patrimonial para el próximo periodo fiscal. Recuerda que la solvencia no es solo un número estático, sino un músculo que debe seguirse entrenando mediante la reinversión constante de parte de las ganancias generadas.',
'Establece una política clara de dividendos que no comprometa tu ratio de solvencia patrimonial por debajo del cuarenta por ciento bajo ninguna circunstancia externa o interna. Sigue fortaleciendo tu patrimonio neto para que tu empresa sea vista no solo como un negocio rentable, sino como una institución financiera sólida y muy perdurable.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- 2025: EL AÑO DE LA VOLATILIDAD Y EL CONTROL DE RIESGOS
-- ============================================================================

-- [13: Cobertura de Cargos Fijos - 2025]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'Annual', 'cargos_fijos', 'Cobertura de Cargos Fijos - Auditoría 2025', 'warning',
'A pesar de los altibajos en tus ingresos, has logrado mantener una infraestructura operativa funcional que te permite seguir atendiendo a tu base de clientes actual con calidad. Tu resiliencia para no dejar caer tus indicadores técnicos básicos a pesar de la volatilidad del mercado demuestra que tienes un control operativo bastante aceptable.',
'Este año experimentaste caídas dramáticas en tu cobertura, llegando a niveles negativos que no veíamos desde la crisis del 2023 en algunos meses puntuales. No tener capacidad de cubrir tus gastos fijos con la utilidad de operación es una señal de que tus márgenes por proyecto se están erosionando rápidamente o tus gastos crecieron sin control.',
'Haz un análisis detallado de la rentabilidad por cada cliente y elimina de inmediato aquellos proyectos que no estén cubriendo su parte proporcional de los gastos fijos de la oficina. Necesitas volver a la disciplina del 2024, donde cada peso gastado en operación tenía un respaldo claro y directo en la facturación del mes.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [14: Cobertura de Intereses - 2025]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'Annual', 'intereses', 'Cobertura de Intereses - Auditoría 2025', 'warning',
'Resulta valioso que tu bajo nivel de endeudamiento total actúe como un seguro de vida ante la caída de tus utilidades operativas en varios meses de este año. Aunque la cobertura técnica haya bajado, el valor absoluto de tus intereses es tan pequeño que no has tenido que enfrentar crisis de pagos con bancos.',
'Sin embargo, ver periodos con cobertura negativa es alarmante, pues indica que si tuvieras una deuda más grande, estarías hoy en una situación de default técnico muy peligroso. La volatilidad de tus ganancias hace que tu capacidad de cubrir financiamiento sea impredecible, lo que te quita poder de negociación para futuras expansiones estratégicas.',
'No tomes nuevas deudas financieras hasta que no logres estabilizar tu flujo de caja operativo y demuestres al menos seis meses seguidos de cobertura positiva y creciente. Te sugerimos buscar fuentes de financiamiento alternativas, como el factoring sobre tus facturas más seguras, para evitar depender de créditos bancarios tradicionales que exigen pagos fijos.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [15: Cobertura Servicio Deuda - 2025]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'Annual', 'servicio_deuda', 'Cobertura Servicio Deuda - Auditoría 2025', 'success',
'Cierras el año con una nota positiva en este indicador, logrando que el EBITDA anual acumulado sea suficiente para honrar todos los compromisos de capital e intereses pactados. Tu disciplina histórica para no sobreendeudarte te ha permitido pasar este año de vacas flacas operativas sin el dolor de cabeza de las cobranzas externas.',
'Hubo momentos del año donde la cobertura se acercó peligrosamente a cero, recordándote que tu EBITDA es sensible a la puntualidad en la entrega de tus proyectos de consultoría. La falta de consistencia en tus flujos operativos mensuales crea un estrés innecesario en tu tesorería que podría evitarse con una mejor planificación de tus desembolsos.',
'Modela tus próximos pagos de deuda para que coincidan con los meses donde históricamente tienes mayores recaudos por cierres de contratos importantes en tu ciclo de negocio. Te recomendamos mantener un efectivo de reserva equivalente a tres cuotas totales de tu deuda para que tu cobertura real sea siempre invulnerable ante retrasos operativos.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [16: Deuda Neta / EBITDA - 2025]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'Annual', 'deuda_ebitda', 'Deuda Neta / EBITDA - Auditoría 2025', 'success',
'Tu relación entre deuda y generación de caja sigue siendo una de las fortalezas más grandes de tu balance, manteniéndose en niveles de muy bajo riesgo sistémico. Esta baja exposición crediticia es lo que te permite proponer nuevas estrategias de negocio sin el lastre de deudas pesadas que limiten tu agilidad operativa diaria.',
'Notamos que el ratio tendió a subir levemente respecto al cierre espectacular del 2024, debido principalmente a una disminución en tu EBITDA consolidado y no a un aumento de deudas. Es un recordatorio de que la solvencia se construye tanto pagando deudas como cuidando la rentabilidad de cada peso que entra a tu empresa cada día.',
'Prioriza la recuperación de tu margen de EBITDA operativo para que este ratio vuelva a bajar de las cero punto cinco veces cuanto antes en el próximo ejercicio. No permitas que la baja deuda te haga descuidar la eficiencia operativa; recuerda que la caja es la sangre que permite que tu empresa siga viva y fuerte.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [17: Endeudamiento Total - 2025]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'Annual', 'endeudamiento_total', 'Endeudamiento Total - Auditoría 2025', 'success',
'Has logrado estabilizar tu nivel de endeudamiento en el veinticinco por ciento, lo cual es una cifra óptima para el sector de servicios profesionales donde te desenvuelves actualmente. Tienes una estructura de capital muy sana, donde los dueños aportan la mayor parte del respaldo, dándote total autonomía estratégica ante terceros.',
'A pesar de la solidez, el hecho de que este ratio no haya bajado más sugiere que has tenido que financiar parte de tu operación corriente con pasivos revolventes para cubrir baches de flujo. No permitas que esta comodidad financiera se convierta en una dependencia de deudas de corto plazo para pagar gastos extraordinarios recurrentes operativos.',
'Sigue reinvirtiendo tus beneficios para que tu dependencia de terceros siga siendo mínima y puedas aprovechar oportunidades de inversión masivas que requieran inmediatez de respuesta. Te aconsejamos que tu endeudamiento con bancos nunca supere el quince por ciento de tus activos totales para que siempre tengas el control absoluto de tu marca.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [18: Solvencia Patrimonial - 2025]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'Annual', 'solvencia_patrimonial', 'Solvencia Patrimonial - Auditoría 2025', 'warning',
'Afortunadamente, el gran patrimonio que construiste en el 2024 te ha servido de cojín para absorber los resultados mixtos de este nuevo periodo sin caer en crisis. Tienes una base de activos netos real que te da prestigio y respaldo ante cualquier proveedor o entidad gubernamental con la que desees contratar servicios pesados.',
'Has visto un retroceso en tu ratio de solvencia patrimonial este año, indicando que el ritmo de crecimiento de tus deudas operativas fue superior al de tu generación de utilidades. Cerrar por debajo del veinticinco por ciento es un paso atrás respecto a tu meta ideal del cuarenta por ciento, lo que te quita algo de robustez financiera estructural.',
'En el 2026, tu prioridad absoluta debe ser inyectar valor al patrimonio mediante la retención total de las ganancias mensuales que logres generar Operativamente. Te recomendamos no emitir nuevos dividendos hasta que tu solvencia patrimonial recupere los niveles de seguridad del año pasado, garantizando así la permanencia y el valor de tu inversión.',
'Análisis Técnico Anual - Bloque B')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;
