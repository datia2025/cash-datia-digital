-- =============================================
-- PROYECTO: Datia Liquidity Dashboard
-- EMPRESA: CARLOS TAMAYO Y ASOCIADOS S.A.S. (ID 3099)
-- MÓDULO: LIQUIDEZ - BLOQUE B (AUDITORÍA TÉCNICA ANUAL)
-- PERIODO: 2023 - 2025 
-- ESTÁNDAR: GERENCIA-A-GERENCIA (+40 PALABRAS)
-- =============================================

-- ---------------------------------------------------------
-- INDICADOR: RAZÓN CORRIENTE (Tu blindaje contra deudas inmediatas)
-- ---------------------------------------------------------

-- 2025
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente', 2025, 'Annual', 'success', 
'Al cerrar el 2025, tu empresa muestra una solidez impresionante; tienes casi 3 pesos de respaldo por cada peso que debes en el corto plazo. Esto significa que gozas de un blindaje total contra tus deudas inmediatas, permitiéndote operar con una tranquilidad que muy pocas firmas de consultoría logran alcanzar hoy.', 
'Aunque el respaldo es altísimo, notas que la eficiencia de este blindaje ha bajado un poco respecto al año anterior. Tener tanto capital amarrado para cubrir deudas que ya tienes bajo control podría indicar que no estás moviendo tus recursos con la velocidad necesaria para aprovechar nuevas oportunidades de inversión estratégica.', 
'Te recomiendo que no te limites solo a acumular este respaldo. Con esta seguridad financiera, podrías buscar mejores condiciones de negociación con tus aliados o incluso reinvertir una parte de ese excedente en modernizar tu infraestructura de servicios, asegurando que tu dinero no solo te proteja, sino que también te haga crecer.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente', 2024, 'Annual', 'success', 
'El 2024 fue un año de récord en tu blindaje financiero, alcanzando un nivel de 3.38. Es decir, por cada peso de deuda tenías casi tres pesos y medio para responder. Esta robustez te dio una ventaja competitiva enorme para negociar contratos de largo aliento sin la presión de quedarte corto de recursos.', 
'El riesgo de este nivel tan elevado es el costo de oportunidad. Mantener un respaldo tan superior al estándar del sector (que suele ser de 1.5) sugiere que podrías estar siendo demasiado cauteloso con tu capital, dejando que los recursos se queden quietos en lugar de circular para generar nuevas utilidades operativas.', 
'Aprovecha este hito de solvencia para revisar tu esquema de toma de decisiones. Con este nivel de protección, tu empresa está lista para asumir retos de mayor envergadura o adquisiciones de talento sénior que podrían acelerar tus ingresos futuros sin poner en riesgo ni un solo día la estabilidad de tu caja.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente', 2023, 'Annual', 'success', 
'En los cimientos de tu historia reciente del 2023, cerraste con un respaldo muy saludable de 2.79 veces tu deuda. Fue un año donde demostraste que sabes cuidar los recursos de tu consultoría, manteniendo siempre una distancia prudente y segura ante cualquier compromiso exigible por parte de tus terceros o bancos.', 
'Lo que este nivel de 2.79 nos decía en su momento es que gran parte de tu patrimonio corriente estaba muy líquido, pero quizás faltaba un poco más de dinamismo en la rotación de esos activos para que el negocio se sintiera más ágil y menos cargado de recursos estáticos en el balance.', 
'La sugerencia desde entonces era empezar a apalancarte un poco más en proveedores estratégicos. Con un respaldo tan bueno, tienes todo el poder para pedir plazos más largos de pago, permitiendo que tu dinero trabaje más tiempo a tu favor antes de salir para cubrir las deudas operativas de tu firma.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR: CAPITAL DE TRABAJO (Tu oxígeno operativo)
-- ---------------------------------------------------------

-- 2025
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo', 2025, 'Annual', 'success', 
'Al finalizar el 2025, tu empresa cuenta con un oxígeno operativo de 491 millones de pesos, la cifra más alta de los últimos tres años. Esto significa que tienes casi 500 millones libres para mover tu negocio cada día, pagar nóminas y expandir servicios sin depender de préstamos externos adicionales.', 
'A pesar de este volumen récord de oxígeno, debes vigilar que ese dinero realmente esté circulando. Si gran parte de esos 491 millones se queda atrapada en facturas de clientes que no te pagan a tiempo, ese oxígeno es solo una cifra en el papel y no dinero real en tu bolsillo disponible.', 
'Te recomiendo auditar la calidad de esos 491 millones. Asegúrate de que el flujo de caja sea constante para que este oxígeno se traduzca en inversiones que traigan nuevos contratos. No permitas que el crecimiento de tu capital operativo se deba simplemente a una acumulación de cuentas por cobrar lentas.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo', 2024, 'Annual', 'success', 
'Durante el 2024, mantuviste un nivel de oxígeno operativo muy estable, cerrando alrededor de los 463 millones de pesos. Es una cifra que te permitió navegar el año con absoluta independencia financiera, dándote la libertad de elegir a tus clientes y proyectos basados en valor y no solo en necesidad de caja.', 
'El punto de alerta es que este oxígeno fue ligeramente menor al del año anterior, lo cual sugiere que tus deudas con proveedores o gastos operativos crecieron a un ritmo un poco mayor que tus activos disponibles. Es una señal de que debes empezar a optimizar tus costos fijos para que no se coman tu margen.', 
'Es vital que revises tus contratos con terceros y busques eficiencias. Con 463 millones sigues estando muy cómodo, pero la tendencia leve a la baja debe frenarse para que tu motor operativo no pierda potencia en los años venideros y sigas teniendo ese respaldo que te caracteriza frente a la competencia.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo', 2023, 'Annual', 'success', 
'En el cierre del 2023, disponías de 475 millones de pesos de oxígeno puro para tu operación. Fue un periodo de gran robustez donde tu capacidad de maniobra te permitió asumir inversiones iniciales en tecnología y talento sin que tu flujo de caja diario se viera afectado en lo más mínimo.', 
'Lo que este nivel reflejaba era una gestión muy prudente de tus ingresos, pero también ponía de manifiesto que tenías una gran cantidad de recursos que no estaban siendo destinados a la generación de nueva renta, manteniéndolos guardados como un seguro contra cualquier tipo de imprevisto operativo futuro.', 
'La recomendación era que empezaras a destinar una porción programada de ese oxígeno a proyectos de marketing o ventas. Con 475 millones libres, tenías el lujo de experimentar con nuevas líneas de servicios de consultoría sin poner en riesgo la nómina ni la estabilidad básica de tu firma profesional.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR: PRUEBA ÁCIDA (Tu capacidad de respuesta sin ventas)
-- ---------------------------------------------------------

-- 2025
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida', 2025, 'Annual', 'success', 
'Al cerrar el 2025, tu reserva inmediata te permite cubrir tus deudas casi 3 veces (2.95) sin necesidad de vender ni un solo servicio adicional. Esta es una noticia excelente para tu tranquilidad personal y la de tus socios, pues garantiza que el negocio sobrevive incluso ante una sequía comercial prolongada.', 
'El único matiz negativo es que este blindaje es tan alto que podría sugerir una falta de uso intensivo de tus recursos para crecer. Tener tres pesos líquidos por cada peso que debes indica que tu dinero está quizás demasiado seguro y poco expuesto a oportunidades que den mayor rentabilidad al patrimonio.', 
'Mi consejo es que definas un fondo de reserva técnica y el resto lo pongas a trabajar. No necesitas tener 3 pesos quietos para cubrir uno solo; con tener 1.5 es más que suficiente. Libera ese capital excedente para innovar en tus servicios o mejorar la experiencia de tus clientes corporativos.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida', 2024, 'Annual', 'success', 
'El 2024 fue el año de mayor blindaje inmediato en tu historia reciente, con un nivel de 3.38. Fue un periodo donde tu capacidad de reacción ante cualquier crisis fue absoluta; podías pagar todas tus deudas tres veces y media solo con lo que ya tenías en tus activos más líquidos en ese momento.', 
'Esta situación de "hiper-seguridad" pudo haber causado que fueras menos incisivo en tu gestión de ventas, al no sentir la presión de la caja. En las empresas de servicios, el exceso de liquidez a veces adormece la agresividad comercial que se requiere para seguir capturando mercado de forma constante y dinámica.', 
'Te sugiero que utilices estos periodos de alta seguridad para tomar riesgos controlados. Con un blindaje de 3.38, es el momento de probar nuevas estrategias de consultoría o abrir nuevas plazas geográficas. Tienes el respaldo para fallar y volver a intentar sin comprometer nunca la supervivencia de tu empresa.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida', 2023, 'Annual', 'success', 
'En el 2023, tu capacidad de respuesta sin depender de ventas futuras era de 2.79 veces tus deudas. Desde entonces, ya mostrabas un control impecable sobre tus pasivos de corto plazo, asegurando que tu firma fuera vista por el sector bancario como un cliente de riesgo mínimo y máxima confiabilidad financiera.', 
'Lo que este dato revelaba era una estructura de costos muy liviana o un recaudo de cartera muy eficiente. Sin embargo, también indicaba que podrías estar reteniendo capital que tus socios podrían estar disfrutando más o que podrías estar invirtiendo en activos tecnológicos que den valor futuro al negocio.', 
'La recomendación era equilibrar ese nivel de blindaje hacia un 1.8 o 2.0, destinando el sobrante a fortalecer tu marca personal y corporativa. Ser financieramente saludable es bueno, pero ser financieramente eficiente es lo que realmente te permitirá escalar tu consultoría al siguiente nivel de ingresos y prestigio.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR: RATIO DE EFECTIVO (Tu bolsillo de ahorros hoy)
-- ---------------------------------------------------------

-- 2025
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo', 2025, 'Annual', 'success', 
'Cierras el 2025 con 1.49 veces tus deudas guardado directamente en la cuenta de ahorros. Esto es magnífico porque tienes casi un peso y medio en efectivo puro por cada peso que debes. Pocos gerentes pueden decir que tienen para pagar todo lo que deben hoy y aún les sobra medio presupuesto en el bolsillo.', 
'A pesar de este éxito, tu efectivo ha bajado un 30% comparado con el 2023. Esto indica que aunque sigues estando muy bien, tu ritmo de gasto o inversión en efectivo ha sido mayor que tu velocidad de generación de nuevas rentas líquidas en los últimos meses del año, lo cual exige un monitoreo más cercano.', 
'Te sugiero que establezcas una meta de ahorro mensual para volver a acercar este bolsillo a las 2 veces tu deuda. No porque lo necesites para sobrevivir, sino para tener un músculo financiero que te permita realizar adquisiciones de oportunidad o pagos de contado con grandes descuentos tributarios y comerciales.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo', 2024, 'Annual', 'success', 
'En el 2024, tu bolsillo de ahorros cerró en 1.46 veces tus pasivos inmediatos. Lograste mantener una caja sana que cubría con creces cualquier susto financiero del día a día, permitiéndote pagar nóminas y honorarios sin demoras y manteniendo una moral de equipo muy alta gracias a esa puntualidad y solvencia absoluta.', 
'Lo que nos preocupa es que este fue el punto más bajo de ahorro comparado con el año anterior. Significa que durante el 2024 consumiste más efectivo del que entró, posiblemente por inversiones en nuevos proyectos que aún no han retornado su flujo de caja o por un incremento en tus retiros personales de capital.', 
'Haz un alto en el camino y revisa tus egresos en efectivo. No dejes que este ratio baje de 1.25, pues ese es el límite donde empiezas a perder libertad de acción. Asegúrate de que cada peso que sale de tu bolsillo hoy tenga un retorno claro y medible en nuevos contratos de servicios para el próximo periodo.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo', 2023, 'Annual', 'success', 
'El 2023 fue un año de abundancia de ahorros sin igual, cerrando con 2.18 veces tus deudas en efectivo contante y sonante. Tenías el doble de lo necesario para liquidar todas tus obligaciones de corto plazo solo con lo que tenías en el banco, reflejando una gestión de caja magistral y casi exenta de riesgos financieros.', 
'El único "pecado" de tener tanta abundancia fue la ineficiencia. Tener dos veces tu deuda en una cuenta de ahorros que rinde poco es casi un favor que le haces al banco con tu propio capital de trabajo. Ese exceso de dinero pudo haber sido invertido en activos que generaran una rentabilidad pasiva superior.', 
'La sugerencia para ese entonces era crear un portafolio de inversión líquida. Mantener 1.0 en ahorros para imprevistos y el resto (1.18) ponerlo en instrumentos que den un rendimiento real. Así, tu liquidez no solo te da paz mental, sino que también te regala dinero extra por el simple hecho de saber gestionarlo con inteligencia.', 
'Protocolo Liquidez Bloque B v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;
