-- =============================================
-- PROYECTO: Datia Liquidity Dashboard
-- EMPRESA: CARLOS TAMAYO Y ASOCIADOS S.A.S. (ID 3099)
-- MÓDULO: LIQUIDEZ - BLOQUE C (AUDITORÍA TRIMESTRAL)
-- LOTE 1: 2025 - INDICADORES 1 Y 2 (8 REGISTROS)
-- ESTÁNDAR: GERENCIA-A-GERENCIA (+40 PALABRAS)
-- =============================================

-- ---------------------------------------------------------
-- INDICADOR 1: RAZÓN CORRIENTE (Tu blindaje contra deudas inmediatas)
-- ---------------------------------------------------------

-- 2025 Q1 (Dato: 3.27)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_1Q', 2025, '1Q', 'success', 
'Durante los primeros tres meses de 2025, has arrancado con una fuerza financiera impresionante, contando con 3.27 pesos de respaldo por cada peso de deuda. Este nivel de protección te permite iniciar el año con la tranquilidad de que nada detendrá tu operación ni la puesta en marcha de tus nuevos contratos de consultoría estratégica.', 
'Al tener un blindaje tan elevado, se percibe una posible acumulación de recursos que no están circulando a la velocidad óptima. En este trimestre inicial, tener más del triple de lo que debes guardado indica que podrías estar siendo demasiado cauteloso ante un mercado que, aunque volátil, ofrece oportunidades de inversión que exigen mayor dinamismo.', 
'Te sugeriero que aproveches este respaldo de inicio de año para negociar anticipos con nuevos proveedores o para invertir en herramientas de automatización. No necesitas guardar todo ese capital; con un respaldo de 1.8 es más que suficiente para operar seguro, permitiendo que el resto del dinero trabaje en generar valor futuro para tu firma.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q2 (Dato: 2.76)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_2Q', 2025, '2Q', 'success', 
'Al cerrar el segundo trimestre de 2025, tu capacidad de respuesta sigue siendo sumamente sólida, situándose en 2.76. Has logrado sortear los meses de mitad de año con un colchón de seguridad que garantiza el pago puntual de todas tus obligaciones bancarias y comerciales sin el más mínimo asomo de angustia o estrés financiero.', 
'Sin embargo, notamos una caída de casi medio punto respecto al trimestre anterior en tu blindaje. Esto sugiere que durante estos meses han tenido que liberar una porción importante de tus recursos para cubrir gastos operativos o que tus deudas de corto plazo han crecido a un ritmo superior al de tus activos disponibles.', 
'Es vital que monitorees la velocidad con la que estás asumiendo nuevos pasivos. Aunque 2.76 es una cifra de envidia, la tendencia a la baja debe ser controlada. Asegúrate de que cada peso de deuda que tomes hoy esté respaldado por un contrato de servicios firmado que garantice el retorno de esa inversión en el corto plazo.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q3 (Dato: 2.92)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_3Q', 2025, '3Q', 'success', 
'En este tercer trimestre de 2025, has logrado revertir la tendencia anterior y fortalecer nuevamente tu blindaje, subiendo a 2.92. Esta recuperación demuestra una gestión impecable de tus cobros y una prudencia notable al momento de incurrir en nuevos gastos, blindando tu empresa ante cualquier turbulencia de finales de año.', 
'A pesar de la mejoría, la fluctuación en tu capacidad de pago indica que tu flujo de recursos no es totalmente constante. Tener estos picos de liquidez es positivo, pero también refleja que tu operación depende mucho de desembolsos puntuales de grandes clientes, lo que genera una montaña rusa financiera que exige mucha atención gerencial.', 
'Te recomiendo que utilices este momento de mayor fuerza para estandarizar tus ciclos de pago. Busca un equilibrio donde tu blindaje no dependa de un solo gran recaudo, sino de una rotación constante de tu cartera de servicios. Así, tu tranquilidad financiera no será estacional, sino una característica permanente de tu consultoría profesional.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q4 (Dato: 2.95)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_4Q', 2025, '4Q', 'success', 
'Cierras el cuarto trimestre de 2025 con un respaldo robusto de 2.95, asegurando un fin de año totalmente saneado. Tienes casi tres veces lo que necesitas para cubrir tus cuentas por pagar, lo cual te permite proyectar el presupuesto del próximo año con una base de confianza absoluta y con la chequera lista para crecer.', 
'Lo irónico es que, con tanta solvencia, podrías estar perdiendo descuentos financieros por pronto pago que hoy no estás aprovechando. Tener casi tres veces tu deuda guardada indica que podrías estar pagándole a tus proveedores demasiado tarde o simplemente que no estás optimizando el uso de tus recursos para mejorar tus márgenes netos.', 
'Aprovecha este cierre de año para realizar pagos estratégicos anticipados. Negocia con tus aliados comerciales descuentos que incrementen tu ganancia final; tienes el respaldo suficiente para hacerlo sin poner en riesgo tu operación. Convierte tu exceso de liquidez en una herramienta de rentabilidad inmediata para tu bolsillo y el de tus socios.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 2: CAPITAL DE TRABAJO (Tu oxígeno operativo)
-- ---------------------------------------------------------

-- 2025 Q1 (Dato: 448M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_1Q', 2025, '1Q', 'success', 
'Durante este primer trimestre de 2025, tu empresa respira aire puro con un oxígeno operativo de 448 millones de pesos. Este es el motor que te permite operar con total independencia, garantizando que cada profesional de tu equipo reciba su pago a tiempo y que cada proyecto se ejecute con los mejores estándares de calidad.', 
'A pesar de ser una cifra alta, iniciar el año con 448 millones libres refleja que hay una gran cantidad de dinero que no se movió de tu balance durante el cierre anterior. Este oxígeno acumulado indica que quizás hubo proyectos que se quedaron estancados o que el flujo de inversión se detuvo más de lo debido.', 
'Es el momento de inyectar dinamismo a estos 448 millones. Te sugiero que una parte de este oxígeno se destine a captar nuevos clientes con estrategias comerciales más agresivas. Tienes el respaldo para invertir en preventa y consultoría de diagnóstico gratuita para grandes cuentas, apalancándote en tu sólida base de recursos operativos hoy.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q2 (Dato: 443M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_2Q', 2025, '2Q', 'success', 
'Al finalizar el segundo trimestre de 2025, tu oxígeno operativo se mantiene estable en 443 millones de pesos. Has logrado sostener tu ritmo de trabajo sin asfixiar tus finanzas, demostrando una disciplina muy férrea al momento de gestionar tus gastos fijos y de controlar las salidas de dinero imprevistas de tu caja diaria.', 
'Sin embargo, el oxígeno no ha crecido, lo que sugiere que tu operación está en una zona de confort donde los ingresos apenas compensan los egresos. Mantenerte estancado en los 443 millones durante seis meses podría significar que tu firma de consultoría no está escalando su volumen de facturación a la velocidad que tu capacidad permite.', 
'Mi recomendación es que analices tus márgenes operativos. Verifica si estás cobrando lo justo por tus servicios especializados de consultoría. Con 443 millones tienes una base sólida para exigir mejores condiciones y para buscar proyectos de mayor ticket promedio que logren incrementar tu oxígeno neto de cara al segundo semestre del año.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q3 (Dato: 508M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_3Q', 2025, '3Q', 'success', 
'¡Excelente noticia! En este tercer trimestre de 2025, tu oxígeno operativo ha superado la barrera de los 500 millones de pesos, situándose en 508 millones. Este es el punto de mayor fuerza para tu empresa, dándote un pulmón financiero inmenso para enfrentar el cierre de año y para planificar expansiones que antes parecían riesgosas.', 
'El peligro de tener tanto oxígeno es que la estructura de costos tienda a relajarse. Cuando el dinero abunda en la operación, es común que aparezcan gastos ''hormiga'' o que se pierda la rigurosidad en el control de las cuentas por pagar a proveedores. No permitas que este éxito nuble tu juicio sobre la eficiencia de cada peso gastado.', 
'Te aconsejo que aproveches este pico de 508 millones para realizar inversiones en activos que se deprecien poco, como tecnología o capacitación de alto nivel. Transforma este oxígeno líquido en una ventaja competitiva de largo plazo antes de que el ciclo natural de gastos de fin de año empieiece a reducir tus márgenes nuevamente.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q4 (Dato: 491M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_4Q', 2025, '4Q', 'success', 
'Cierras el cuarto trimestre de 2025 con un oxígeno de 491 millones de pesos, consolidando un año de mucha solvencia operativa. Has logrado terminar el ejercicio con un pulmón financiero que duplica tus requerimientos básicos, lo que te garantiza un inicio de próximo año muy tranquilo y con la casa en total orden.', 
'A pesar de este cierre brillante, notas una leve reducción frente al pico del trimestre anterior. Esto es normal por los pagos de fin de año, pero te recuerda que la caja operativa es un recurso vivo que fluctúa constantemente y que requiere que sigas muy pendiente de tus compromisos de nómina y honorarios profesionales.', 
'Mi recomendación para el cierre de año es que proyectes tus flujos para el primer trimestre de 2026. Con 491 millones tienes el capital de trabajo necesario para relanzar tus servicios o para contratar nuevos talentos que te ayuden a escalar tus ingresos. Usa este oxígeno para respirar profundo y apuntar a metas mucho más altas.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 3: PRUEBA ÁCIDA (Respuesta sin depender de ventas)
-- ---------------------------------------------------------

-- 2025 Q1 (Dato: 3.27)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_1Q', 2025, '1Q', 'success', 
'Arrancaste el primer trimestre de 2025 con una capacidad de respuesta inmediata asombrosa. Tienes 3.27 pesos listos para cubrir cada peso de deuda sin contar con que vendas ni un solo contrato adicional en estos tres meses, lo que garantiza que tu firma de consultoría es financieramente inexpugnable ante cualquier crisis.', 
'Al tener tanta seguridad, el unico riesgo es que te sientas demasiado comodo en tu zona de confort financiera. Tres pesos de respaldo para cubrir uno solo es un nivel que el mercado considera ineficiente; podrias estar limitando tu agilidad operativa al mantener tantos recursos estaticos en el balance en lugar de moverlos hacia el crecimiento.', 
'Te aconsejo que liberes una parte de esta sobre-liquidez para planes de marketing digital o captación de talento comercial. No necesitas un blindaje tan extremo para estar seguro; con bajar a un ratio de 2.0 seguirias siendo de los mas solventes del sector pero con mucha mas capacidad de inversion para escalar tu negocio.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q2 (Dato: 2.76)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_2Q', 2025, '2Q', 'success', 
'Al finalizar el segundo trimestre de 2025, tu reserva ante imprevistos se mantiene en un envidiable nivel de 2.76. Has demostrado una gran capacidad para sostener tus compromisos operativos de mitad de año sin necesidad de apelar a los ingresos por nuevos servicios, manteniendo la estabilidad de tu equipo profesional intacta.', 
'Sin embargo, notamos que tu capacidad de reaccion ha bajado un 15% respecto al cierre de marzo. Esto indica que tus compromisos de corto plazo han crecido o que has destinado parte de tu riqueza inmediata a inversiones que aun no estan retornando la liquidez esperada para este periodo del año escolar.', 
'Mi recomendación es que hagas un corte de cuentas detallado para entender por que bajon esa capacidad de respuesta. Si es por inversion estrategegica en software o personal, es aceptable, pero si es por un aumento en tus gastos fijos de oficina, debes corregir el rumbo antes de que termine el tercer trimestre de este año.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q3 (Dato: 2.92)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_3Q', 2025, '3Q', 'success', 
'En este tercer trimestre de 2025, has logrado revertir la tendencia anterior y fortalecer nuevamente tu capacidad de respuesta inmediata a 2.92. Esta recuperacion es una señal clara de que has logrado optimizar tu flujo de recaudo y que tu blindaje ante imprevistos es ahora mas fuerte que en el trimestre anterior, dandote mas libertad de maniobra.', 
'Aunque la cifra es excelente, la variabilidad muestra que tu operacion tiene picos de liquidez muy pronunciados. Esta inestabilidad en tu blindaje inmediata podria dificultar una planeacion financiera a largo plazo si no logras estabilizar tus deudas de corto plazo bajo un esquema de pagos mas predecible y suave para tu caja operativa.', 
'Te sugiero que aproveches este pico de seguridad para renegociar plazos con tus proveedores mas grandes. Al ver que tienes casi tres veces lo necesario para pagarles hoy, confiarán plenamente en darte plazos mas largos, lo que te permitiria suavizar tus salidas de dinero y mantener este blindaje mas estable en el tiempo.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q4 (Dato: 2.95)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_4Q', 2025, '4Q', 'success', 
'Cierras el cuarto trimestre de 2025 con una capacidad de respuesta envidiable de 2.95. Has logrado terminar el ejercicio anual con la certeza de que tus cuentas estan totalmente cubiertas, permitiendo que tu firma de consultoría mire al proximo año con la seguridad de quien no debe preocuparse por la caja operativa.', 
'Con este nivel de blindaje tan alto al cierre de año, es probable que no estés aprovechando los beneficios tributarios o comerciales de realizar ciertos pagos o compras estrategicas antes de que termine el ciclo contable. Tener tanto respaldo acumulado indica que tu dinero podria estar siendo sub-utilizado en tu balance actual.', 
'Mi recomendación final de año es que utilices una porción de este excedente para realizar pagos anticipados que te brinden descuentos financieros reales. Tienes margen de sobra para hacerlo sin afectar tu seguridad; es hora de que tu alta liquidez se convierta en una herramienta para mejorar tu rentabilidad neta final.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 4: RATIO DE EFECTIVO (Tu bolsillo de ahorros hoy)
-- ---------------------------------------------------------

-- 2025 Q1 (Dato: 1.32)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_1Q', 2025, '1Q', 'success', 
'Arrancaste el primer trimestre de 2025 con un ahorro en cuenta muy saludable, teniendo 1.32 veces de lo que debes disponible en efectivo puro. Esta liquidez inmediata es tu mejor seguro para cubrir nominas y gastos fijos sin depender de que tus clientes te paguen en el corto plazo.', 
'Sin embargo, comparado con el cierre del año anterior, tu bolsillo de ahorros se siente un poco mas ligero. Has invertido una cantidad considerable de dinero líquido en el arranque de la operacion de este año, lo cual ha reducido tu margen de maniobra imediata en cuenta corriente de forma notable durante estos meses.', 
'Te aconsejo que vigiles muy de cerca tu flujo de egresos en este periodo inicial. No permitas que tu ratio de efectivo baje de 1.10, pues ese es tu limite prudencial para mantener la independencia financiera total ante cualquier imprevisto bancario o retito inesperado de capital que decidan hacer los socios.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q2 (Dato: 1.17)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_2Q', 2025, '2Q', 'success', 
'Al terminar el segundo trimestre de 2025, sigues manteniendo un nivel de ahorro positivo de 1.17. Esto significa que aun despues de pagar todos tus compromisos inmediatos, te sobraria un 17% de tu deuda total en efectivo puro dentro de tu cuenta, dandote una solvencia real y tangible muy por encima del promedio del sector.', 
'No obstante, este es el nivel de ahorro mas bajo que has tenido en los ultimos meses. Muestra que la mitad del año ha sido exigente en terminos de salidas de dinero o que has tenido demoras en capturar el efectivo de tus facturas enviadas a clientes corporativos pesados durante este periodo de consultoría intensa.', 
'Es momento de apretar las tuercas en tu proceso de recaudo. No dejes que tus clientes financien sus proyectos con tu efectivo; diles que los plazos deben cumplirse. Necesitas recuperar ese ratio por encima de 1.50 para volver a tener la libertad total de inversion que tenias al cierre del ejercicio pasado.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q3 (Dato: 1.38)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_3Q', 2025, '3Q', 'success', 
'Buenas noticias en este tercer trimestre de 2025: tu bolsillo de ahorros ha crecido a 1.38. Has logrado inyectar dinero fresco a tu cuenta, recuperando la fortaleza necesaria para operar con total tranquilidad y para mirar con optimismo los retos que trae el cierre de año para tu firma de servicios financieros.', 
'El reto ahora es mantener este dinero trabajando para ti. Aunque tener 1.38 pesos guardados por cada peso que debes es muy seguro, ese efectivo podria estar perdiendo valor frente a la inflacion si solo se queda quieto en una cuenta corriente tradicional que no te genera ningun tipo de rendimiento financiero pasivo diario.', 
'Te recomiendo explorar opciones de inversion de liquidez inmediata. Pon ese excedente de ahorros en instrumentos que te permitan disponer del dinero en 24 horas pero que te paguen intereses. Asi, tu bolsillo no solo te dara seguridad, sino que tambien te regalara ingresos adicionales por el simple hecho de estar lleno.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2025 Q4 (Dato: 1.49)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_4Q', 2025, '4Q', 'success', 
'Cierras el año 2025 con una fortaleza de ahorros admirable, teniendo 1.49 veces de lo que debes disponible en cuenta. Has logrado un ahorro neto muy potente que te posiciona como una empresa de altisima liquidez, lista para enfrentar cualquier oportunidad de expansion o compra de activos que se presente en el proximo ciclo comercial.', 
'Al cerrar con tanto efectivo, podrías tener la tentación de realizar retiros extraordinarios de socios que dejen la caja demasiado ajustada para el inicio del proximo enero. Recuerda que el arranque de año suele ser lento en terminos de recaudo y necesitarás este bolsillo fuerte para no depender de prestamos puentes innecesarios.', 
'Mi recomendación es que mantengas una base de ahorro minima de 1.10. El excedente por encima de esa cifra puedes usarlo para dividendos o para premiar a tu equipo estrella, asegurando que el inicio del proximo trimestre no te encuentre con la cuenta vacia tras los gastos naturales de las festividades y bonificaciones de fin de año.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 1: RAZÓN CORRIENTE (Tu blindaje contra deudas inmediatas)
-- ---------------------------------------------------------

-- 2024 Q1 (Dato: 2.85)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_1Q', 2024, '1Q', 'success', 
'Arrancaste el 2024 con una solidez envidiable, manteniendo 2.85 pesos por cada peso que debias. Este arranque de año te permitió proyectar inversiones en personal y marketing con la tranquilidad de que tu operacion estaba blindada contra cualquier vaiven comercial de los primeros meses del ejercicio.', 
'Lo negativo de este nivel de blindaje inicial es que gran parte de tus activos corrientes estaban inmovilizados en lugar de estar circulando. Tener casi tres veces lo que debes guardado sugiere que tu estrategia comercial pudo haber sido mas agresiva para aprovechar este excedente en el inicio del año.', 
'Mi sugerencia para periodos similares es que utilices este respaldo para negociar mejores tasas con tus proveedores. Al tener tanta liquidez, tienes el poder de negociacion para exigir descuentos por volumen o por pagos programados que reduzcan tu costo operativo global desde el primer dia del año.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q2 (Dato: 2.39)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_2Q', 2024, '2Q', 'success', 
'Al finalizar el segundo trimestre de 2024, tu blindaje se situó en 2.39. Aunque es una cifra excelente para el mercado, muestra que has empezado a mover tus recursos con mayor fluidez, liberando capital para cubrir las necesidades crecientes de tu firma durante los meses de mitad de año.', 
'Este descenso de medio punto en tu capacidad de respuesta indica que tus deudas inmediatas crecieron o que tus activos mas liquidos se redujeron para financiar proyectos especiales. Debes cuidar que esta tendencia no se acelere, pues perderias la comodidad financiera que tanto ha caracterizado a tu consultoría.', 
'Te recomiendo auditar tus pasivos de corto plazo. Asegurate de que no estes acumulando deudas pequeñas que, sumadas, esten erosionando tu blindaje total. Mantener un ratio de 2.0 es ideal para ser ágil sin perder la seguridad absoluta que hoy proyectas ante tus socios y terceros bancarios.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q3 (Dato: 2.44)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_3Q', 2024, '3Q', 'success', 
'En el tercer trimestre de 2024 lograste estabilizar tu blindaje en 2.44, deteniendo la caida anterior. Esta es una noticia positiva porque demuestra que has recuperado el control sobre tus salidas de dinero y que tu operativa vuelve a generar el respaldo necesario para enfrentar el cierre del año.', 
'A pesar de la estabilidad, notas que tu capacidad de respuesta sigue lejos de los niveles de inicio de año. Esto refleja que tu estructura de costos se ha vuelto mas pesada o que tus clientes estan tardando mas en pagarte, lo que te obliga a mantener deudas abiertas durante mas tiempo.', 
'Mi consejo es inyectar velocidad a tu flujo de caja. No permitas que tu capital se quede atrapado en facturas por cobrar; un indicador de 2.44 es sano, pero si logras cobrar mas rapido, podrias subirlo a 2.80 y volver a tener la fuerza total de inversion que tenias al principio.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q4 (Dato: 3.38)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_4Q', 2024, '4Q', 'success', 
'¡Cierre espectacular en el 2024! Alcanzaste un blindaje historico de 3.38. Tienes mas de tres pesos de respaldo por cada peso que debes, lo que te posiciona en una situacion de privilegio total para iniciar el proximo año con la chequera lista para cualquier gran movimiento estrategico de mercado.', 
'Tener 3.38 pesos de respaldo al cierre de año es una señal de que posiblemente frenaste inversiones clave para "maquillar" el balance de fin de año o que hubo un recaudo masivo que no se reinvirtió de inmediato. Este exceso de liquidez estatica tiene un costo de oportunidad que no debes ignorar.', 
'Aprovecha este hito para planear el proximo ciclo comercial. Con este blindaje, puedes permitirte financiar proyectos de consultoría de largo plazo que otros competidores no podrian asumir por falta de recursos inmediatos. Haz que tu seguridad financiera se convierta en tu mayor ventaja competitiva para ganar nuevas cuentas.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 2: CAPITAL DE TRABAJO (Tu oxígeno operativo)
-- ---------------------------------------------------------

-- 2024 Q1 (Dato: 458M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_1Q', 2024, '1Q', 'success', 
'Iniciaste el 2024 con un oxigeno operativo muy robusto de 458 millones de pesos. Este volumen de recursos liberó a tu firma de la dependencia de créditos externos, permitiéndote concentrarte exclusivamente en la entrega de valor a tus clientes mas importantes sin la presion de la caja diaria.', 
'Lo preocupante de iniciar con 458 millones es que gran parte de ese dinero podria ser remanente de deudas no pagadas o de una gestion de cartera que aun no se ha traducido en flujo neto real. El oxigeno en el papel es bueno, pero debe ser tangible en tus cuentas de ahorro.', 
'Te sugiero que verifiques la calidad de este oxigeno de inicio de año. Asegurate de que esos 458 millones esten compuestos mayoritariamente por efectivo y cuentas por cobrar de alta rotacion. No permitas que tu motor operativo dependa de recursos que tardan mucho en convertirse en dinero real.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q2 (Dato: 369M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_2Q', 2024, '2Q', 'success', 
'Al finalizar el segundo trimestre de 2024, tu oxigeno operativo se situó en 369 millones. A pesar de ser una cifra positiva, refleja una operacion mas ajustada y exigente, donde has tenido que emplear tus recursos para cubrir la carga operativa y los compromisos de mitad de año sin afectar tu solvencia basica.', 
'Este ha sido el punto de oxigeno mas bajo en lo que va del año, cayendo casi 90 millones desde marzo. Esta reduccion drastica sugiere que tus gastos operativos se dispararon o que hubo un bache en el recaudo de tus servicios de consultoría, lo que obligó a "quemar" tus reservas operativas.', 
'Es imperativo que revises tu estructura de costos fijos. No permitas que el oxigeno baje de los 350 millones, ya que ese es tu punto de equilibrio para respirar tranquilo. Ajusta tus politicas de cobro para que el dinero regrese a tu operacion mas rapido y recuperes el nivel de inicio de año.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q3 (Dato: 416M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_3Q', 2024, '3Q', 'success', 
'Has logrado recuperar tu nivel de oxigeno operativo hasta los 416 millones en este tercer trimestre de 2024. Esta recuperacion de 47 millones muestra una gestion reactiva muy eficiente, donde lograste enderezar el rumbo tras el bache del trimestre anterior y devolverle la potencia necesaria a tu motor financiero.', 
'Aun con la recuperacion, sigues estando por debajo de los 458 millones iniciales, lo que indica que tu firma aun no ha sanado del todo las cicatrices de los gastos extras de mitad de año. Tu operatividad es segura, pero todavia no has recuperado la totalidad de tu capacidad de inversion pre-existente.', 
'Continua con la disciplina financiera que te permitió subir a 416 millones. Te recomiendo que para el proximo año crees una reserva tecnica que anticipe los gastos del segundo trimestre, para que tu oxigeno no sufra caidas tan marcadas y tu crecimiento sea mas lineal y predecible para tus socios.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q4 (Dato: 463M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_4Q', 2024, '4Q', 'success', 
'Cierras el 2024 con un oxigeno operativo de 463 millones, superando incluso tu nivel de inicio de año. Has demostrado una gran capacidad de resiliencia, logrando terminar el ejercicio anual con un pulmon financiero muy fuerte que te otorga una ventaja competitiva enorme para negociar el proximo ciclo contable.', 
'Este exito al cierre de año podria generar una falsa sensación de abundancia que lleve a gastos innecesarios en el proximo enero. Recuerda que este oxigeno es el resultado de un esfuerzo extra de recaudo y control que debe mantenerse para no repetir las caidas de capital que viste en junio.', 
'Planifica tu proximo trimestre con base en estos 463 millones. Tienes el respaldo necesario para contratar al experto que estabas buscando o para abrir ese nuevo nicho de servicio. Usa este oxigeno para tomar impulso y no solo para mantenerte a flote; es el momento de que tu firma de consultoría escale.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 3: PRUEBA ÁCIDA (Respuesta sin depender de ventas)
-- ---------------------------------------------------------

-- 2024 Q1 (Dato: 2.85)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_1Q', 2024, '1Q', 'success', 
'Arrancaste el primer trimestre de 2024 con una reserva inmediata de 2.85 veces tu deuda. Tienes la seguridad total de que tu firma puede operar sin realizar una sola venta adicional durante estos meses, lo que te permite enfocarte en la calidad del servicio y en la satisfaccion de tus clientes actuales de consultoría.', 
'Al tener tanta seguridad monetaria hoy, es posible que el equipo comercial sienta que la meta de ventas no es urgente. Este nivel de blindaje inmediato puede generar un relajamiento en la gestion de prospectos que podrias pagar caro en los siguientes trimestres si el flujo de entrada de proyectos se detiene.', 
'Mi recomendación es que utilices este momento de calma financiera para experimentar con nuevos canales de marketing. Tienes el respaldo para fallar y aprender; invierte en posicionamiento de marca ahora que el oxigeno abunda y no cuando la caja este ajustada y la presion sea la protagonista de tu gerencia.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q2 (Dato: 2.39)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_2Q', 2024, '2Q', 'success', 
'Al finalizar el segundo trimestre de 2024, tu reserva inmediata se situó en 2.39. Has logrado mantener una capacidad de respuesta muy sana, garantizando que todos tus profesionales y colaboradores externos reciban sus honorarios sin ningun tipo de retraso, manteniendo la moral de trabajo en lo mas alto.', 
'No obstante, este es el punto de blindaje mas bajo del año hasta el momento. Muestra que has dependido mas de tus ahorros liquidos para financiar la operacion de mitad de año, posiblemente por un retraso en los pagos de tus clientes mas grandes que suelen demorar sus desembolsos en este periodo de tiempo.', 
'Te sugiero que revises tus condiciones de contratacion. No puedes ser el banco de tus clientes; exige pagos parciales por hitos cumplidos. Con un blindaje de 2.39 sigues estando muy bien, pero debes evitar que esta reserva siga bajando para no perder tu libertad de accion estrategica ante imprevistos futuros.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q3 (Dato: 2.44)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_3Q', 2024, '3Q', 'success', 
'Has logrado recuperar tu nivel de respuesta inmediata a 2.44 en este tercer trimestre de 2024. Es una señal positiva de que tus procesos de recaudo han mejorado y que tu bolsillo de reserva vuelve a llenarse, dandote el musculo necesario para planificar un cierre de año con mucha ambicion comercial.', 
'Aun con la mejoría, la variabilidad en tu blindaje sugiere que no tienes un control total sobre tus flujos de salida. Un trimestre estas en 2.85 y al siguiente en 2.39; esa falta de constancia puede dificultar la toma de decisiones de inversion a largo plazo si no logras estabilizar tus recursos liquidos hoy.', 
'Te recomiendo establecer un fondo de reserva tecnica intocable equivalente a 1.5 veces tu deuda. Todo lo que supere ese nivel, ponlo a trabajar en proyectos de alta rentabilidad. Asi, mantienes tu seguridad constante mientras dinamizas el crecimiento de tu firma sin comprometer jamas tu capacidad de respuesta inmediata.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q4 (Dato: 3.38)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_4Q', 2024, '4Q', 'success', 
'Cierras el 2024 con una reserva inmediata historica de 3.38. Tienes la capacidad de pagar tres veces y media todo lo que debes solo con lo que tienes hoy disponible en tus activos liquidos. Esta es una posicion de poder absoluto en el mercado de la consultoría, permitiendote dormir tranquilo cada noche.', 
'El unico punto de alerta es el costo de tener tanto dinero quieto. Al cierre de año, 3.38 pesos por cada peso de deuda es un nivel que el mercado considera poco eficiente desde el punto de vista financiero. Podrias estar dejando de ganar dinero por el simple hecho de no saber en que invertir este excedente.', 
'Mi recomendación es que inicies el proximo año con un plan de expansion agresivo. Con este blindaje, puedes abrir nuevas lineas de negocio o adquirir software especializado que te permita ser mas eficiente. No dejes que este exito se quede en el balance; conviértelo en el combustible de tu proximo gran salto empresarial.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 4: RATIO DE EFECTIVO (Tu bolsillo de ahorros hoy)
-- ---------------------------------------------------------

-- 2024 Q1 (Dato: 1.25)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_1Q', 2024, '1Q', 'success', 
'Iniciaste el 2024 con un ahorro en cuenta de 1.25 veces tu deuda inmediata. Tienes el efectivo necesario para cubrir todos tus compromisos de nómina y honorarios sin depender de desembolsos externos, lo que genera una confianza inmensa en tu equipo de consultoría y en tus socios gerentes hoy.', 
'Aunque es un nivel positivo, ya sentias la presion del primer trimestre sobre tus ahorros liquidos. Empezar el año con 1.25 cuando venias de niveles superiores indica que tus retiros de capital o gastos de fin de año anterior fueron significativos y que debes reponer ese bolsillo rapidamente para operar comodo.', 
'Te sugiero que establezcas una meta de ahorro mensual de al menos el 10% de tus recaudos hasta que logres subir este ratio a 1.50. Tener ese margen extra de bolsillo te permitirá reaccionar ante oportunidades de pago de contado que suelen aparecer en los primeros meses del año escolar y comercial.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q2 (Dato: 1.02)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_2Q', 2024, '2Q', 'success', 
'Al terminar el segundo trimestre de 2024, lograste mantener tu ratio de efectivo en 1.02. Tienes el dinero justo en el banco para pagar todo lo que debes en el corto plazo, garantizando que la operacion no dependa de creditos ni de sobregiros bancarios que encarecerían tu estructura de costos operativos.', 
'Este es el punto mas bajo del año y una señal de alerta clara: estas al limite de tu capacidad de ahorro en efectivo. Cualquier retraso imprevisto en el pago de un cliente grande te obligaria a buscar financiamiento externo o a incumplir con compromisos basicos como la nómina, lo cual es muy riesgoso hoy.', 
'Es imperativo que detengas cualquier gasto que no sea estrictamente necesario para la generacion de ingresos inmediatos. Enfocate al 100% en el recaudo de cartera vieja; necesitas oxigenar tu bolsillo de ahorros de forma urgente para volver a tener el aire que tenias al inicio del año comercial de 2024.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q3 (Dato: 1.18)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_3Q', 2024, '3Q', 'success', 
'Buenas noticias: has recuperado tu bolsillo de ahorros hasta 1.18 en este tercer trimestre de 2024. Has logrado alejarte del limite de riesgo en el que estabas en junio, recuperando un margen de maniobra que te permite planificar el cierre de año con mucha mayor tranquilidad y menor estres gerencial.', 
'A pesar de la mejoría, notas que tu capacidad de generar efectivo neto anual ha bajado respecto a los años anteriores. Parece que tus ciclos de cobranza se estan alargando o que tus gastos fijos de oficina han crecido mas de lo que tus ingresos permiten, lo que impide que tu ahorro crezca mas.', 
'Te recomiendo realizar una auditoría de tus gastos recurrentes en efectivo. A veces pequeñas fugas de dinero mensual sumadas erosionan tu bolsillo de ahorros sin que te des cuenta. Asegurate de que cada peso que sale de tu cuenta tenga una justificacion clara y un retorno medible para el negocio.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2024 Q4 (Dato: 1.46)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_4Q', 2024, '4Q', 'success', 
'Cierras el 2024 con una fortaleza de ahorros admirable de 1.46 veces tu deuda. Has logrado sanear tu bolsillo de forma notable, terminando el año con el efectivo necesario para cubrir todas tus obligaciones y aun asi tener un margen de beneficio liquido para reinvertir o distribuir segun decidas.', 
'Al cerrar con tanta caja operativa, podrías caer en la tentacion de realizar compras de activos fijos que inmovilicen este dinero justo cuando el proximo año necesita de liquidez para arrancar. No dejes que este triunfo momentaneo te haga perder la perspectiva de largo plazo de tu flujo de caja real.', 
'Mi recomendación final es que guardes este excedente de ahorro para los meses frios del primer trimestre del proximo año. Históricamente, tu firma ha tenido bajones de ahorro en junio; si mantienes este ratio de 1.46 ahora, podras navegar el proximo año sin sufrir mas baches financieros inmediatos.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 1: RAZÓN CORRIENTE (Tu blindaje contra deudas inmediatas)
-- ---------------------------------------------------------

-- 2023 Q1 (Dato: 5.17)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_1Q', 2023, '1Q', 'success', 
'Arrancaste el 2023 con un blindaje extraordinario de 5.17, una cifra que proyecta una seguridad absoluta y una total independencia de cualquier financiamiento bancario. Tienes mas de cinco pesos de respaldo por cada peso de deuda, lo que te posiciona como una roca financiera en el sector de la consultoría estratégica hoy.', 
'Sin embargo, este nivel de liquidez es excesivo y revela un dinero "durmiente" que no genera valor operativo. Tener cinco veces lo que debes guardado indica que tu estrategia de crecimiento era demasiado timida o que no tenias proyectos claros donde inyectar ese capital sobrante que hoy tienes quieto en activos corrientes.', 
'Te sugiero que despiertes ese capital. No necesitas mas de 1.80 de blindaje para estar seguro; el excedente deberia estarse moviendo en contratacion de talento clave o en adquisicion de tecnologia que mejore tus margenes de servicio. Deja de acumular recursos estaticos y empieza a convertirlos en crecimiento real para tu firma.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q2 (Dato: 6.64)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_2Q', 2023, '2Q', 'success', 
'Al finalizar el segundo trimestre de 2023, tu capacidad de respuesta subió incontroladamente a 6.64. Sigues demostrando una prudencia financiera casi extrema, asegurando que ningun bache de mercado o demora de clientes llegase a comprometer la estabilidad operativa de tu equipo o el pago de tus compromisos basicos.', 
'Lo negativo es que la ineficiencia capitalista se acentúa. Subir de 5 a 6 puntos de blindaje sugiere que estas cobrando muy bien pero que no estas reinvirtiendo nada de esa utilidad en el negocio. Ese dinero acumulado esta perdiendo poder adquisitivo y refleja una gerencia que teme tomar riesgos controlados para expandirse.', 
'Mi recomendación es que realices un plan de choque comercial. Tienes la chequera llena y el respaldo mas solido que una empresa pueda desear. Usa ese exceso de blindaje para financiar campañas de captacion de grandes clientes o para modernizar tu infraestructura fisica, convirtiendo la liquidez pasiva en activos productivos hoy.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q3 (Dato: 8.79)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_3Q', 2023, '3Q', 'success', 
'¡Nivel record de seguridad financiera! En este tercer trimestre de 2023 alcanzaste un blindaje de 8.79. Es, tecnicamente, una situacion de "cero riesgo", donde tienes casi nueve pesos listos para cubrir cada compromiso de deuda, garantizando una paz gerencial absoluta para enfocarte en la calidad de tus servicios financieros.', 
'Pero ten cuidado: ocho pesos de respaldo es señal de un balance pesado y poco ágil. Este exceso de liquidez suele ocurrir cuando hay un temor paralizante a invertir o cuando la estructura de deuda es casi inexistente. Estas operando con un freno de mano puesto que impide que tu rentabilidad sobre el patrimonio sea la maxima posible.', 
'Te recomiendo encarecidamente que analices opciones de diversificacion de ingresos. Con este blindaje de 8.79, podrias incluso considerar la compra de pequeñas carteras de servicios o la expansion a nuevas ciudades. Haz que tu dinero trabaje para ti y no que simplemente descanse en tu balance; es hora de ser mas agresivo comercialmente.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q4 (Dato: 3.09)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'razon_corriente_4Q', 2023, '4Q', 'success', 
'Cierras el 2023 con un blindaje de 3.09, regresando a niveles de normalidad operativa muy saludables. Has logrado movilizar esos recursos que tenias acumulados durante el año, logrando una estructura financiera mucho mas equilibrada y eficiente para enfrentar el proximo ciclo anual de tu firma de consultoría estratégica.', 
'Este bajon desde 8.79 hasta 3.09 indica que al cierre de año realizaste inversiones masivas, repartiste dividendos significativos o saldaste deudas de largo plazo. Aunque es mas eficiente energeticamente, debes vigilar que esta caida de mas de 5 puntos en tu respaldo no se convierta en una tendencia peligrosa para el proximo año.', 
'Mi sugerencia es que mantengas este ratio de 3.09 como tu nuevo estandar de "techo". Has demostrado que puedes liberar capital sin poner en riesgo la empresa; ahora enfocate en que esa liberacion de recursos se traduzca en nuevos contratos firmados para el primer trimestre del proximo periodo comercial que esta por arrancar.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 2: CAPITAL DE TRABAJO (Tu oxígeno operativo)
-- ---------------------------------------------------------

-- 2023 Q1 (Dato: 353.4M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_1Q', 2023, '1Q', 'success', 
'Arrancaste el 2023 con un oxigeno operativo de 353 millones de pesos, una cifra que te permitió navegar los primeros meses del año con total solvencia. Tienes el motor financiero necesario para cubrir todas tus nóminas y gastos de oficina sin tener que correr a descontar facturas o pedir favores bancarios.', 
'Es una cifra solida, pero representa un oxigeno conservador si consideramos tu gran capacidad de facturacion. Iniciar el año con este nivel sugiere que gran parte de tu riqueza estaba amarrada a activos que aun no se habian convertido en efectivo, limitando un poco tu velocidad de reaccion comercial inicial.', 
'Te aconsejo que proyectes un crecimiento de este oxigeno para los proximos meses. Con 353 millones tienes una base decente, pero tu meta deberia ser superar los 400 millones para tener un margen de seguridad que te permita contratar expertos senior sin que el balance sufra el mas minimo golpe de flujo de caja.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q2 (Dato: 281.3M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_2Q', 2023, '2Q', 'success', 
'Al terminar el segundo trimestre de 2023, tu oxigeno operativo se situó en 281 millones. Lograste mantener la operacion marchando a buen ritmo, garantizando que cada compromiso profesional fuera honrado a tiempo, demostrando una notable capacidad de aguante ante los retos financieros del primer semestre del año.', 
'Este es el punto de oxigeno mas bajo que has registrado en periodos recientes, perdiendo mas de 70 millones en solo tres meses. Esta caida indica que tu operacion esta "consumiendo" mas recursos de los que genera o que has tenido un bache inusual en tu gestion de cobranza que debes atender de inmediato.', 
'Es urgente que revises tu flujo de caja de cara al tercer trimestre. No permitas que el oxigeno baje de los 250 millones, pues estarias entrando en zona de estres operativo. Acelera tus procesos de facturacion y cobro de honorarios para reponer este capital operativo y volver a respirar con la tranquilidad de siempre.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q3 (Dato: 363.6M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_3Q', 2023, '3Q', 'success', 
'¡Excelente recuperacion! Has logrado subir tu oxigeno operativo a 363 millones en este tercer trimestre de 2023. Has inyectado mas de 80 millones de pesos frescos a tu operacion cotidiana, devolviéndole la potencia a tu motor financiero y saneando por completo las presiones que sentiste en el trimestre anterior.', 
'Aunque la recuperacion es notable, la fuerte variacion en tu oxigeno operativo (de 281 a 363) indica que tu empresa vive de hitos financieros muy marcados. Esta falta de constancia puede generar incertidumbre en tu equipo administrativo si no logras estabilizar un flujo de caja mas predecible mes a mes.', 
'Te recomiendo aprovechar este nuevo impulso de 363 millones para estandarizar tus politicas de pago a proveedores. Busca un equilibrio donde tu oxigeno no dependa de un solo recaudo magico, sino de una operacion fluida que mantenga siempre una base superior a los 330 millones de pesos disponibles.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q4 (Dato: 383.0M)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'capital_trabajo_4Q', 2023, '4Q', 'success', 
'Cierras el 2023 con un oxigeno operativo de 383 millones, el nivel mas alto del año. Has culminado el ejercicio con una potencia financiera envidiable, garantizando que el arranque del proximo año sea totalmente saneado y con los recursos necesarios para emprender nuevos y ambiciosos retos comerciales sin miedos.', 
'Este exito de cierre podria nublar tu percepcion sobre la eficiencia del gasto de cara a las festividades y bonificaciones de fin de año. Recuerda que este oxigeno es tu capital de semilla para el proximo enero; no permitas que la abundancia momentanea te lleve a relajar los controles de costos fijos hoy.', 
'Mi recomendación final de año es que planifiques el uso de estos 383 millones con vision de largo plazo. Tienes el respaldo para mejorar tus herramientas de trabajo o para expandir tu oficina. Usa este oxigeno para proyectar una firma de consultoría mucho mas moderna y competitiva de cara al proximo ciclo contable.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 3: PRUEBA ÁCIDA (Respuesta sin depender de ventas)
-- ---------------------------------------------------------

-- 2023 Q1 (Dato: 5.17)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_1Q', 2023, '1Q', 'success', 
'Has iniciado el 2023 con una capacidad de respuesta inmediata sin precedentes, teniendo 5.17 pesos listos en caja y bancos por cada peso que debes. Esta es una posicion de dominio absoluto que te permite operar con una tranquilidad total, sabiendo que tu firma puede sostenerse sola sin vender un solo servicio nuevo hoy.', 
'Tener mas de cinco veces de lo que debes guardado en recursos liquidos indica una sub-utilizacion masiva de tu riqueza operativa. Estas guardando demasiado dinero que no te genera ningun rendimiento y que podria ser el motor de una expansion agresiva que estas dejando pasar por un exceso de cautela financiera excesivo.', 
'Te aconsejo que liberes este exceso de blindaje inmediato. No necesitas mas de 2.0 de reserva para estar totalmente seguro. Utiliza ese capital restante para contratar a ese equipo experto que tanto has aplazado o para modernizar tu plataforma de servicios; haz que tu dinero trabaje para el futuro de la empresa.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q2 (Dato: 6.64)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_2Q', 2023, '2Q', 'success', 
'Al cerrar el segundo trimestre de 2023, tu reserva inmediata subió a 6.64. Es un blindaje inexpugnable que garantiza la paz financiera de tus socios y de tu equipo estrella, asegurando que ningun factor externo, por grave que sea, pueda desestabilizar la operatividad de tu oficina de consultoría profesional en este periodo.', 
'Lo irónico es que, con tanta seguridad, tu agilidad comercial se resiente. Tener casi siete veces tu deuda en activos liquidos sugiere que estas operando con un freno de mano puesto. Ese dinero quieto es una "fortaleza de cristal" que, aunque hermosa en el balance, no ayuda a escalar el negocio hacia metas mas ambiciosas.', 
'Aprovecha esta sobre-liquidez para negociar con fuerza. Puedes realizar pagos anticipados a cambio de descuentos financieros sustanciales que mejoren tu margen de utilidad neta final. No permitas que tu capital se duerma en una cuenta de ahorros tradicional; conviertelo en un arma de negociacion corporativa ahora mismo.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q3 (Dato: 8.79)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_3Q', 2023, '3Q', 'success', 
'¡Asombroso! Alcanzaste un ratio de reserva inmediata de 8.79 en este tercer trimestre de 2023. Tienes casi nueve pesos por cada peso que debes, lo que te otorga un estatus de solvencia legendario en el mercado. Tu firma es una maquina de generar reservas que te permite mirar cualquier crisis a los ojos sin parpadear.', 
'Sin embargo, ocho pesos de respaldo es el limite de lo ineficiente. Es muy probable que este capital provenga de utilidades acumuladas que no estas distribuyendo ni reinvirtiendo en el crecimiento de la firma. Estas perdiendo oportunidades de inversion inmobiliaria o tecnologica que harian que tu consultoría fuera imparable.', 
'Mi recomendación es que establezcas un limite de blindaje tecnico. Nadie necesita 8.79 de respaldo inmediato; con 2.50 estas mas que protegido. El excedente deberia estar financiando un plan de expansion de servicios regionales o una bonificacion de exito para tus mejores colaboradores actuales.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q4 (Dato: 3.09)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'prueba_acida_4Q', 2023, '4Q', 'success', 
'Cierras el 2023 con una capacidad de respuesta de 3.09, un nivel mucho mas dinamico y saludable. Has logrado movilizar ese gran volumen de reservas que tenias acumuladas, demostrando una gerencia mucho mas activa que ha decidido poner el dinero a trabajar antes de que finalice el ciclo contable anual hoy.', 
'A pesar de ser una cifra estelar para el mercado, la caida desde el 8.79 anterior debe ser analizada. Asegurate de que esta salida de recursos se debió a inversiones productivas o distribucion de valor real a los socios, y no a un aumento descontrolado de tus deudas operativas de fin de año en tu oficina.', 
'Mantén este ratio de 3.00 como tu nuevo "norte" financiero para el proximo año. Te da la seguridad de tres pesos de respaldo por cada peso de deuda, pero con la agilidad necesaria para seguir creciendo sin estancarte en la inaccion capitalista que viste en los trimestres anteriores de este mismo ejercicio.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ---------------------------------------------------------
-- INDICADOR 4: RATIO DE EFECTIVO (Tu bolsillo de ahorros hoy)
-- ---------------------------------------------------------

-- 2023 Q1 (Dato: 4.16)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_1Q', 2023, '1Q', 'success', 
'Arrancaste el 2023 con un ahorro en cuenta verdaderamente masivo de 4.16 veces tu deuda total. Tienes el efectivo puro y duro para pagar cuatro veces todas tus cuentas pendientes hoy mismo, lo que te otorga una independencia bancaria y una tranquilidad operativa envidiable por cualquier competidor.', 
'Tener tanto dinero liquido en cuenta corriente es un error estrategico si no esta rindiendo nada. Ese bolsillo de ahorros de 4.16 indica que tu dinero esta perdiendo valor frente a la inflacion diaria. Estas guardando un "cofre de oro" que deberia estar siendo invertido en activos que generen valor para la firma.', 
'Te sugiero que pongas a trabajar este bolsillo. Si no quieres tomar riesgos, al menos busca instrumentos de deuda publica o fondos de inversion de bajo riesgo con liquidez diaria. No dejes que el efectivo se quede quieto; haz que ese 4.16 te genere ingresos pasivos que ayuden a pagar los gastos de oficina.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q2 (Dato: 4.10)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_2Q', 2023, '2Q', 'success', 
'Al terminar el segundo trimestre de 2023, sigues manteniendo un bolsillo de ahorros de 4.10. Has logrado proteger tu efectivo ante cualquier imprevisto de mitad de año, garantizando que tu empresa tenga siempre la chequera lista para responder ante cualquier compromiso con colaboradores o proveedores clave hoy.', 
'La persistencia de este ratio tan alto indica que tu gestion de pagos es muy conservadora. Podrias estar perdiendo agilidad operativa al no utilizar este efectivo para negociar mejores precios de contado o para anticipar inversiones que te harian mas rentable en el largo plazo de este mismo año escolar.', 
'Mi recomendación es que realices una auditoría de eficiencia de caja. Verifica cuanto de este 4.10 necesitas realmente para estar tranquilo y el resto destinadlo a un plan de marketing o nuevas contrataciones. No dejes que tu exito de ahorro se convierta en una barrera para tu proximo gran salto empresarial.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q3 (Dato: 5.85)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_3Q', 2023, '3Q', 'success', 
'¡Pico historico de ahorros! En este tercer trimestre de 2023 lograste subir tu bolsillo de efectivo a 5.85 veces tu deuda. Tienes una riqueza inmediata que te permite planear cualquier movimiento estrategico, desde adquisiciones hasta aperturas de nuevas oficinas, con la seguridad de quien no necesita pedir prestado nada.', 
'Tener casi seis veces lo que debes en efectivo puro es una señal de que la distribucion de riqueza en el negocio esta estancada. Este "dinero inerte" podria estar siendo mejor aprovechado en manos de los socios o como combustible para proyectos de innovacion que hoy no estas ejecutando por falta de iniciativa comercial.', 
'Abre tu "cofre de oro" y ponlo a producir. Con 5.85 puntos de ahorro, tienes el capital necesario para transformar tu firma de consultoría en un referente regional. No dejes que este triunfo se quede solo en un numero bonito en la cuenta de ahorros; transformalo en una ventaja competitiva real y tangible ahora mismo.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2023 Q4 (Dato: 1.49)
INSERT INTO liquidity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ratio_efectivo_4Q', 2023, '4Q', 'success', 
'Cierras el 2023 con una fortaleza de ahorros razonable de 1.49, tras haber movilizado el gran excedente de los meses anteriores. Has logrado una estructura de caja mucho mas eficiente, terminando el año con el dinero suficiente para cubrir tus obligaciones y con un presupuesto de ahorro totalmente saneado hoy.', 
'Esta normalizacion desde el 5.85 hasta el 1.49 sugiere que realizaste una gestion de activos muy fuerte al cierre de año. Debes ser cuidadoso para que este nivel de ahorro no siga bajando en el proximo enero, pues los costos fijos no perdonan y necesitarás mantener esa base de 1.40 para operar sin asfixia bancaria.', 
'Mi recomendación final es que proyectes tu proximo bolsillo de ahorros basandote en este 1.49. Es un nivel sano que te da seguridad sin caer en la ineficiencia anterior. Enfocate en que tu recaudo de cartera sea constante para que este ratio se mantenga estable y no vuelvas a tener esos picos de dinero quieto innecesarios.', 
'Protocolo Liquidez Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;
