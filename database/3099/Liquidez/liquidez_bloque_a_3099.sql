-- =============================================
-- PROYECTO: Datia Liquidity Dashboard
-- EMPRESA: CARLOS TAMAYO Y ASOCIADOS S.A.S. (ID 3099)
-- MÓDULO: LIQUIDEZ - BLOQUE A (INSIGHTS MAESTROS)
-- PERIODO: 2023 - 2025 (Annual + Quarterly)
-- ESTÁNDAR: GERENCIA-A-GERENCIA (+40 PALABRAS)
-- =============================================

-- ---------------------------------------------------------
-- AÑO 2025: BLOQUE MAESTRO
-- ---------------------------------------------------------

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai', 2025, 'Annual', 'success', 
'Al repasar por completo tu gestión del 2025, es gratificante notar que tu empresa mantiene un oxígeno financiero de 491 millones de pesos. Tienes la capacidad de cubrir tus compromisos de corto plazo casi 3 veces con lo que tienes hoy, lo cual te coloca en una posición de mucha tranquilidad y fortaleza frente a tus competidores del sector de consultoría.', 
'Aunque tu disponibilidad inmediata en cuenta es de 1.5 veces lo que debes, se nota una acumulación de capital que podría estar mejor aprovechada. Tener tanto dinero ''quieto'' o atrapado en tu operación diaria sin una estrategia de inversión clara significa que estás dejando de ganar rentabilidad extra sobre ese patrimonio que has construido con esfuerzo.', 
'Te recomiendo revisar tu plan de expansión para los próximos meses de 2026. Con el respaldo financiero que hoy tienes, podrías negociar mejores condiciones con tus aliados estratégicos o incluso considerar una distribución de dividendos más agresiva sin poner en riesgo la continuidad de tu operación, dado tu alto blindaje ante imprevistos.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_4Q', 2025, '4Q', 'success', 
'Durante este cuarto trimestre de 2025, has logrado sostener un colchón de seguridad muy robusto, cerrando con una capacidad de respuesta inmediata de 2.9 veces tus deudas. Esto demuestra que tu modelo de consultoría es altamente generador de caja y que el cierre de año te encuentra con las finanzas totalmente saneadas y listas.', 
'A pesar de la solidez, vemos que el dinero en tu bolsillo de ahorros ha bajado ligeramente comparado con el inicio del año. Debes vigilar que esta tendencia no continúe, pues aunque sigues estando muy por encima de los límites de riesgo, la velocidad con la que el efectivo sale de tu caja ha aumentado.', 
'Es el momento ideal para proyectar tu flujo de caja de cara al primer semestre del próximo año. Aprovecha tu excedente actual para realizar pagos anticipados que te den descuentos financieros o para invertir en capacitación de tu equipo, convirtiendo ese flujo líquido en activos intelectuales que generen más valor a largo plazo.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_3Q', 2025, '3Q', 'success', 
'En el tercer trimestre de 2025, tu empresa alcanzó un pico de liquidez impresionante con un capital de trabajo excedente de 508 millones de pesos. Esta abundancia de recursos te permite operar con una libertad total, asegurando que cada factura y cada nómina se paguen sin el más mínimo retraso o angustia financiera para los socios.', 
'El reto de tener una caja tan fuerte es evitar la complacencia operativa. Notas que aunque el dinero sobra, los tiempos de cobro a tus clientes podrían estar empezando a relajarse. No permitas que la abundancia oculte ineficiencias en tu proceso de recaudo, pues la caja debe rotar constantemente para mantener vivo el negocio.', 
'Te aconsejo evaluar opciones de inversión de corto plazo para ese excedente de 500 millones. Mantenerlo en una cuenta corriente tradicional es perder dinero frente a la inflación. Busca instrumentos seguros que te den un rendimiento diario, manteniendo la disponibilidad pero protegiendo el poder adquisitivo de tu importante patrimonio líquido.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_2Q', 2025, '2Q', 'success', 
'Al cerrar este segundo trimestre de 2025, tu capacidad de pago se mantiene en un nivel envidiable de 2.7 veces tus deudas corrientes. Este indicador de ''blindaje'' es tu mejor carta de navegación para enfrentar los retos del segundo semestre, dándote la solvencia necesaria para tomar decisiones audaces sin miedo a falta de liquidez.', 
'Sin embargo, observamos que tu disponibilidad inmediata en efectivo descendió a 1.17 veces. Aunque sigue siendo un nivel saludable, es la cifra más baja de lo que va corrido del año, lo que sugiere que has tenido salidas de caja importantes o que estás financiando a tus clientes por más tiempo del previsto.', 
'Es momento de ajustar tus políticas de cobro y de pago. Intenta acelerar el recaudo de tus facturas de consultoría antes de que termine el trimestre para recuperar ese nivel de efectivo superior a 1.25. Mantener la liquidez alta te permitirá negociar con mayor fuerza ante cualquier oportunidad de negocio imprevista.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_1Q', 2025, '1Q', 'success', 
'Arrancaste el primer trimestre de 2025 con una solidez asombrosa, manteniendo 3.27 pesos de respaldo por cada peso que debes en el corto plazo. Este arranque de año te permite planificar con total libertad, sabiendo que tu operación está plenamente financiada y que cuentas con el oxígeno necesario para cualquier inversión inicial estratégica.', 
'A pesar de este gran respaldo total, tu caja inmediata se sitúa en 1.32 veces tus pasivos. Es una cifra excelente, pero comparada con el cierre del año anterior, muestra que el inicio de año ha demandado un uso intensivo de tus recursos líquidos para cubrir la puesta en marcha de los nuevos proyectos de consultoría.', 
'Te sugiero mantener un control riguroso de tus gastos operativos durante estos meses de arranque. Asegúrate de que los anticipos de tus nuevos contratos de servicios se recauden a tiempo para que tu ratio de efectivo vuelva a niveles superiores a 1.8 lo antes posible, fortaleciendo tu posición para el resto del año.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- AÑO 2024: HISTÓRICO DE CONSOLIDACIÓN
-- ---------------------------------------------------------

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai', 2024, 'Annual', 'success', 
'El cierre del año 2024 dejó una bitácora financiera impecable para tu empresa, con un índice de solvencia de 3.38 veces. Esto significa que a lo largo de todo el ejercicio lograste más que triplicar tus recursos corrientes frente a tus deudas, consolidando una posición de caja muy difícil de igualar en el sector.', 
'Lo que llama la atención es que, aunque el respaldo total creció, tu efectivo líquido cerró el año en 1.46 veces, un nivel inferior al del año pasado. Esto sugiere que gran parte de tu riqueza líquida se quedó atrapada en facturas por cobrar o en pagos anticipados que aún no se han convertido en dinero efectivo.', 
'Para el próximo periodo, el enfoque debe ser la conversión de esa cartera en dinero real dentro de tu cuenta de ahorros. No basta con ser solvente en el papel; necesitas que esa liquidez se traduzca en efectivo disponible para reinversión inmediata o para disfrutar de las utilidades que el negocio ya está generando.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_4Q', 2024, '4Q', 'success', 
'Terminaste el cuarto trimestre de 2024 con la capacidad de cubrir tus deudas 3.38 veces, una marca histórica para la firma. Este cierre de año te permitió proyectar un crecimiento agresivo para el futuro, respaldado por una base de activos corrientes sumamente robusta que garantiza el cumplimiento de todos tus compromisos bancarios y comerciales.', 
'Sin embargo, el efectivo disponible en tu cuenta mostró señales de agotamiento relativo comparado con el trimestre anterior. Es fundamental que analices si el aumento de tus activos corrientes se debe a un crecimiento genuino o si simplemente tus clientes se están tardando más en pagarte, demorando la entrada de dinero real.', 
'Te recomiendo realizar un barrido de cartera antes de iniciar el nuevo periodo. Asegúrate de capturar la liquidez que tienes en la calle para que empieces el próximo año con el bolsillo lleno y puedas aprovechar las oportunidades de inversión que suelen surgir en los primeros meses de cada ejercicio anual.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_3Q', 2024, '3Q', 'success', 
'Durante el tercer trimestre de 2024, tu oxígeno financiero se situó en 416 millones de pesos, una cifra que te permite dormir tranquilo. Tienes la facultad de pagar tus deudas actuales 2.44 veces, lo cual es casi el doble del estándar de seguridad para una empresa de servicios de tu tamaño y trayectoria.', 
'El punto de atención este trimestre es tu ratio de efectivo, que bajó a 1.09 veces. Aunque sigues estando en la zona verde, esta reducción indica que tu caja está bajo una mayor presión que antes. Debes cuidar que tus deudas operativas no crezcan por encima de tu capacidad de recaudo mensual de corto plazo.', 
'Te sugiero ser más selectivo con tus gastos de representación y administrativos en los próximos meses. Enfócate en recuperar ese nivel de efectivo por encima de 1.5 para que tu empresa no solo sea solvente, sino que también tenga la liquidez inmediata necesaria para actuar ante cualquier emergencia de mercado inesperada.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_2Q', 2024, '2Q', 'success', 
'En el segundo trimestre de 2024, lograste mantener 2.39 pesos de respaldo por cada peso adeudado, lo cual es una posición de liquidez muy saludable. Tu capital de trabajo de 369 millones de pesos es el motor que mantiene tu consultoría activa y funcionando sin contratiempos, permitiéndote facturar con total confianza comercial.', 
'A pesar de este buen dato, el capital de trabajo neto ha disminuido respecto al trimestre anterior, lo que sugiere que parte de tus recursos se han destinado a inversiones en activos permanentes o a cubrir gastos no previstos. Debes monitorear que esta reducción de oxígeno operativo no se vuelva una tendencia constante.', 
'Mi recomendación es que estabilices tus egresos fijos. Busca maneras de optimizar tu flujo operativo para que ese capital de trabajo vuelva a crecer hacia los 400 millones. Una empresa de servicios prospera cuando tiene un margen amplio de recursos libres para innovar y capturar nuevas cuentas corporativas.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_1Q', 2024, '1Q', 'success', 
'Iniciaste el 2024 con una fortaleza de caja robusta, contando con 2.03 veces el dinero necesario en cuenta de ahorros para saldar todas tus deudas de tajo si fuera necesario. Esta disponibilidad de efectivo de alto nivel es tu mejor seguro de vida empresarial para un año que se proyecta con mucha volatilidad financiera.', 
'El único matiz es que gran parte de tu solvencia actual proviene estrictamente de tu efectivo, lo que indica una gestión muy conservadora. Si bien la seguridad es buena, tener dos veces tu deuda en caja ociosa podría estar limitando el potencial de crecimiento agresivo que tu marca personal y consultoría ya proyectan al mercado.', 
'Considera la posibilidad de apalancarte en proyectos de mayor envergadura. Con este nivel inicial de liquidez, podrías asumir contratos más grandes que exijan mayor inversión inicial sin temor a quedarte corto de recursos para la nómina o para los gastos básicos de tu equipo de trabajo profesional.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- AÑO 2023: CIMIENTOS DE SOLIDEZ
-- ---------------------------------------------------------

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai', 2023, 'Annual', 'success', 
'Al evaluar el consolidado del 2023, queda claro que tu empresa construyó unos cimientos de liquidez excepcionales, cerrando con casi 2.8 veces la capacidad de pago necesaria. Este respaldo fue la base para la estabilidad operativa que hoy disfrutas, demostrando un manejo prudente y estratégico de cada peso que entró al negocio.', 
'Lo más impresionante fue tu ratio de efectivo de 2.18, lo que significa que el año cerró con más del doble de tu deuda total ahorrado en el banco. Esta es una situación de máxima seguridad que muy pocas empresas logran sostener, aunque también es un llamado a evaluar la eficiencia de ese capital tan estático.', 
'El aprendizaje del 2023 es que tu negocio es una máquina de generar liquidez inmediata. Para el futuro, el reto no será conseguir caja, sino saber moverla con inteligencia para que no pierda valor. Mantener estos niveles de blindaje es positivo siempre y cuando se traduzcan en inversiones que expandan tu visibilidad ante clientes.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_4Q', 2023, '4Q', 'success', 
'En el cuarto trimestre de 2023, lograste un cierre de año con 475 millones de pesos de oxígeno operativo neto. Esta robustez financiera te permitió planificar el siguiente año con total holgura, asegurando que todos los compromisos de fin de año se cumplieran con absoluta puntualidad y sin necesidad de apoyos bancarios externos.', 
'A pesar de este éxito rotundo, debes tener cuidado en el futuro con la velocidad de pago de tus propios pasivos. Cerrar con una liquidez tan alta sugiere que podrías estar pagando demasiado rápido a tus proveedores, perdiendo la oportunidad de apalancarte comercialmente con ellos a costo cero para beneficio de tu propio flujo.', 
'Te sugiero que en el próximo ciclo aproveches tu impecable historial de pagos para negociar plazos más largos. Con 2.7 veces de cobertura, tus aliados comerciales confiarán plenamente en ti, permitiéndote retener el dinero un poco más de tiempo para que rinda frutos dentro de tu propia infraestructura de servicios financieros.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_3Q', 2023, '3Q', 'success', 
'Durante este tercer trimestre de 2023, tu empresa navegó con una solvencia de 2.75 veces, lo que indica un control magistral de tus recursos corrientes. Estás operando con un margen de seguridad que es la envidia del sector de consultoría, garantizando que tu firma sea percibida como una organización seria y financieramente inexpugnable.', 
'Notas una leve retención de recursos en tu capital de trabajo que ascendió a 470 millones. Debes estar atento a que este monto no siga creciendo de manera desproporcionada sin un destino productivo claro, pues el exceso de liquidez puede a veces ser síntoma de una falta de nuevos proyectos que demanden el uso del capital disponible.', 
'Aprovecha esta bonanza de recursos para realizar inversiones tecnológicas que automaticen procesos dentro de tu firma. Tienes el respaldo suficiente para modernizar tu operación sin comprometer ni un solo día de tus compromisos de nómina o de gastos de oficina, lo cual es una oportunidad dorada para tu crecimiento sostenido.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_2Q', 2023, '2Q', 'success', 
'En el segundo trimestre de 2023, tu bolsillo de ahorros inmediatos se situó en 2.15 veces tus deudas, un nivel de liquidez primaria sobresaliente. Esto significa que por cada peso que debes, tienes dos pesos guardados en efectivo, dándote una autonomía total para negociar casi cualquier compra o contrato bajo tus propios términos financieros.', 
'Sin embargo, esta liquidez tan alta en efectivo podría ser un síntoma de que tus clientes están pagando demasiado pronto o que tú no estás encontrando suficientes destinos para tu capital operativo. Evalúa si esa liquidez está sacrificando la rentabilidad de largo plazo al no estar invertida en activos que generen valor incremental.', 
'Es recomendable diversificar el uso de tu liquidez. No mantengas todo el excedente en una cuenta corriente básica; explora alternativas que den rendimientos diarios pero mantengan la disponibilidad. Así, tu empresa no solo será líquida, sino que también será financieramente eficiente, protegiendo tu capital de la erosión del tiempo y la inflación.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'insight-liquidez-ai_1Q', 2023, '1Q', 'success', 
'Comenzaste este 2023 con un respaldo de 2.65 pesos por cada peso de deuda, una posición de arranque envidiable que te permitió enfrentar el primer trimestre con total serenidad. Tu capital de trabajo de 460 millones de pesos te brindó el oxígeno necesario para encarar tus proyectos de consultoría sin ninguna limitación presupuestaria.', 
'Aunque la solvencia total es fuerte, la diferencia entre lo que tienes para cobrar y lo que tienes en el bolsillo de ahorros es mínima, lo que indica que tu negocio es prácticamente 100% efectivo. Esta es una fortaleza, pero también una alerta para que empieces a gestionar créditos comerciales que diversifiquen tus fuentes de fondeo operativo.', 
'Te sugiero abrir líneas de crédito rotativo con bancos estratégicos, aunque no las necesites hoy. Mantener una puerta abierta al financiamiento externo mientras tu liquidez propia es tan alta te permitirá obtener tasas mucho más bajas, asegurando recursos baratos para cuando decidas escalar tu operación de consultoría de forma masiva.', 
'Protocolo Liquidez Bloque A v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;
