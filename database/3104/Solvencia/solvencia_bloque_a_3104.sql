-- 🛡️ Dashboard Solvencia - Bloque A: Dictámenes Maestros (Empresa 3104)
-- Estándar: Gerencia-a-Gerencia (+40 palabras por sección, Tuteo)
-- Periodos: 2023, 2024, 2025 (Annual + 1Q-4Q)

-- [INSIGHT 1: 2023 ANNUAL]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, 'Annual', 'insight-solvencia-ai', 'Dictamen Maestro de Solvencia 2023', 'danger',
'A pesar de los desafíos estructurales que enfrentaste este año, lograste mantener la operación activa y buscar alternativas de financiamiento que te permitieron sortear los picos de iliquidez. Tu perseverancia para no detener la prestación de servicios fue clave para sostener la base de clientes actual y planear la recuperación estratégica que se vislumbró hacia finales del ejercicio.',
'Tienes un nivel de endeudamiento que supera casi la totalidad de tus activos, lo que pone tu empresa en una situación de alta vulnerabilidad frente a tus acreedores. El hecho de que tus flujos operacionales no alcancen a cubrir siquiera los intereses básicos sugiere que estás trabajando bajo una presión financiera extrema que podría comprometer seriamente tu permanencia en el mercado.',
'Es imperativo que te sientes a renegociar las condiciones de tus pasivos de manera inmediata para aliviar la carga de intereses que hoy asfixia tu caja. Debes priorizar la inyección de capital propio o la desinversión de activos no estratégicos para bajar ese ratio de deuda por debajo del setenta por ciento y recuperar así tu autonomía para decidir el rumbo del negocio.',
'Análisis Anual Consolidado - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 2: 2023 1Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, '1Q', 'insight-solvencia-ai_1Q', 'Dictamen Solvencia - Primer Trimestre 2023', 'danger',
'Durante este arranque de año, demostraste una gran capacidad de resiliencia al mantener el timón de la compañía firme a pesar de la fuerte tormenta financiera. Valoramos que hayas mantenido los compromisos esenciales con tu equipo humano, evitando que la crisis de solvencia afectara la moral operativa necesaria para atender los proyectos de tus clientes actuales.',
'Las métricas de este primer cuarto revelan que tu capacidad de cobertura es nula, dejando tu operación a merced de la voluntad de terceros. El nivel de endeudamiento cercano al noventa por ciento es una señal de alarma máxima, indicando que básicamente todo lo que posees ya está comprometido con acreedores, dejándote sin margen de maniobra para cualquier imprevisto.',
'Debes acelerar el recaudo de cartera para inyectar liquidez inmediata y reducir las líneas de crédito que más te castigan con intereses. Te recomendamos buscar un acuerdo de pago agresivo con tus proveedores principales y evitar a toda costa tomar nuevas deudas hasta que no logres estabilizar tu patrimonio neto, el cual hoy se encuentra peligrosamente bajo.',
'Análisis Trimestral 1Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 3: 2023 2Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, '2Q', 'insight-solvencia-ai_2Q', 'Dictamen Solvencia - Segundo Trimestre 2023', 'danger',
'En este segundo trimestre, es rescatable tu esfuerzo por optimizar los gastos operativos, logrando que el deterioro del patrimonio no fuera aún más acelerado. Has mantenido una gestión prudente de los activos fijos, estirando cada peso disponible para evitar que la operación se frenara por completo ante la evidente falta de respaldo patrimonial suficiente.',
'La solvencia patrimonial sigue mostrando números rojos que no puedes ignorar por más tiempo, ya que indican que tu pasivo devoró por completo tu capital. La cobertura del servicio de la deuda es insuficiente, lo que significa que estás gastando más de lo que generas solo en pagar financiamiento, creando un ciclo de déficit que erosiona tu valor empresarial día tras día.',
'Prioriza la facturación de servicios de ciclo corto que generen efectivo rápido para amortizar deudas corrientes que tengan tasas de usura. Es el momento de evaluar una capitalización por parte de los socios o la entrada de un inversor estratégico que sanee el balance, permitiéndote respirar y volver a enfocarte en el crecimiento y no solo en la supervivencia.',
'Análisis Trimestral 2Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 4: 2023 3Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, '3Q', 'insight-solvencia-ai_3Q', 'Dictamen Solvencia - Tercer Trimestre 2023', 'danger',
'Resulta positivo ver que, en medio de la crisis, has logrado mantener la confianza de tus clientes estratégicos, lo cual asegura un flujo de ingresos futuro. Tu habilidad para negociar plazos adicionales con ciertos proveedores clave ha sido el tanque de oxígeno que te ha permitido llegar a esta etapa del año sin un cese total de actividades.',
'Sigues operando en una zona de altísimo riesgo financiero, con un ratio de endeudamiento que orilla el cien por ciento, lo que técnicamente te deja sin respaldo propio. Tus indicadores de cobertura de intereses no muestran mejoría, lo que confirma que tu modelo actual no es autosostenible bajo la estructura de costos financieros que vienes arrastrando desde el inicio del año.',
'Haz un corte radical en todos los gastos que no contribuyan directamente a la generación de ingresos en el próximo mes para liberar flujo. Te sugerimos convertir parte de tu deuda de corto plazo a largo plazo si es posible, buscando periodos de gracia que te permitan estabilizar tu operación antes de reiniciar los pagos de capital fuertes y pesados.',
'Análisis Trimestral 3Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 5: 2023 4Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2023, '4Q', 'insight-solvencia-ai_4Q', 'Dictamen Solvencia - Cuarto Trimestre 2023', 'warning',
'Cierras el año con una ligera estabilización en la caída de tus ratios, lo que sugiere que las medidas de choque tomadas empiezan a dar resultados tímidos. Es valioso que hayas logrado cerrar contratos importantes que prometen un flujo de caja más robusto para el próximo ejercicio, dándote una luz al final del túnel de este año tan accidentado.',
'Tu balance de fin de año muestra cicatrices profundas, con un patrimonio negativo que requerirá un esfuerzo heroico para revertir en el 2024. La dependencia excesiva de deuda externa te ha dejado sin autonomía financiera, y los gastos financieros acumulados durante estos doce meses han mermado tu capacidad de reinversión en tecnología y talento humano necesario para crecer.',
'Prepara un plan de choque financiero para el primer trimestre del próximo año enfocado exclusivamente en la recuperación de la solvencia patrimonial. Debes ser muy agresivo en la reducción de deudas bancarias y asegurarte de que cada nuevo contrato tenga un margen de utilidad que supere con creces tus costos de financiamiento actuales para sanear tu estructura.',
'Análisis Trimestral 4Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 6: 2024 ANNUAL]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, 'Annual', 'insight-solvencia-ai', 'Dictamen Maestro de Solvencia 2024', 'success',
'Has protagonizado una recuperación extraordinaria durante este 2024, logrando transformar una situación de insolvencia técnica en un balance sólido y saludable. Tu disciplina para reducir deudas y mejorar la rentabilidad operativa te ha permitido cerrar el año con una solvencia patrimonial que supera de lejos los estándares mínimos, recuperando el control total sobre tu futuro empresarial.',
'Aunque la solvencia general es ahora excelente, no debes olvidar que gran parte del éxito se debió a ajustes drásticos que podrían haber afectado tu capacidad instalada. La volatilidad que experimentaste a mitad de año en la cobertura de intereses sugiere que todavía hay cierta sensibilidad en tus flujos que depende directamente de la puntualidad en el recaudo de tus grandes facturas.',
'Aprovecha esta nueva posición de fortaleza para negociar mejores tasas de interés en cualquier financiamiento futuro, ahora que tu perfil de riesgo es mucho menor. Invierte el excedente de caja en activos que generen ingresos recurrentes y mantén tu ratio de endeudamiento por debajo del treinta por ciento para asegurar que ninguna crisis externa vuelva a ponerte en jaque.',
'Análisis Anual Consolidado - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 7: 2024 1Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, '1Q', 'insight-solvencia-ai_1Q', 'Dictamen Solvencia - Primer Trimestre 2024', 'success',
'Arrancaste el año con un quiebre de tendencia positivo muy marcado, logrando por fin pasar al terreno de los números negros en solvencia. Es impresionante cómo lograste triplicar tu capacidad de cobertura de intereses en apenas tres meses, lo que demuestra que tu enfoque en proyectos de alta rentabilidad y bajo costo financiero está dando sus frutos rápidamente.',
'A pesar de la mejora sustancial, tu endeudamiento total sigue por encima del setenta por ciento en este periodo, lo que indica que todavía arrastras deudas pesadas del año pasado. Tu patrimonio, aunque recuperado, aún es pequeño frente al volumen de obligaciones actuales, lo que te obliga a mantener una vigilancia extrema sobre cada movimiento de capital que realices.',
'Mantén la guardia alta y no te dejes tentar por nuevos créditos ahora que los bancos ven tu mejoría; sigue enfocado en pagar lo viejo antes de adquirir lo nuevo. Utiliza el excedente operativo de este trimestre para blindar tu fondo de maniobra y asegurar que tengas respaldo ante cualquier demora imprevista en el pago de tus clientes más grandes.',
'Análisis Trimestral 1Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 8: 2024 2Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, '2Q', 'insight-solvencia-ai_2Q', 'Dictamen Solvencia - Segundo Trimestre 2024', 'success',
'Este trimestre consolida tu transformación financiera con ratios de cobertura que ya superan con creces los objetivos del sector consultoría. Has logrado disminuir tu ratio de Deuda/EBITDA a niveles mínimos, lo que significa que tu operación genera tanta caja que podrías pagar tus compromisos financieros en una fracción del tiempo que antes necesitabas para hacerlo.',
'El único punto de atención es asegurar que esta eficiencia operativa no se convierta en complacencia; la solvencia patrimonial, aunque positiva, aún tiene espacio para crecer y darte un respaldo más robusto. Nota que tus indicadores de cobertura de servicios de deuda fluctuaron levemente, recordándote que la gestión estacional de tus gastos debe ser tan rigurosa como la de tus ingresos.',
'Continúa reinvirtiendo tus utilidades en fortalecer el patrimonio de la compañía para elevar tu ratio de solvencia patrimonial hacia el objetivo del cuarenta por ciento. Te aconsejamos auditar tus pólizas de seguros y garantías contractuales para asegurar que tu respaldo financiero esté alineado con el tamaño de los nuevos contratos que estás firmando actualmente.',
'Análisis Trimestral 2Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 9: 2024 3Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, '3Q', 'insight-solvencia-ai_3Q', 'Dictamen Solvencia - Tercer Trimestre 2024', 'success',
'Lograste alcanzar el hito del tercer trimestre con una estructura de capital envidiable, donde tus activos ya superan ampliamente tus pasivos totales. La solvencia patrimonial finalmente sobrepasó el umbral del treinta por ciento, dándote por primera vez en mucho tiempo la tranquilidad de saber que tu empresa tiene un valor neto real y creciente para sus socios.',
'Ten cuidado con el manejo de tus excedentes de liquidez; el hecho de que tengas casi nulo endeudamiento podría invitar a gastos superfluos que diluyan tu rentabilidad neta al final del año. Los indicadores proyectan una estabilidad total, pero siempre existe el riesgo de que la concentración de tus ingresos en pocos clientes afecte tu solvencia si alguno de ellos falla.',
'Es el momento ideal para planear inversiones estratégicas de largo plazo que solidifiquen tu infraestructura tecnológica y mejoren tu competitividad sin necesidad de endeudarte. Te sugerimos establecer una reserva legal y voluntaria más agresiva ahora que tu flujo lo permite, creando un colchón de seguridad para los ciclos de baja demanda del próximo año.',
'Análisis Trimestral 3Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 10: 2024 4Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2024, '4Q', 'insight-solvencia-ai_4Q', 'Dictamen Solvencia - Cuarto Trimestre 2024', 'success',
'Cierras este espectacular 2024 con la casa en orden y unos niveles de solvencia que te sitúan en el top de eficiencia de tu sector. Ver tu endeudamiento caer al veintitrés por ciento es una victoria estratégica que libera casi todo tu flujo para el crecimiento orgánico, marcando el fin oficial de la era de dependencia extrema de los créditos bancarios.',
'El único reto para el cierre fue una leve volatilidad en el servicio de la deuda, probablemente por pagos estacionales de fin de año que estresaron temporalmente la capacidad de cobertura. Sin embargo, esto es apenas un detalle menor dentro de un cuadro financiero general que brilla por su solidez y por la rapidez con la que limpiaste tu balance de obligaciones innecesarias.',
'Proyecta el 2025 manteniendo esta misma disciplina de austeridad inteligente y enfoque en márgenes altos que te trajo hasta aquí. No incrementes tus pasivos a menos que sea para una expansión directa que garantice un ROE superior al veinte por ciento, para que sigas construyendo riqueza real sobre la base de esta nueva y poderosa solvencia patrimonial.',
'Análisis Trimestral 4Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 11: 2025 ANNUAL]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'Annual', 'insight-solvencia-ai', 'Dictamen Maestro de Solvencia 2025', 'warning',
'Durante el transcurso del 2025, has logrado mantener el ratio de endeudamiento total en niveles muy saludables, siempre por debajo del treinta por ciento de tus activos totales. Esta disciplina financiera es tu mayor activo, ya que te permite navegar periodos de turbulencia sin el fantasma de la insolvencia que te persiguió en el pasado, dándote una gran estabilidad.',
'A pesar del bajo endeudamiento, el año estuvo marcado por una volatilidad extrema y preocupante en tus ratios de cobertura, con caídas drásticas que no tienen explicación lógica inmediata. El hecho de que tu cobertura de intereses y cargos fijos haya pasado de cifras espectaculares a valores negativos sugiere problemas graves en la consistencia de tu rentabilidad operativa mensual.',
'Debes realizar una auditoría forense inmediata sobre tus costos y gastos operacionales para identificar por qué se dispararon y anularon tu capacidad de cobertura en varios meses del año. Te recomendamos estandarizar tus procesos de facturación y cobro para evitar estos "baches" financieros que, si bien no te llevan a la quiebra hoy, erosionan tu valor estratégico día tras día.',
'Análisis Anual Consolidado - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 12: 2025 1Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, '1Q', 'insight-solvencia-ai_1Q', 'Dictamen Solvencia - Primer Trimestre 2025', 'danger',
'Este primer trimestre refleja que conservas un excelente control sobre tu nivel de deuda total, manteniéndola en mínimos históricos respecto a tu tamaño actual. Esto te da una armadura protectora que evita que los incidentes operativos que tuvimos este trimestre escalen hacia una crisis de liquidez sistémica que pudiera poner en riesgo tu operación a largo plazo.',
'Lamentablemente, el inicio de año fue financieramente catastrófico en términos de eficiencia de cobertura, con un desplome dramático que dejó tus indicadores en terreno negativo. No tener fondos suficientes para cubrir ni siquiera los gastos fijos básicos durante varios meses es una señal de alerta máxima sobre la sostenibilidad de tu estructura de costos actual o la calidad de tus ingresos.',
'Urgente: Revisa tus contratos de prestación de servicios y ajusta las tarifas de inmediato si tus costos de nómina o infraestructura crecieron desproporcionadamente en este trimestre. Necesitas restablecer tu margen operativo por encima del quince por ciento de manera prioritaria para que tu cobertura de intereses vuelva a ser el escudo que te proteja en el futuro cercano.',
'Análisis Trimestral 1Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 13: 2025 2Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, '2Q', 'insight-solvencia-ai_2Q', 'Dictamen Solvencia - Segundo Trimestre 2025', 'warning',
'En este segundo cuarto del año, mostraste una recuperación notable durante los meses intermedios, logrando revertir momentáneamente la alarmante caída del inicio de año. Es un alivio ver que tu capacidad de generar EBITDA volvió a escena, permitiéndote cubrir tus obligaciones de deuda con holgura durante algunos de los meses pico de este trimestre tan volátil.',
'La solvencia patrimonial sigue mostrando una fragilidad preocupante, fluctuando por debajo del umbral del veinte por ciento, lo que te deja con un respaldo propio muy ajustado frente al volumen de contratos. Los picos de gastos no planeados siguen golpeando tu cobertura de intereses de manera errática, indicando que aún no tienes el control total sobre tu presupuesto operativo.',
'Establece un comité de control de gastos diario para asegurar que no se desvíe ni un peso de los objetivos de rentabilidad planteados para el resto del año 2025. Enfócate exclusivamente en fortalecer tu capital de trabajo neto y no autorices nuevas contrataciones o gastos de expansión hasta que tu solvencia patrimonial alcance al menos el treinta por ciento de solidez.',
'Análisis Trimestral 2Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 14: 2025 3Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, '3Q', 'insight-solvencia-ai_3Q', 'Dictamen Solvencia - Tercer Trimestre 2025', 'warning',
'Durante el tercer trimestre, resaltamos tu capacidad para mantener el endeudamiento bajo control a pesar de las fuertes presiones externas que enfrentaste en tu sector. El hecho de que tu pasivo no se haya disparado ante la caída de márgenes es una muestra de tu prudencia financiera y de tu compromiso con la estabilidad de largo plazo de la compañía.',
'Sigues experimentando incidentes de cobertura donde tus gastos superan tus entradas financieras netas, dejando tus indicadores de servicio de deuda en una montaña rusa peligrosa. La rentabilidad acumulada de este periodo no está siendo suficiente para alimentar el patrimonio, lo que hace que tu ratio de solvencia patrimonial siga estancado en niveles mediocres que no te dan mucha seguridad.',
'Recorta de raíz cualquier proyecto que no tenga un retorno de inversión garantizado en menos de seis meses para redireccionar ese flujo hacia el fortalecimiento de tu capital. Te recomendamos buscar eficiencias fiscales que te permitan retener más utilidad neta y así acelerar el crecimiento de tu patrimonio propio para dejar de depender de la suerte en la cobertura mensual.',
'Análisis Trimestral 3Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [INSIGHT 15: 2025 4Q]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, '4Q', 'insight-solvencia-ai_4Q', 'Dictamen Solvencia - Cuarto Trimestre 2025', 'warning',
'Cierras el año manteniendo la medalla del bajo endeudamiento, lo cual es tu garantía de supervivencia ante la inestabilidad que mostró tu operación durante este ejercicio. Es muy valioso que hayas llegado a diciembre con un balance liviano, lo que te permite planear el 2026 con una mente mucho más despejada y sin el peso de cobranzas judiciales o presiones bancarias.',
'El fin de año vuelve a mostrar debilidades en la cobertura de cargos fijos, cerrando con números que obligan a una reestructuración profunda de tu nómina o de tus costos fijos de oficina. La solvencia patrimonial cierra por debajo de los ideales históricos de la empresa, lo que indica que el 2025 fue un año de estancamiento en la creación de valor real para los accionistas.',
'No des por terminada la tarea de recuperación; el 2026 debe ser el año de la eficiencia absoluta para recuperar la gloria financiera que alcanzaste en el 2024. Te aconsejamos rediseñar tu modelo de compensación comercial para que esté atado al margen de contribución real y no solo a las ventas, asegurando así que cada nueva cuenta inyecte verdadera solvencia a tu balance.',
'Análisis Trimestral 4Q - Bloque A')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;
