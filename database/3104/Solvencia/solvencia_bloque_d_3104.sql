-- üõ°Ô∏è Dashboard Solvencia - Bloque D: An√°lisis Interanual Mensual (Empresa 3104)
-- LOTE 1 (8 de 72 registros) - Meses: Enero (M1) y Febrero (M2) parcial
-- Est√°ndar: Gerencia-a-Gerencia (+40 palabras por secci√≥n, Tuteo, MAY√öSCULAS)

-- ============================================================================
-- ENERO (M1) - AN√ÅLISIS INTERANUAL
-- ============================================================================

-- [1: Cobertura de Cargos Fijos - Enero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M1', 'CARGOS_FIJOS_M1', '[Analisis Interanual] Cargos Fijos - Enero', 'success',
'Has iniciado este enero con una solidez envidiable, manteniendo una cobertura superior a las once veces sobre tus gastos fijos mensuales corporativos. Este logro es monumental cuando recordamos que en enero del 2023 apenas lograbas cubrir la mitad de tus compromisos b√°sicos, demostrando una madurez operativa y un control de costos magistral.',
'A pesar de este excelente resultado, notas que la cobertura es ligeramente inferior al pico hist√≥rico que alcanzaste en enero del a√±o pasado, lo que sugiere un leve repunte en tus gastos administrativos de inicio de ejercicio. Esta peque√±a desviaci√≥n te obliga a vigilar de cerca tus nuevas contrataciones de servicios fijos anuales.',
'Sigue con la pol√≠tica de austeridad inteligente y aprovecha este excedente de cobertura para fortalecer tu fondo de maniobra operativa de forma inmediata este trimestre. Te recomendamos que no incrementes tus costos fijos recurrentes en m√°s de un cinco por ciento respecto al promedio hist√≥rico exitoso que traes del 2024.',
'An√°lisis Interanual Mensual - Lote 1/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [2: Cobertura de Intereses - Enero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M1', 'INTERESES_M1', '[Analisis Interanual] Cobertura de Intereses - Enero', 'success',
'Tu capacidad para cubrir intereses en este primer mes del a√±o es simplemente espectacular, superando con creces el promedio hist√≥rico de tus eneros pasados en la firma. Esta posici√≥n de fuerza financiera te permite negociar desde una plataforma de solvencia absoluta ante cualquier entidad bancaria o proveedor que busque expandir sus l√≠neas contigo.',
'El √∫nico riesgo de tener una cobertura tan desproporcionadamente alta en enero es relajar la gesti√≥n del flujo de caja neta proyectado para los meses de menor facturaci√≥n estacional. No permitas que el √©xito de este inicio de a√±o te quite la disciplina de ahorro que fue tu mejor arma durante la reconstrucci√≥n del 2023.',
'Utiliza tu excelente calificaci√≥n actual para renegociar las tasas de inter√©s de tus deudas remanentes de largo plazo, reduciendo a√∫n m√°s tu carga financiera estructural este mes. Te sugerimos que cualquier excedente de utilidad sea capitalizado para fortalecer el patrimonio neto de tu consultora ante terceros nacionales e internacionales hoy.',
'An√°lisis Interanual Mensual - Lote 1/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [3: Cobertura Servicio Deuda - Enero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M1', 'SERVICIO_DEUDA_M1', '[Analisis Interanual] Servicio de Deuda - Enero', 'success',
'Es muy rescatable que tu EBITDA de este enero cubra m√°s de cuatro veces tus obligaciones pactadas de capital e intereses, superando ampliamente tu desempe√±o hist√≥rico de eneros anteriores. Esta solidez demuestra que tu estrategia de enfocarte en proyectos de alto margen y recaudo r√°pido est√° pagando dividendos reales para tu tranquilidad financiera actual.',
'Incluso con este gran resultado, recuerda que el flujo de caja de inicio de a√±o es sensible a los pagos de impuestos y p√≥lizas de seguros anuales obligatorias. Tu actual cobertura te protege, pero no debes descuidar tu fondo de contingencia operativa si planeas iniciar nuevas inversiones tecnol√≥gicas pesadas durante este primer semestre del a√±o.',
'Crea una reserva de caja equivalente a seis meses de servicio de deuda utilizando tus excedentes de este trimestre de forma estrat√©gica y muy profesional hoy mismo. Te recomendamos mantener este ratio por encima de las tres veces de forma constante, blindando la calificaci√≥n crediticia de tu organizaci√≥n ante cualquier eventualidad de mercado futura.',
'An√°lisis Interanual Mensual - Lote 1/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [4: Deuda Neta / EBITDA - Enero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M1', 'DEUDA_EBITDA_M1', '[Analisis Interanual] Deuda Neta / EBITDA - Enero', 'success',
'Has logrado situar tu relaci√≥n deuda sobre utilidad operativa en niveles m√≠nimos record para un mes de enero, demostrando una eficiencia en la gesti√≥n del pasivo inmejorable. Estas cifras indican que tu empresa es hoy capaz de cancelar la totalidad de sus deudas bancarias en apenas seis meses de operaci√≥n, una posici√≥n de envidia.',
'El riesgo es caer en una inactividad de inversi√≥n por un exceso de conservadurismo tras los sustos financieros que vivimos durante el accidentado a√±o dos mil veintitr√©s. No permitas que el miedo a la deuda te impida tomar cr√©ditos estrat√©gicos de bajo costo que podr√≠an proyectar tu marca hacia mercados internacionales de consultor√≠a especializada este a√±o.',
'Eval√∫a agresivamente la toma de financiamiento para expansi√≥n tecnol√≥gica ahora que tu perfil de riesgo es de excelencia total ante todos los evaluadores de la banca nacional. Te sugerimos que mantengas este ratio por debajo de uno punto cero, pero us√°ndolo para potenciar el crecimiento de tu planta de consultores senior corporativos.',
'An√°lisis Interanual Mensual - Lote 1/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [5: Endeudamiento Total - Enero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M1', 'ENDEUDAMIENTO_TOTAL_M1', '[Analisis Interanual] Endeudamiento Total - Enero', 'success',
'Destacamos el saneamiento magistral de tu balance general, logrando que tu endeudamiento total de este enero sea apenas una fracci√≥n de lo que sol√≠a ser hist√≥ricamente. Has recuperado la soberan√≠a patrimonial sobre tus activos de consultor√≠a, permiti√©ndote respirar y planear con una visi√≥n de largo plazo que antes era imposible bajo la presi√≥n bancaria.',
'Notamos que todav√≠a mantienes algunos pasivos comerciales con proveedores de red y comunicaciones que podr√≠an ser liquidados de contado para mejorar tu margen neto final. No descuides estas peque√±as deudas que, aunque no afectan tu solvencia global, s√≠ influyen en la percepci√≥n de liquidez inmediata que tienen tus socios estrat√©gicos actuales.',
'Negocia descuentos por pronto pago con todos tus proveedores recurrentes de servicios tecnol√≥gicos para maximizar el ahorro operativo durante este primer trimestre del a√±o fiscal. Te recomendamos que tu meta de endeudamiento estructural sea inferior al veinte por ciento, consolidando a tu firma como un basti√≥n de seguridad econ√≥mica regional.',
'An√°lisis Interanual Mensual - Lote 1/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [6: Solvencia Patrimonial - Enero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M1', 'SOLVENCIA_PATRIMONIAL_M1', '[Analisis Interanual] Solvencia Patrimonial - Enero', 'success',
'Tu solvencia patrimonial ha iniciado el dos mil veinticinco en su nivel m√°s alto registrado para un mes de enero, marcando el fin definitivo de la etapa de vulnerabilidad t√©cnica. Est√°s operando con un respaldo de capital propio que te da una autoridad moral y financiera indiscutible ante cualquier competencia o cliente potencial hoy d√≠a.',
'A pesar de este √©xito, recuerda que la protecci√≥n patrimonial exige una vigilancia constante contra la descapitalizaci√≥n por el retiro excesivo de utilidades durante los meses de bonanza estacional. El patrimonio es el √∫nico escudo real que tienes ante futuras crisis de mercado, por lo que debes seguir aliment√°ndolo con rigor administrativo.',
'Sigue capitalizando tus utilidades operativas mensualmente para fortalecer tu balance y busca diversificar tus activos corporativos en inversiones de bajo riesgo y alta liquidez este mes. Te sugerimos que tu meta de solvencia patrimonial sea del cincuenta por ciento para finalizar el semestre, blindando as√≠ tu futuro institucional definitivamente.',
'An√°lisis Interanual Mensual - Lote 1/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- FEBRERO (M2) - INICIO AN√ÅLISIS INTERANUAL
-- ============================================================================

-- [7: Cobertura de Cargos Fijos - Febrero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M2', 'CARGOS_FIJOS_M2', '[Analisis Interanual] Cargos Fijos - Febrero', 'success',
'Has logrado mantener una trayectoria de eficiencia operativa impecable durante este mes de febrero, superando el promedio hist√≥rico de tus coberturas fijas de los √∫ltimos tres a√±os fiscales. Tu disciplina para no dejar que los gastos administrativos crezcan junto con tus ingresos de consultor√≠a es el pilar que sostiene tu actual rentabilidad neta.',
'Sin embargo, notamos un leve repunte en el costo de tus servicios auxiliares de oficina este mes de febrero, reflejando quiz√°s ajustes de precios que debes auditar rigurosamente. No permitas que estas variaciones hormiga erosionen tu margen EBITDA, manteniendo siempre una vigilancia activa sobre cada factura recurrente que llega a tu tesorer√≠a hoy.',
'Realiza una revisi√≥n t√©cnica detallada de tus contratos de soporte tecnol√≥gico este trimestre para asegurar que est√°s pagando lo justo por los servicios que realmente utilizas cada mes. Te recomendamos que tu cobertura de cargos fijos no baje de las diez veces, garantizando as√≠ un flujo de caja libre muy robusto para tus planes futuros.',
'An√°lisis Interanual Mensual - Lote 1/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [8: Cobertura de Intereses - Febrero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M2', 'INTERESES_M2', '[Analisis Interanual] Cobertura de Intereses - Febrero', 'success',
'Tu solvencia para cubrir intereses en este mes de febrero sigue siendo estelar, reflejando una salud financiera de acero que te aleja de cualquier riesgo de asfixia bancaria. Haber reducido tu exposici√≥n a cr√©ditos de corto plazo durante el a√±o pasado ha sido la base maestra que hoy te permite gestionar tu consultor√≠a con plena libertad gerencial.',
'El reto ahora es no caer en la inacci√≥n estrat√©gica por falta de presi√≥n financiera externa en tus flujos de caja operativos mensuales de este primer semestre del a√±o. Tener tanta cobertura podr√≠a indicar que tienes capital ocioso que deber√≠a estar siendo invertido en mercadeo o ventas para potenciar a√∫n m√°s tu captaci√≥n de nuevos clientes corporativos.',
'Invierte parte de tu excedente de utilidad de febrero en campa√±as de posicionamiento de marca senior para asegurar que tu flujo de EBITDA se mantenga creciente a largo plazo hoy. Te sugerimos que busques asesor√≠a para optimizar el rendimiento de tu liquidez inmediata, logrando que tu dinero genere valor m√°s all√° de solo cubrir intereses bancarios.',
'An√°lisis Interanual Mensual - Lote 1/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ============================================================================
-- FEBRERO (M2) - CONTINUACI”N AN¡LISIS INTERANUAL
-- ============================================================================

-- [9: Servicio de Deuda - Febrero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M2', 'SERVICIO_DEUDA_M2', '[Analisis Interanual] Servicio de Deuda - Febrero', 'success',
'Has logrado consolidar tu capacidad de pago este mes de febrero, situ·ndote muy por encima de tu promedio histÛrico de los ˙ltimos dos aÒos fiscales para este mismo periodo estacional. Esta noticia es excelente, ya que demuestra que tu EBITDA actual tiene la fuerza suficiente para honrar capital e intereses sin comprometer tu operaciÛn diaria.',
'Sin embargo, notamos que tu cobertura en este febrero es ligeramente inferior a la proyectada inicialmente debido a un aumento puntual en los costos de subcontrataciÛn tÈcnica para proyectos especiales. No permitas que estas desviaciones se vuelvan la norma, manteniendo siempre una vigilancia milimÈtrica sobre la eficiencia de cada consultor senior.',
'Destina una parte de tu flujo de caja de este mes a la amortizaciÛn acelerada de tus deudas comerciales de corto plazo para liberar a˙n m·s tu capacidad de servicio de la deuda hoy. Te recomendamos mantener este ratio por encima de las tres punto cinco veces para garantizar un blindaje absoluto ante cualquier eventual fluctuaciÛn de mercado.',
'An·lisis Interanual Mensual - Lote 2/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [10: Deuda Neta / EBITDA - Febrero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M2', 'DEUDA_EBITDA_M2', '[Analisis Interanual] Deuda Neta / EBITDA - Febrero', 'success',
'Tu relaciÛn entre deuda bancaria y utilidad operativa este mes de febrero es una de las m·s bajas de tu historia corporativa reciente, reflejando una salud financiera de alto nivel. Est·s operando con un apalancamiento insignificante respecto a tu capacidad de generaciÛn de caja, lo que te devuelve el mando total sobre tus decisiones de inversiÛn estratÈgica.',
'A pesar de este gran resultado, recuerda que el promedio histÛrico de tus febreros suele mostrar una mayor volatilidad en la facturaciÛn de servicios de consultorÌa recurrente mensual actual. No te dejes seducir por la tranquilidad presente y mantÈn tus costos indirectos de ventas bajo un control estricto para que este ratio no pierda su brillantez.',
'Eval˙a la posibilidad de negociar lÌneas de crÈdito de fomento con tasas preferenciales ahora que tu balance es impecable y tu ratio de deuda sobre EBITDA es inmejorable ante cualquier auditor. Te sugerimos que sigas usando tus excedentes para autofinanciar la totalidad de tus nuevos contratos de implementaciÛn tecnolÛgica este semestre.',
'An·lisis Interanual Mensual - Lote 2/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [11: Endeudamiento Total - Febrero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M2', 'ENDEUDAMIENTO_TOTAL_M2', '[Analisis Interanual] Endeudamiento Total - Febrero', 'success',
'Has mantenido una trayectoria de desapalancamiento ejemplar durante este mes de febrero, logrando que tu patrimonio propio sea el verdadero pulmÛn patrimonial de toda tu operaciÛn consultora nacional. Haber logrado que tus deudas totales sean marginales frente a tus activos corporativos es el mayor logro de tu gestiÛn financiera de los ˙ltimos aÒos.',
'Notamos que todavÌa mantienes una pequeÒa concentraciÛn de pasivos operativos con proveedores de infraestructura que podrÌan ser renegociados para obtener mejores plazos sin afectar tu solvencia global hoy. No permitas que cuentas pequeÒas generen ruidos en tu balance consolidado, manteniendo siempre una imagen de transparencia y puntualidad absoluta en tus pagos.',
'Establece una meta de endeudamiento total inferior al quince por ciento para el cierre del segundo trimestre fiscal, blindando definitivamente tu balance estratÈgico ante terceros regionales e internacionales. Te recomendamos que sigas capitalizando tus utilidades operativas mensualmente para fortalecer el respaldo institucional de tu firma consultora experta.',
'An·lisis Interanual Mensual - Lote 2/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [12: Solvencia Patrimonial - Febrero]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M2', 'SOLVENCIA_PATRIMONIAL_M2', '[Analisis Interanual] Solvencia Patrimonial - Febrero', 'success',
'Tu solvencia patrimonial este mes de febrero refleja una solidez que ya es un est·ndar consolidado para tu compaÒÌa, alej·ndote totalmente de cualquier riesgo de fragilidad institucional pasada. Est·s construyendo un legado de valor real para tus socios, donde cada peso de activo est· respaldado mayoritariamente por capital propio ganado legÌtimamente.',
'Sin embargo, recuerda que el sector de la consultorÌa exige una renovaciÛn constante de activos intangibles y talento que no siempre aparecen reflejados con su valor real en tus libros contables finales. El reto es asegurar que tu solvencia patrimonial contable sea un reflejo fiel de tu fortaleza tecnolÛgica y humana operativa este mes.',
'Asigna una reserva patrimonial especÌfica para la investigaciÛn y desarrollo de nuevas metodologÌas de an·lisis financiero que mantengan tu competitividad al tope del mercado nacional actualmente hoy. Te sugerimos que tu ratio de solvencia siga creciendo hasta alcanzar el sesenta por ciento del valor total de tu empresa consultora.',
'An·lisis Interanual Mensual - Lote 2/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- MARZO (M3) - INICIO AN¡LISIS INTERANUAL
-- ============================================================================

-- [13: Cobertura de Cargos Fijos - Marzo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M3', 'CARGOS_FIJOS_M3', '[Analisis Interanual] Cargos Fijos - Marzo', 'success',
'Cierras este primer trimestre con una cobertura de cargos fijos en marzo que supera ampliamente el promedio histÛrico de tus ˙ltimos tres aÒos para este mismo mes estacional. Has logrado que tu firma opere con una eficiencia tal que tus ingresos de un solo mes cubren m·s de once veces tus costos fijos de oficina y nÛmina tÈcnica.',
'No obstante, el cierre de trimestre suele traer gastos extraordinarios de auditorÌa y cierres contables que podrÌan presionar levemente este margen de seguridad si no eres cuidadoso administrativamente este mes. MantÈn un control fÈrreo sobre las horas extras y los gastos de representaciÛn para que tu cobertura de marzo no pierda su brillantez histÛrica actual.',
'Define un presupuesto estricto para el inicio del segundo trimestre que no incremente tu carga fija operativa sin una justificaciÛn comercial de alto impacto y rentabilidad neta inmediata. Te recomendamos que tu ratio de cobertura se mantenga siempre por encima de las diez veces para garantizar una tranquilidad financiera total ininterrumpida.',
'An·lisis Interanual Mensual - Lote 2/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [14: Cobertura de Intereses - Marzo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M3', 'INTERESES_M3', '[Analisis Interanual] Cobertura de Intereses - Marzo', 'success',
'Tu capacidad de cubrimiento de intereses en este mes de marzo es magistral, reflejando una salud financiera de acero que te posiciona como un referente de Èxito en tu sector econÛmico hoy. Est·s en la posiciÛn ideal para cancelar cualquier deuda bancaria remanente de forma inmediata si asÌ lo decidieras gerencialmente este periodo.',
'A pesar de la cifra stellar, observa que el entorno de tasas de interÈs externas sigue siendo vol·til y podrÌa encarecer tus lÌneas de crÈdito revolvente si decides utilizarlas este semestre del aÒo. No te dejes confiar por tu actual holgura y mantÈn siempre una polÌtica de "cero deuda de tesorerÌa" para blindar tu rentabilidad operativa.',
'Utiliza tu prestigio financiero para liderar procesos de consultorÌa en grandes corporaciones que exijan garantÌas de solvencia que solo t˙ puedes demostrar con este indicador tÈcnico hoy mismo. Te sugerimos que mantengas tu polÌtica de desapalancamiento financiero absoluto, convirtiendo tu solvencia de intereses en una ventaja competitiva nacional ˙nica.',
'An·lisis Interanual Mensual - Lote 2/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [15: Servicio de Deuda - Marzo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M3', 'SERVICIO_DEUDA_M3', '[Analisis Interanual] Servicio de Deuda - Marzo', 'success',
'Has concluido el primer trimestre con un indicador de servicio de deuda en marzo que triplica tu promedio histÛrico mensual, confirmando la solidez de tu flujo de caja operativo EBITDA. Tu empresa tiene hoy la fuerza necesaria para honrar sus compromisos bancarios sin sacrificar ni un solo centavo de su inversiÛn en calidad tÈcnica corporativa.',
'Notamos que el cierre de marzo exige pagos de impuestos significativos que coinciden con las cuotas de capital financieras, lo que requiere una coordinaciÛn de tesorerÌa perfecta para no estresar tu liquidez. Aseg˙rate de que tu programaciÛn de recaudos de cartera de este mes se cumpla al cien por ciento para mantener este ratio en la cima informativa.',
'Establece un fondo de amortizaciÛn autom·tica para tus deudas del segundo trimestre utilizando los excedentes de los proyectos que est·s entregando con Èxito este mismo mes de marzo hoy. Te recomendamos que tu cobertura de servicio de deuda no baje de las cuatro veces, garantizando asÌ un blindaje absoluto para tu calificaciÛn de riesgo nacional.',
'An·lisis Interanual Mensual - Lote 2/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [16: Deuda Neta / EBITDA - Marzo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M3', 'DEUDA_EBITDA_M3', '[Analisis Interanual] Deuda Neta / EBITDA - Marzo', 'success',
'Tu relaciÛn deuda sobre utilidad operativa operativa en este cierre de trimestre es una de las m·s bajas y seguras del mercado de consultorÌa tÈcnica especializada actualmente. Est·s operando con un nivel de pasivo bancario casi nulo respecto a tu gran capacidad de generaciÛn de ingresos, lo que te otorga una valoraciÛn institucional muy superior a la media.',
'El ˙nico riesgo latente es permitir que la ausencia de presiÛn de pago bancaria derive en una relajaciÛn de la gestiÛn del margen EBITDA por proyecto en tu equipo comercial senior este mes. La eficiencia que te trajo a esta posiciÛn de fuerza debe seguir siendo el ADN de tu organizaciÛn para que este ratio se mantenga en la excelencia.',
'Incrementa tu margen EBITDA mediante la optimizaciÛn de procesos de an·lisis automatizados que reduzcan el tiempo de entrega de tus proyectos sin sacrificar su alta calidad tÈcnica hoy. Te sugerimos mantener este indicador por debajo del cero punto cinco, blindando asÌ tu empresa ante cualquier cambio inesperado en el entorno econÛmico nacional.',
'An·lisis Interanual Mensual - Lote 2/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ============================================================================
-- MARZO (M3) - CONTINUACI”N AN¡LISIS INTERANUAL
-- ============================================================================

-- [17: Endeudamiento Total - Marzo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M3', 'ENDEUDAMIENTO_TOTAL_M3', '[Analisis Interanual] Endeudamiento Total - Marzo', 'success',
'Al cierre de este mes de marzo, tu balance muestra un nivel de endeudamiento total excepcionalmente bajo, situ·ndose muy por debajo del promedio histÛrico de tus ˙ltimos tres aÒos para este mismo periodo. Has logrado que los socios sean dueÒos reales de la vasta mayorÌa de los activos, lo que te otorga una independencia gerencial absoluta hoy.',
'La ˙nica vigilancia que debes mantener es no permitir que esta holgura patrimonial derive en una desatenciÛn a las oportunidades de apalancamiento estratÈgico para inversiones en infraestructura propia avanzada este semestre. Tener un endeudamiento tan bajo podrÌa indicar una aversiÛn al riesgo que frene tu expansiÛn regional masiva durante el prÛximo trimestre fiscal.',
'Eval˙a la toma de financiamiento de largo plazo exclusivo para la adquisiciÛn de nuevas licencias de software de an·lisis masivo ahora que tu calificaciÛn crediticia es la mejor de tu historia corporativa nacional. Te sugerimos mantener este ratio por debajo del quince por ciento, consolidando tu firma como un bastiÛn de seguridad econÛmica regional total.',
'An·lisis Interanual Mensual - Lote 3/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [18: Solvencia Patrimonial - Marzo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M3', 'SOLVENCIA_PATRIMONIAL_M3', '[Analisis Interanual] Solvencia Patrimonial - Marzo', 'success',
'Has concluido el primer trimestre con una solvencia patrimonial en marzo que es un testimonio de tu disciplina para la retenciÛn de utilidades y la reinversiÛn estratÈgica en el negocio de consultorÌa experta. Est·s operando con un capital propio robusto que te blinda totalmente ante cualquier crisis de liquidez imprevista en el mercado nacional actualmente.',
'Cuidado con la tentaciÛn de decretar dividendos excesivos basados ˙nicamente en los excelentes resultados acumulados de este trimestre sin considerar tus planes de expansiÛn tecnolÛgica pesada para el cierre del aÒo dos mil veinticinco. El patrimonio neto contable debe seguir creciendo para asegurar que tu valoraciÛn comercial sea siempre creciente y muy competitiva hoy.',
'Capitaliza al menos el setenta por ciento de tus utilidades operativas de este mes de marzo para fortalecer tu capital social legal de forma permanente en tus estados financieros oficiales este semestre. Te recomendamos que tu meta de solvencia patrimonial sea del sesenta por ciento para finales del aÒo, garantizando asÌ un futuro institucional inexpugnable.',
'An·lisis Interanual Mensual - Lote 3/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- ABRIL (M4) - AN¡LISIS INTERANUAL COMPLETO
-- ============================================================================

-- [19: Cobertura de Cargos Fijos - Abril]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M4', 'CARGOS_FIJOS_M4', '[Analisis Interanual] Cargos Fijos - Abril', 'success',
'Inicias el segundo trimestre con una cobertura de cargos fijos en abril que se mantiene en niveles de excelencia, superando ampliamente tu desempeÒo histÛrico de abriles de aÒos fiscales anteriores. Has demostrado que tu modelo de consultorÌa es altamente escalable, permitiÈndote facturar mucho m·s sin inflar tu base de costos administrativos o de nÛmina tÈcnica fija actual.',
'Observamos que el gasto en servicios de nube y suscripciones tecnolÛgicas ha tenido un ligero aumento este mes de abril, reflejando la mayor intensidad operativa de tus proyectos de an·lisis masivos recientes. No permitas que estos costos se vuelvan incontrolables, manteniendo una auditorÌa directa sobre cada nueva licencia o usuario senior contratado durante este periodo comercial.',
'Establece un lÌmite de gasto operativo inamovible para el resto del semestre que no exceda el promedio exitoso que has mantenido durante este gran inicio de aÒo dos mil veinticinco. Te recomendamos mantener tu ratio de cobertura por encima de las once veces, asegurando asÌ una utilidad neta operativa muy saludable para todos los socios corporativos hoy.',
'An·lisis Interanual Mensual - Lote 3/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [20: Cobertura de Intereses - Abril]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M4', 'INTERESES_M4', '[Analisis Interanual] Cobertura de Intereses - Abril', 'success',
'Tu capacidad de cubrimiento de intereses este mes de abril sigue siendo stellar, reflejando una salud financiera de acero para tu organizaciÛn de consultorÌa especializada actualmente hoy. Est·s en la posiciÛn ideal para manejar tus compromisos bancarios remanentes como un proceso administrativo menor y no como una presiÛn econÛmica para tu gerencia general o socios.',
'Ten cuidado con el optimismo excesivo al evaluar la toma de nuevos crÈditos para capital de trabajo basados ˙nicamente en la actual holgura de tu indicador tÈcnico de cobertura mensual. Recuerda que la volatilidad de las tasas externas sigue siendo una amenaza latente que podrÌa encarecer tu deuda futura de forma imprevista si no mantienes una polÌtica conservadora.',
'Utiliza tu excelente reputaciÛn financiera para negociar descuentos especiales en tus pÛlizas de cumplimiento ante las grandes aseguradoras nacionales para tus proyectos de este segundo trimestre fiscal hoy. Te sugerimos que mantengas tu polÌtica de desapalancamiento operativo, buscando siempre el autofinanciamiento de tus entregables tÈcnicos mediante el recaudo acelerado de cartera vigente.',
'An·lisis Interanual Mensual - Lote 3/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [21: Servicio de Deuda - Abril]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M4', 'SERVICIO_DEUDA_M4', '[Analisis Interanual] Servicio de Deuda - Abril', 'success',
'Has mantenido una cobertura del servicio de la deuda en abril que supera el promedio histÛrico de tus abriles pasados por un margen muy considerable y satisfactorio para tu marca. Tu EBITDA actual es hoy un escudo impenetrable que garantiza el pago puntual de capital e intereses sin estresar en lo m·s mÌnimo tu flujo de maniobra corporativa diaria.',
'No obstante, el mes de abril suele traer consigo el vencimiento de pagos tributarios importantes que podrÌan coincidir con tus amortizaciones bancarias mensuales pactadas de largo plazo este aÒo. Asegura una coordinaciÛn milimÈtrica de tu tesorerÌa para evitar cualquier bache de liquidez puntual que opaque tu impecable historial de cumplimiento financiero de estos ˙ltimos doce meses.',
'Crea un fondo de reserva de caja exclusivo para el pago de capital de deudas del prÛximo semestre utilizando tus excedentes de utilidad de este mes de abril magistralmente hoy. Te recomendamos que tu cobertura de servicio de deuda no baje de las cuatro veces de forma sostenida, blindando totalmente tu calificaciÛn de riesgo crediticio institucional nacional.',
'An·lisis Interanual Mensual - Lote 3/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [22: Deuda Neta / EBITDA - Abril]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M4', 'DEUDA_EBITDA_M4', '[Analisis Interanual] Deuda Neta / EBITDA - Abril', 'success',
'Tu relaciÛn deuda sobre utilidad operativa operativa en este inicio de segundo trimestre es una de las m·s seguras y eficientes del sector de consultorÌa tÈcnico-financiera actual en el paÌs. Est·s operando con un nivel de pasivos bancarios nulo respecto a tu gran generaciÛn de caja operativa propia, lo que te otorga una soberanÌa total hoy.',
'El riesgo es permitir que la ausencia de deuda bancaria derive en una complacencia corporativa que afecte el ritmo de crecimiento de tus ventas de proyectos senior este semestre fiscal. Nota que una deuda controlada y estratÈgica puede ser un catalizador para duplicar tu capacidad de entrega tÈcnica si se usa correctamente para contratar talento de primer nivel.',
'Eval˙a para el prÛximo mes de mayo la toma de un crÈdito estratÈgico para la expansiÛn de tu equipo tÈcnico en nuevas ciudades del territorio nacional colombiano ahora mismo hoy. Te sugerimos mantener este indicador por debajo del cero punto cinco veces, blindando asÌ tu empresa ante cualquier cambio inesperado en el entorno macroeconÛmico regional vigente.',
'An·lisis Interanual Mensual - Lote 3/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [23: Endeudamiento Total - Abril]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M4', 'ENDEUDAMIENTO_TOTAL_M4', '[Analisis Interanual] Endeudamiento Total - Abril', 'success',
'Tu balance de situaciÛn en este mes de abril muestra un nivel de propiedad sobre tus activos que es ejemplar para una pyme del sector de servicios de consultorÌa estratÈgica. Haber logrado reducir tus deudas totales a niveles mÌnimos histÛricos es la mejor garantÌa de que tu firma podr· sobrevivir a cualquier ciclo econÛmico adverso futuro nacional.',
'Observamos que todavÌa mantienes algunas deudas de corto plazo con partners comerciales que podrÌan ser liquidadas mediante prÈstamos entre socios para limpiar totalmente tu imagen ante terceros. No dejes que pasivos pequeÒos nublen la visiÛn de solidez total que has construido con tanto esfuerzo y disciplina financiera durante estos ˙ltimos veinticuatro meses.',
'Busca cerrar al menos dos contratos de consultorÌa de largo plazo que te inyecten flujo de caja fresco para liquidar el total de tus pasivos financieros remanentes este semestre fiscal. Te recomendamos que tu meta de endeudamiento estructural sea inferior al diez por ciento, convirtiendo a tu empresa en un bastiÛn de independencia econÛmica definitiva hoy.',
'An·lisis Interanual Mensual - Lote 3/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [24: Solvencia Patrimonial - Abril]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M4', 'SOLVENCIA_PATRIMONIAL_M4', '[Analisis Interanual] Solvencia Patrimonial - Abril', 'success',
'Has iniciado este segundo cuarto del aÒo con una solvencia patrimonial en abril que confirma la transformaciÛn exitosa de tu balance hacia un modelo de acumulaciÛn de riqueza real propia. Tu patrimonio neto contable ya no es solo una cifra tÈcnica, sino que se ha convertido en el respaldo tangible de todas tus operaciones comerciales hoy.',
'Recuerda que ante una eventual inflaciÛn acelerada en los costos de talento humano, tu patrimonio neto real podrÌa verse afectado si no actualizas oportunamente tus tarifas de consultorÌa este mes. El reto es asegurar que tu crecimiento patrimonial supere siempre el crecimiento de tus costos de vida corporativos mensuales durante todo el aÒo.',
'Revisa tus tarifas de proyectos senior de este trimestre para asegurar que el margen de contribuciÛn sea suficiente para seguir alimentando tu solvencia patrimonial de forma ininterrumpida hoy. Te sugerimos que tu meta de solvencia alcance el cincuenta y cinco por ciento antes de finalizar el prÛximo mes de junio, blindando tu futuro institucional.',
'An·lisis Interanual Mensual - Lote 3/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ============================================================================
-- MAYO (M5) - AN¡LISIS INTERANUAL COMPLETO
-- ============================================================================

-- [25: Cobertura de Cargos Fijos - Mayo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M5', 'CARGOS_FIJOS_M5', '[Analisis Interanual] Cargos Fijos - Mayo', 'success',
'Has logrado mantener una trayectoria de eficiencia operativa impecable durante este mes de mayo, superando con creces el promedio histÛrico de tus ˙ltimos tres aÒos fiscales para este mismo periodo estacional. Tu capacidad para absorber los costos fijos de oficina y nÛmina tÈcnica con tus ingresos de consultorÌa es hoy un pilar de tu rentabilidad.',
'Sin embargo, notamos que el gasto en servicios p˙blicos y mantenimiento digital ha tenido un ligero repunte este mes de mayo, reflejando quiz·s la mayor intensidad de uso de tus plataformas de an·lisis de datos senior actuales. No permitas que estas pequeÒas variaciones erosionen tu margen de seguridad, manteniendo siempre una vigilancia milimÈtrica hoy.',
'Realiza una auditorÌa de eficiencia sobre tus suscripciones tecnolÛgicas recurrentes para asegurar que est·s obteniendo el m·ximo retorno productivo por cada peso invertido en cargos fijos este semestre. Te recomendamos que tu cobertura se mantenga por encima de las once veces, garantizando asÌ un flujo de caja libre muy robusto para tus socios.',
'An·lisis Interanual Mensual - Lote 4/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [26: Cobertura de Intereses - Mayo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M5', 'INTERESES_M5', '[Analisis Interanual] Cobertura de Intereses - Mayo', 'success',
'Tu solvencia para cubrir intereses en este mes de mayo sigue siendo estelar, reflejando una salud financiera de acero que te aleja de cualquier riesgo de asfixia bancaria o de pasivos pesados hoy. Est·s operando con un nivel de madurez econÛmica que te permite gestionar el costo del dinero como una variable menor en tu planeaciÛn estratÈgica corporativa.',
'El reto oculto es no caer en la inacciÛn por la ausencia de presiÛn de pago, descuidando la b˙squeda de nuevas lÌneas de crÈdito estratÈgicas que podrÌan potenciar tu expansiÛn tecnolÛgica este semestre fiscal. Tener tanta cobertura podrÌa indicar que tienes capital subutilizado que deberÌa estar trabajando para generar m·s valor real para la firma actualmente.',
'Eval˙a agresivamente la toma de financiamiento para la adquisiciÛn de activos digitales avanzados ahora que tu perfil de riesgo es de excelencia total ante todos los evaluadores del mercado nacional hoy. Te sugerimos que mantengas tu polÌtica de desapalancamiento operativo, pero usando el crÈdito como un catalizador para duplicar tu tamaÒo actual.',
'An·lisis Interanual Mensual - Lote 4/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [27: Servicio de Deuda - Mayo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M5', 'SERVICIO_DEUDA_M5', '[Analisis Interanual] Servicio de Deuda - Mayo', 'success',
'Destacamos que tu EBITDA de este mes de mayo cubre magistralmente tus obligaciones de capital e intereses, superando ampliamente tu desempeÒo histÛrico de abriles y mayos de aÒos anteriores fiscales. Esta solidez demuestra que tu estrategia de enfocarte en proyectos de alto margen y recaudo r·pido est· pagando dividendos reales para tu tranquilidad corporativa.',
'A pesar de la fortaleza, el mes de mayo suele traer consigo ajustes salariales o bonificaciones trimestrales que podrÌan estresar tu tesorerÌa operativa de forma puntual si no mantienes un fondo de maniobra amplio hoy. No permitas que la comodidad de los n˙meros pasados te quite la agilidad necesaria para responder a cierres comerciales imprevistos este mes.',
'Crea un fondo de reserva de caja equivalente a seis meses de servicio de deuda utilizando tus actuales excedentes de utilidad de este mes de mayo de forma estratÈgica y muy profesional. Te recomendamos mantener este ratio por encima de las tres punto cinco veces de forma constante, blindando la calificaciÛn crediticia de tu organizaciÛn nacional.',
'An·lisis Interanual Mensual - Lote 4/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [28: Deuda Neta / EBITDA - Mayo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M5', 'DEUDA_EBITDA_M5', '[Analisis Interanual] Deuda Neta / EBITDA - Mayo', 'success',
'Has logrado situar tu relaciÛn deuda sobre utilidad operativa operativa en niveles de seguridad total este mes de mayo, demostrando una consistencia envidiable en tu generaciÛn de valor corporativo propio. Est·s en la posiciÛn soÒada por cualquier empresario pyme: un negocio altamente rentable con una carga de pasivos insignificante frente a su facturaciÛn neta actual.',
'El desafÌo es evitar que tu equipo comercial se relaje en las negociaciones de m·rgenes, pensando que la empresa ya tiene el Èxito econÛmico asegurado de forma permanente por su bajo endeudamiento. La falta de presiÛn financiera de pago debe ser compensada con una presiÛn interna por la excelencia tÈcnica para no perder competitividad real regional este aÒo.',
'EnfÛcate en buscar contratos de largo plazo que incrementen tu EBITDA recurrente este semestre, aprovechando tu actual solidez para ofrecer garantÌas de cumplimiento inigualables en el mercado nacional hoy. Te sugerimos mantener este indicador por debajo del cero punto cinco veces, blindando asÌ tu empresa ante cualquier cambio inesperado de entorno.',
'An·lisis Interanual Mensual - Lote 4/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [29: Endeudamiento Total - Mayo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M5', 'ENDEUDAMIENTO_TOTAL_M5', '[Analisis Interanual] Endeudamiento Total - Mayo', 'success',
'Tu balance general de este mes de mayo muestra un nivel de propiedad de los socios sobre los activos que es ejemplar para el sector de la consultorÌa estratÈgica nacional colombiana. Has recuperado el control total de tu destino financiero, lo que te permite negociar de t˙ a t˙ con cualquier proveedor o banco sin la presiÛn de la iliquidez pasada hoy.',
'Observamos que todavÌa mantienes una pequeÒa parte de tus pasivos con entidades del estado que podrÌan ser liquidados de forma prioritaria para evitar cualquier contingencia legal o administrativa futura. No permitas que deudas pequeÒas ensucien la impecable imagen que has construido durante estos doce meses de disciplina y recuperaciÛn financiera total corporativa.',
'Aprovecha este excelente momento de caja para certificar tus estados financieros con una firma reconocida y presentar tu bajo endeudamiento como una garantÌa de solidez absoluta ante el mercado. Te sugerimos que inicies el segundo semestre con una meta de endeudamiento del quince por ciento, blindando definitivamente tu balance estratÈgico actual.',
'An·lisis Interanual Mensual - Lote 4/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [30: Solvencia Patrimonial - Mayo]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M5', 'SOLVENCIA_PATRIMONIAL_M5', '[Analisis Interanual] Solvencia Patrimonial - Mayo', 'success',
'Tu solvencia patrimonial este mes de mayo refleja una solidez que ya es un est·ndar de oro para tu compaÒÌa, alej·ndote totalmente de cualquier riesgo de fragilidad tÈcnica o contable. Est·s construyendo un patrimonio neto real que te da un valor de mercado excepcional y te permite planear inversiones propias de gran envergadura estratÈgica hoy mismo.',
'Sin embargo, al ser un negocio basado en talento humano experto, tu patrimonio neto sigue siendo vulnerable si no diversificas tus fuentes de ingreso operativos y tus activos de respaldo tangibles ahora. El reto para el prÛximo ejercicio es seguir elevando este ratio hasta que el patrimonio represente el sesenta por ciento de todo lo que tu corporaciÛn posee.',
'RetÈn al menos el setenta por ciento de las utilidades operativas de este mes de mayo para convertirlas en capital propio crecido dentro de tu balance comercial este mismo semestre fiscal. Te sugerimos que planees una polÌtica de dividendos prudente que no descapitalice la firma y que asegure tu crecimiento patrimonial ininterrumpido a largo plazo.',
'An·lisis Interanual Mensual - Lote 4/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- JUNIO (M6) - INICIO AN¡LISIS INTERANUAL
-- ============================================================================

-- [31: Cobertura de Cargos Fijos - Junio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M6', 'CARGOS_FIJOS_M6', '[Analisis Interanual] Cargos Fijos - Junio', 'success',
'Cierras este primer semestre fiscal con una cobertura de cargos fijos en junio que ha sido impecable y sostenida, superando el promedio histÛrico de tus ˙ltimos tres aÒos para este mismo mes. Has demostrado que tu disciplina operativa no es un evento fortuito, sino una polÌtica administrativa arraigada que garantiza tu rentabilidad neta mes a mes.',
'Cuidado con la relajaciÛn operativa que suele acompaÒar los cierres de semestre, permitiendo que crezcan los gastos de representaciÛn o de viajes de consultorÌa sin un retorno comercial claro actualmente. MantÈn la mÌstica de austeridad inteligente incluso en los momentos de mayor liquidez de caja para que tu cobertura de junio sea el piso de tu meta del prÛximo aÒo.',
'Establece un presupuesto de gastos fijos inamovible para el tercer trimestre que sea igual al promedio ejecutado exitosamente durante este gran primer semestre de dos mil veinticinco hoy. Te recomendamos que cualquier nuevo gasto recurrente sea justificado exclusivamente por un aumento comprobable en la facturaciÛn neta de tus proyectos de consultorÌa activos.',
'An·lisis Interanual Mensual - Lote 4/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [32: Cobertura de Intereses - Junio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M6', 'INTERESES_M6', '[Analisis Interanual] Cobertura de Intereses - Junio', 'success',
'Tu capacidad de cubrir intereses este mes de junio es magistral, cerrando la primera mitad del aÒo con una solidez financiera inexpugnable ante cualquier acreedor nacional o internacional hoy. Tener una cobertura superior a sesenta veces es un indicador de que el costo de tus deudas ya no es un factor determinante en tu toma de decisiones estratÈgicas diarias.',
'Aseg˙rate de que est·s utilizando tu excedente de flujo de caja de este mes de junio para prepagar las ˙ltimas cuotas de capital de tus obligaciones bancarias de corto plazo aceleradamente hoy. Eliminar totalmente la carga financiera te permitir· proyectar un segundo semestre con una rentabilidad neta libre de compromisos, maximizando el valor de tu firma.',
'Negocia tasas preferenciales de inversiÛn para tu flujo de caja excedente de cierre de semestre en instrumentos de bajo riesgo que generen rendimientos superiores a la inflaciÛn nacional este mes. Te sugerimos que mantengas tu perfil de riesgo conservador, pero buscando activamente que tu dinero trabaje para ti mientras sigues entregando excelencia tÈcnica senior.',
'An·lisis Interanual Mensual - Lote 4/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ============================================================================
-- JUNIO (M6) - CONTINUACI”N AN¡LISIS INTERANUAL
-- ============================================================================

-- [33: Servicio de Deuda - Junio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M6', 'SERVICIO_DEUDA_M6', '[Analisis Interanual] Servicio de Deuda - Junio', 'success',
'Has concluido la primera mitad del aÒo con una cobertura del servicio de la deuda en junio que supera el promedio histÛrico de tus ˙ltimos tres aÒos fiscales para este mismo mes estacional. Tu EBITDA actual demuestra tener la fuerza necesaria para honrar todas tus obligaciones bancarias sin comprometer ni un solo centavo de tu inversiÛn en calidad tÈcnica corporativa hoy.',
'No obstante, el cierre de semestre suele exigir pagos de primas y bonificaciones que coinciden con tus cuotas financieras mensuales, lo que requiere una coordinaciÛn de tesorerÌa perfecta para no estresar tu liquidez inmediata este mes. Aseg˙rate de que tu programaciÛn de recaudos de cartera de junio se cumpla al cien por ciento para mantener este ratio en la cima informativa actual.',
'Establece un fondo de amortizaciÛn autom·tica para tus deudas del segundo semestre utilizando los excedentes de los proyectos que est·s entregando con Èxito este mismo mes de junio hoy. Te recomendamos que tu cobertura de servicio de deuda no baje de las cuatro veces, garantizando asÌ un blindaje absoluto para tu calificaciÛn de riesgo crediticio institucional nacional.',
'An·lisis Interanual Mensual - Lote 5/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [34: Deuda Neta / EBITDA - Junio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M6', 'DEUDA_EBITDA_M6', '[Analisis Interanual] Deuda Neta / EBITDA - Junio', 'success',
'Tu relaciÛn deuda sobre utilidad operativa neta en este cierre de semestre es una de las m·s bajas y seguras del mercado de consultorÌa tÈcnica especializada actualmente este mes de junio. Est·s operando con un nivel de pasivo bancario casi nulo respecto a tu gran capacidad de generaciÛn de ingresos operativos, lo que te otorga una soberanÌa gerencial absoluta hoy.',
'El ˙nico riesgo latente es permitir que la ausencia de presiÛn de pago bancaria derive en una relajaciÛn de la gestiÛn del margen EBITDA por proyecto en tu equipo comercial senior este mes. La eficiencia que te trajo a esta posiciÛn de fuerza debe seguir siendo el ADN de tu organizaciÛn estratÈgica para que este ratio se mantenga en la excelencia total anual.',
'Incrementa tu margen EBITDA mediante la optimizaciÛn de procesos de an·lisis automatizados que reduzcan el tiempo de entrega de tus proyectos sin sacrificar su alta calidad tÈcnica este semestre hoy. Te sugerimos mantener este indicador por debajo del cero punto cinco, blindando asÌ tu empresa ante cualquier cambio inesperado en el entorno econÛmico nacional colombiano.',
'An·lisis Interanual Mensual - Lote 5/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [35: Endeudamiento Total - Junio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M6', 'ENDEUDAMIENTO_TOTAL_M6', '[Analisis Interanual] Endeudamiento Total - Junio', 'success',
'Al cierre de este mes de junio, tu balance muestra un nivel de endeudamiento total excepcionalmente bajo, situ·ndose muy por debajo del promedio histÛrico de tus ˙ltimos tres aÒos para este mismo periodo. Has logrado que los socios propios sean dueÒos reales de la vasta mayorÌa de tus activos corporativos, lo que te otorga una independencia gerencial absoluta hoy.',
'La ˙nica vigilancia que debes mantener es no permitir que esta holgura patrimonial derive en una desatenciÛn a las oportunidades de apalancamiento estratÈgico para inversiones en infraestructura tecnolÛgica avanzada este semestre. Tener un endeudamiento tan bajo podrÌa indicar una aversiÛn al riesgo excesiva que frene tu expansiÛn regional durante el prÛximo trimestre fiscal.',
'Eval˙a la toma de financiamiento de largo plazo exclusivo para la adquisiciÛn de nuevas plataformas de an·lisis masivo ahora que tu calificaciÛn crediticia es la mejor de tu historia corporativa hoy mismo. Te recomendamos que tu meta de endeudamiento estructural sea inferior al veinte por ciento, consolidando a tu firma como un bastiÛn de seguridad econÛmica nacional definitiva.',
'An·lisis Interanual Mensual - Lote 5/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [36: Solvencia Patrimonial - Junio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M6', 'SOLVENCIA_PATRIMONIAL_M6', '[Analisis Interanual] Solvencia Patrimonial - Junio', 'success',
'Has concluido el primer semestre con una solvencia patrimonial en junio que es un testimonio de tu disciplina para la retenciÛn de utilidades y la reinversiÛn estratÈgica en el negocio de consultorÌa. Est·s operando con un capital propio robusto que te blinda totalmente ante cualquier crisis de liquidez imprevista en el mercado nacional colombiano actualmente este mes.',
'Cuidado con la tentaciÛn de decretar dividendos excesivos basados ˙nicamente en los excelentes resultados acumulados de este cierre de semestre sin considerar tus planes de expansiÛn para el resto del aÒo. El patrimonio neto contable debe seguir creciendo para asegurar que tu valoraciÛn comercial sea siempre creciente y muy competitiva ante clientes de gran escala hoy.',
'Capitaliza al menos el setenta por ciento de tus utilidades operativas de este mes de junio para fortalecer tu capital social legal de forma permanente en tus estados financieros oficiales este semestre. Te recomendamos que tu meta de solvencia patrimonial alcance el sesenta por ciento para finales del ejercicio, garantizando asÌ un futuro institucional inexpugnable.',
'An·lisis Interanual Mensual - Lote 5/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- JULIO (M7) - INICIO AN¡LISIS INTERANUAL
-- ============================================================================

-- [37: Cobertura de Cargos Fijos - Julio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M7', 'CARGOS_FIJOS_M7', '[Analisis Interanual] Cargos Fijos - Julio', 'success',
'Inicias el segundo semestre con una cobertura de cargos fijos en julio que supera el promedio histÛrico de tus ˙ltimos tres aÒos para este mismo mes estacional, confirmando tu solidez. Has demostrado que tu disciplina operativa para mantener los costos administrativos bajo control es la clave para navegar cualquier estacionalidad de la facturaciÛn de servicios consultores hoy.',
'No obstante, el inicio de semestre suele traer consigo revisiones de contratos de servicios y alquileres que podrÌan presionar levemente tu indicador si no mantienes una vigilancia activa sobre tu presupuesto. No permitas que la comodidad de un balance sano te lleve a relajar los controles de auditorÌa interna sobre cada factura recurrente menor de este trimestre.',
'Realiza una revisiÛn tÈcnica detallada de tus suscripciones de software este mes de julio para asegurar que est·s obteniendo el m·ximo retorno productivo por cada peso invertido en cargos fijos hoy. Te recomendamos mantener tu ratio de cobertura por encima de las once veces, asegurando asÌ una utilidad neta operativa muy saludable para tus socios corporativos.',
'An·lisis Interanual Mensual - Lote 5/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [38: Cobertura de Intereses - Julio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M7', 'INTERESES_M7', '[Analisis Interanual] Cobertura de Intereses - Julio', 'success',
'Tu solvencia para cubrir intereses en este mes de julio sigue siendo estelar, reflejando una salud financiera de acero que te sit˙a en la Èlite de las empresas prestadoras de servicios de consultorÌa. Est·s operando con un nivel de madurez econÛmica que te permite gestionar el costo del dinero como una variable insignificante en tu planeaciÛn estratÈgica de fin de aÒo.',
'El riesgo es caer en la autocomplacencia por la ausencia de deuda bancaria pesada, descuidando la b˙squeda de nuevas lÌneas de crÈdito estratÈgico que podrÌan potenciar tu expansiÛn en este semestre. Tener tanta cobertura actual podrÌa indicar que tienes capital ocioso que deberÌa estar trabajando para generar m·s valor real tangible para la firma hoy mismo en el mercado.',
'Eval˙a agresivamente la toma de financiamiento para la adquisiciÛn de nuevos activos digitales ahora que tu perfil de riesgo es de excelencia total ante todos los bancos nacionales de fomento hoy. Te sugerimos que mantengas tu polÌtica de desapalancamiento operativo, pero buscando activamente que tu dinero genere un retorno superior al simple cubrimiento de intereses.',
'An·lisis Interanual Mensual - Lote 5/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [39: Servicio de Deuda - Julio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M7', 'SERVICIO_DEUDA_M7', '[Analisis Interanual] Servicio de Deuda - Julio', 'success',
'Has iniciado el segundo periodo del aÒo con una cobertura del servicio de la deuda en julio que supera ampliamente el promedio histÛrico de tus abriles y julios de aÒos anteriores registrados. Tu EBITDA actual es hoy un escudo financiero que garantiza el pago puntual de todas tus obligaciones sin estresar en lo m·s mÌnimo tu flujo de maniobra corporativa diaria.',
'Aunque la fortaleza es evidente, el inicio del tercer trimestre suele requerir una inyecciÛn mayor de capital de trabajo para arrancar los proyectos nuevos contratados durante el cierre semestral de junio. Asegura una coordinaciÛn milimÈtrica de tu tesorerÌa de este mes para evitar cualquier presiÛn puntual de caja que opaque tu impecable historial de pagos actual.',
'Crea un fondo de reserva de liquidez exclusivo para las amortizaciones bancarias del cierre de aÒo utilizando tus excedentes de utilidad de este mes de julio de forma estratÈgica hoy mismo. Te recomendamos que tu cobertura de servicio de deuda se mantenga siempre por encima de las cuatro veces, blindando definitivamente tu calificaciÛn institucional nacional.',
'An·lisis Interanual Mensual - Lote 5/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [40: Deuda Neta / EBITDA - Julio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M7', 'DEUDA_EBITDA_M7', '[Analisis Interanual] Deuda Neta / EBITDA - Julio', 'success',
'Tu relaciÛn entre la deuda bancaria remanente y tu generaciÛn de utilidad operativa en julio es una de las m·s seguras y eficientes de todo el sector de la consultorÌa tÈcnica nacional. Est·s operando con un nivel de pasivos bancarios nulo respecto a tu gran capacidad de generaciÛn de caja propia, lo que te devuelve una soberanÌa gerencial inexpugnable este semestre.',
'El desafÌo gerencial es evitar que la ausencia de deuda bancaria derive en una relajaciÛn de la mÌstica de eficiencia en la ejecuciÛn de tus proyectos senior actuales durante este trimestre. No te dejes confiar por los buenos resultados pasados y mantÈn siempre una mirada crÌtica sobre tus m·rgenes de contribuciÛn marginal en cada nuevo contrato que firmes hoy.',
'EnfÛcate en automatizar procesos internos que eleven a˙n m·s tu margen EBITDA por encima del treinta por ciento de forma sostenida durante esta segunda mitad del aÒo fiscal dos mil veinticinco. Te sugerimos mantener este indicador cerca del cero punto cinco veces, garantizando asÌ un blindaje absoluto para tu empresa ante cualquier cambio inesperado.',
'An·lisis Interanual Mensual - Lote 5/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ============================================================================
-- JULIO (M7) - CONTINUACI√ìN AN√ÅLISIS INTERANUAL
-- ============================================================================

-- [41: Endeudamiento Total - Julio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M7', 'ENDEUDAMIENTO_TOTAL_M7', '[Analisis Interanual] Endeudamiento Total - Julio', 'success',
'Has iniciado esta segunda mitad del a√±o con un nivel de endeudamiento total en julio que es un ejemplo de saneamiento financiero para todo el sector de consultor√≠a nacional. Haber logrado que tus pasivos totales sean apenas una fracci√≥n de lo que sol√≠an ser en abriles y julios de a√±os pasados es la mayor garant√≠a de tu soberan√≠a econ√≥mica hoy.',
'No obstante, observamos que todav√≠a mantienes una peque√±a porci√≥n de pasivos con socios que podr√≠an ser capitalizados formalmente para mejorar a√∫n m√°s tu ratio de solvencia ante el sector bancario este trimestre. No dejes que compromisos internos empa√±en la visi√≥n de solidez absoluta que has construido con tanta disciplina financiera durante este a√±o.',
'Capitaliza los pr√©stamos de socios antes de finalizar el tercer trimestre comercial para presentar un balance a√∫n m√°s robusto ante tus clientes corporativos de mayor envergadura hoy mismo. Te recomendamos que tu meta de endeudamiento estructural sea inferior al quince por ciento, blindando definitivamente tu patrimonio neto institucional regional.',
'An√°lisis Interanual Mensual - Lote 6/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [42: Solvencia Patrimonial - Julio]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M7', 'SOLVENCIA_PATRIMONIAL_M7', '[Analisis Interanual] Solvencia Patrimonial - Julio', 'success',
'Tu solvencia patrimonial este mes de julio refleja una fortaleza institucional que ya es tu mayor activo estrat√©gico frente a la competencia del mercado de servicios t√©cnicos especializados hoy. Est√°s operando con un capital propio que respalda m√°s de la mitad de tu operaci√≥n, lo que te otorga una independencia gerencial inigualable actualmente.',
'Cuidado con la tentaci√≥n de diversificar el riesgo patrimonial en inversiones personales de los socios que descapitalicen la firma durante este periodo de bonanza de flujo de caja semestral hoy. El patrimonio neto contable debe seguir siendo tu principal prioridad de crecimiento para asegurar una valoraci√≥n de mercado premium para tu marca este a√±o.',
'Ret√©n al menos el setenta por ciento de tus utilidades operativas de este mes de julio para seguir alimentando tu solvencia patrimonial de forma ininterrumpida este tercer trimestre fiscal hoy. Te sugerimos que tu meta de solvencia alcance el sesenta y cinco por ciento para el cierre del ejercicio, blindando tu futuro institucional nacional definitivamente.',
'An√°lisis Interanual Mensual - Lote 6/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- AGOSTO (M8) - AN√ÅLISIS INTERANUAL COMPLETO
-- ============================================================================

-- [43: Cobertura de Cargos Fijos - Agosto]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M8', 'CARGOS_FIJOS_M8', '[Analisis Interanual] Cargos Fijos - Agosto', 'success',
'Has mantenido una trayectoria de eficiencia operativa impecable durante este mes de agosto, superando ampliamente el promedio de tus √∫ltimos tres abriles y agostos registrados hist√≥ricamente hoy. Tu capacidad para absorber los costos fijos de n√≥mina t√©cnica y oficina con tus ingresos recurrentes es el pilar que sostiene tu actual rentabilidad neta extraordinaria.',
'Observamos que el gasto en servicios de marketing y representaci√≥n ha tenido un ligero aumento este mes de agosto, reflejando quiz√°s tu mayor agresividad comercial para el cierre del a√±o. No permitas que estos costos "variables-fijos" se vuelvan incontrolables, manteniendo siempre una auditor√≠a directa sobre el retorno real de cada inversi√≥n publicitaria este mes.',
'Establece un presupuesto de gastos fijos inamovible para el resto de este trimestre que no exceda el promedio exitoso ejecutado durante el primer semestre de este a√±o dos mil veinticinco. Te recomendamos mantener tu cobertura por encima de las once veces, garantizando as√≠ un flujo de caja libre muy robusto para tus planes de expansi√≥n futura.',
'An√°lisis Interanual Mensual - Lote 6/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [44: Cobertura de Intereses - Agosto]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M8', 'INTERESES_M8', '[Analisis Interanual] Cobertura de Intereses - Agosto', 'success',
'Tu solvencia para cubrir intereses en este mes de agosto sigue siendo estelar, reflejando una salud financiera de acero que te aleja de cualquier riesgo de asfixia bancaria o de pasivos hoy. Est√°s en la posici√≥n ideal para manejar tus pocos compromisos financieros remanentes como un tr√°mite administrativo menor y no como una presi√≥n econ√≥mica gerencial corporativa.',
'El desaf√≠o es no caer en la inacci√≥n por la ausencia de presi√≥n de pago, descuidando la b√∫squeda de nuevas l√≠neas de cr√©dito estrat√©gicas que operen a tasas preferenciales este semestre fiscal. Nota que tener tanta cobertura podr√≠a indicar que no est√°s aprovechando tu gran perfil crediticio para apalancarte y acelerar tus metas de ventas nacionales actuales este mes.',
'Negocia con tu banca principal una reducci√≥n adicional de tasas para tus cupos de cr√©dito revolvente ahora que tus n√∫meros de agosto son impecables y de bajo riesgo total hoy. Te sugerimos que sigas usando tus excedentes para autofinanciar la operaci√≥n diaria, pero manteniendo l√≠neas de cr√©dito abiertas como una reserva de oportunidad estrat√©gica semestral.',
'An√°lisis Interanual Mensual - Lote 6/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [45: Servicio de Deuda - Agosto]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M8', 'SERVICIO_DEUDA_M8', '[Analisis Interanual] Servicio de Deuda - Agosto', 'success',
'Has logrado una cobertura del servicio de la deuda en agosto que supera con creces el promedio hist√≥rico de tus √∫ltimos veinticuatro meses fiscales registrados para este mismo periodo hoy. Tu EBITDA actual es hoy un basti√≥n de seguridad que garantiza el pago puntual de todas tus obligaciones sin estresar lo m√°s m√≠nimo tu tesorer√≠a operativa corporativa nacional.',
'Incluso con este gran resultado, recuerda que el mes de agosto suele ser el pre√°mbulo de mayores exigencias de capital para proyectos que se ejecutan en el √∫ltimo trimestre del a√±o fiscal. Asegura una coordinaci√≥n milim√©trica de tus recaudos de cartera de este mes para evitar cualquier presi√≥n puntual de caja que opaque tu impecable historial de pagos actual.',
'Crea un fondo de reserva de liquidez equivalente a tres meses de servicio de deuda utilizando tus actuales excedentes de utilidad de este mes de agosto de forma estrat√©gica. Te recomendamos que tu cobertura de servicio de deuda no baje de las cuatro veces de forma sostenida, blindando el prestigio financiero institucional de tu firma consultora experta hoy.',
'An√°lisis Interanual Mensual - Lote 6/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [46: Deuda Neta / EBITDA - Agosto]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M8', 'DEUDA_EBITDA_M8', '[Analisis Interanual] Deuda Neta / EBITDA - Agosto', 'success',
'Tu relaci√≥n deuda neta sobre utilidad operativa en este mes de agosto es simplemente envidiable, situ√°ndote entre las pymes m√°s solventes y eficientes del mercado de consultor√≠a hoy. Est√°s operando con un nivel de pasivos financieros casi nulo respecto a tu gran generaci√≥n de flujo de caja libre propio, lo que te devuelve una autonom√≠a gerencial total inigualable.',
'El riesgo oculto es permitir que la ausencia de deuda bancaria derive en una complacencia que afecte el ritmo de crecimiento de tus ventas de proyectos senior este semestre fiscal. Recuerda que una deuda estrat√©gica bien manejada puede ser el motor para duplicar tu capacidad t√©cnica y humana si se utiliza para captar talento de primer nivel regional hoy.',
'Eval√∫a para el pr√≥ximo mes de septiembre la toma de un cr√©dito de fomento exclusivo para la modernizaci√≥n de tus activos tecnol√≥gicos ahora que tu balance es inmejorable hoy d√Øa. Te sugerimos mantener este indicador por debajo del cero punto cinco veces, blindando as√≠ tu empresa ante cualquier cambio inesperado en el entorno econ√≥mico nacional colombiano.',
'An√°lisis Interanual Mensual - Lote 6/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [47: Endeudamiento Total - Agosto]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M8', 'ENDEUDAMIENTO_TOTAL_M8', '[Analisis Interanual] Endeudamiento Total - Agosto', 'success',
'Tu balance general en este mes de agosto muestra un nivel de propiedad de los socios sobre los activos que es ejemplar para el sector de la consultor√≠a estrat√©gica nacional colombiana. Has logrado reducir tus pasivos totales a niveles m√≠nimos hist√≥ricos, lo que te permite respirar y planear inversiones de largo plazo con una libertad absoluta ahora mismo hoy.',
'Notamos que todav√≠a mantienes una peque√±a porci√≥n de tus deudas operativas con proveedores de soporte digital que podr√≠an ser refinanciadas o liquidadas de contado aceleradamente este mes. No permitas que pasivos residuales nublen la visi√≥n de solidez total que has construido con tanto esfuerzo y disciplina durante estos √∫ltimos dieciocho meses fiscales.',
'Busca cerrar nuevos contratos de consultor√≠a de largo plazo que te inyecten flujo de caja fresco para liquidar el total de tus pasivos financieros remanentes antes de octubre hoy. Te recomendamos que tu meta de endeudamiento estructural sea inferior al diez por ciento, convirtiendo a tu firma en un basti√≥n de independencia econ√≥mica definitiva regional.',
'An√°lisis Interanual Mensual - Lote 6/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [48: Solvencia Patrimonial - Agosto]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M8', 'SOLVENCIA_PATRIMONIAL_M8', '[Analisis Interanual] Solvencia Patrimonial - Agosto', 'success',
'Has iniciado este mes de agosto con una solvencia patrimonial que confirma la transformaci√≥n exitosa de tu balance hacia un modelo de acumulaci√≥n de riqueza corporativa real y tangible. Tu patrimonio neto contable ya no es solo una cifra t√©cnica de libros, sino que se ha convertido en el respaldo innegable de todas tus operaciones comerciales senior hoy.',
'Recuerda que ante una eventual inflaci√≥n acelerada en los costos de talento humano senior, tu patrimonio neto real podr√≠a verse afectado si no actualizas oportunamente tus tarifas hoy. El reto es asegurar que tu crecimiento patrimonial sea siempre superior al crecimiento de tus costos de vida corporativos mensuales durante todo el resto de este a√±o fiscal.',
'Revisa tus tarifas de proyectos de consultor√≠a para este segundo semestre para asegurar que el margen de contribuci√≥n siga alimentando tu solvencia patrimonial mensualmente hoy mismo. Te sugerimos que tu meta de solvencia patrimonial alcance el sesenta por ciento antes de finalizar el a√±o, blindando institucionalmente tu futuro ante socios y clientes.',
'An√°lisis Interanual Mensual - Lote 6/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- ============================================================================
-- SEPTIEMBRE (M9) - AN√ÅLISIS INTERANUAL COMPLETO
-- ============================================================================

-- [49: Cobertura de Cargos Fijos - Septiembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M9', 'CARGOS_FIJOS_M9', '[Analisis Interanual] Cargos Fijos - Septiembre', 'success',
'Has mantenido una trayectoria de eficiencia operativa impecable durante este mes de septiembre, superando el promedio hist√≥rico de tus coberturas fijas de los √∫ltimos tres abriles y septiembres registrados. Tu disciplina para no dejar que los gastos administrativos crezcan desmedidamente es el pilar que sostiene tu actual rentabilidad neta extraordinaria hoy.',
'No obstante, notamos un leve repunte en el costo de tus servicios de soporte t√©cnico especializado externo este mes de septiembre, reflejando quiz√°s ajustes de precios de tus proveedores clave anuales. No permitas que estas variaciones "hormiga" erosionen tu margen EBITDA, manteniendo siempre una vigilancia activa sobre cada factura recurrente hoy.',
'Realiza una revisi√≥n t√©cnica detallada de tus contratos de infraestructura digital este trimestre para asegurar que est√°s pagando lo justo por los servicios que realmente utilizas cada mes. Te recomendamos que tu cobertura de cargos fijos no baje de las diez veces, garantizando as√≠ un flujo de caja libre muy robusto para tus planes estrat√©gicos.',
'An√°lisis Interanual Mensual - Lote 7/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [50: Cobertura de Intereses - Septiembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M9', 'INTERESES_M9', '[Analisis Interanual] Cobertura de Intereses - Septiembre', 'success',
'Tu solvencia para cubrir intereses en este mes de septiembre sigue siendo estelar, reflejando una salud financiera de acero que te aleja totalmente de cualquier riesgo de asfixia bancaria o de liquidez. Haber reducido tu exposici√≥n a cr√©ditos de corto plazo durante el a√±o pasado ha sido la base maestra que hoy te permite gestionar tu consultor√≠a con plena libertad.',
'El reto ahora es no caer en la inacci√≥n por la falta de presi√≥n financiera externa en tus flujos de caja operativos mensuales de este segundo semestre del a√±o dos mil veinticinco. Tener tanta cobertura podr√≠a indicar que tienes capital ocioso que deber√≠a estar siendo invertido en mercadeo senior o ventas para potenciar a√∫n m√°s tu captaci√≥n de clientes hoy.',
'Invierte parte de tu excedente de utilidad de septiembre en campa√±as de posicionamiento de marca senior para asegurar que tu flujo de EBITDA se mantenga creciente a largo plazo esta temporada. Te sugerimos que busques asesor√≠a para optimizar el rendimiento de tu liquidez inmediata, logrando que tu dinero genere valor m√°s all√° de cubrir intereses bancarios.',
'An√°lisis Interanual Mensual - Lote 7/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [51: Servicio de Deuda - Septiembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M9', 'SERVICIO_DEUDA_M9', '[Analisis Interanual] Servicio de Deuda - Septiembre', 'success',
'Has logrado consolidar tu capacidad de pago este mes de septiembre, situ√°ndote muy por encima de tu promedio hist√≥rico de los √∫ltimos dos a√±os fiscales para este mismo periodo estacional senior. Esta noticia es excelente, ya que demuestra que tu EBITDA actual tiene la fuerza suficiente para honrar capital e intereses sin comprometer tu operaci√≥n diaria nacional hoy.',
'Sin embargo, notamos que tu cobertura en este septiembre es ligeramente inferior a la proyectada inicialmente debido a un aumento puntual en los costos de subcontrataci√≥n t√©cnica para cierres de proyectos. No permitas que estas desviaciones se vuelvan la norma operativa, manteniendo siempre una vigilancia milim√©trica sobre la eficiencia de cada consultor senior este mes.',
'Destina una parte de tu flujo de caja de este mes a la amortizaci√≥n acelerada de tus deudas comerciales remanentes para liberar a√∫n m√°s tu capacidad de servicio de la deuda hoy mismo. Te recomendamos mantener este ratio por encima de las tres punto cinco veces para garantizar un blindaje absoluto ante cualquier fluctuaci√≥n imprevista de mercado.',
'An√°lisis Interanual Mensual - Lote 7/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [52: Deuda Neta / EBITDA - Septiembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M9', 'DEUDA_EBITDA_M9', '[Analisis Interanual] Deuda Neta / EBITDA - Septiembre', 'success',
'Tu relaci√≥n entre deuda bancaria y utilidad operativa este mes de septiembre es una de las m√°s bajas de tu historia corporativa reciente, reflejando una salud financiera de muy alto nivel. Est√°s operando con un apalancamiento insignificante respecto a tu capacidad de generaci√≥n de caja corporativa, lo que te devuelve el mando total sobre tus decisiones hoy.',
'A pesar de este gran resultado, recuerda que el promedio hist√≥rico de tus septiembres suele mostrar una mayor volatilidad en la facturaci√≥n de servicios de consultor√≠a t√©cnica especializada actual. No te dejes seducir por la tranquilidad presente y mant√©n tus costos indirectos de ventas bajo un control estricto para que este ratio no pierda su brillantez este a√±o.',
'Eval√∫a la posibilidad de negociar nuevas l√≠neas de cr√©dito preferenciales ahora que tu balance es impecable y tu ratio de deuda sobre EBITDA es inmejorable ante cualquier evaluador externo hoy. Te sugerimos que sigas usando tus excedentes para autofinanciar la totalidad de tus nuevos contratos de implementaci√≥n tecnol√≥gica de este semestre final del ejercicio.',
'An√°lisis Interanual Mensual - Lote 7/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [53: Endeudamiento Total - Septiembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M9', 'ENDEUDAMIENTO_TOTAL_M9', '[Analisis Interanual] Endeudamiento Total - Septiembre', 'success',
'Has mantenido una trayectoria de desapalancamiento ejemplar durante este mes de septiembre, logrando que tu patrimonio propio sea el verdadero pulm√≥n de toda tu operaci√≥n consultora nacional senior. Haber logrado que tus deudas totales sean marginales frente a tus activos corporativos es el mayor logro de tu gesti√≥n financiera de los √∫ltimos veinticuatro meses hoy.',
'Notamos que todav√≠a mantienes una peque√±a concentraci√≥n de pasivos operativos con proveedores de infraestructura tecnol√≥gica que podr√≠an ser renegociados para obtener mejores plazos finales actualmente hoy. No permitas que cuentas peque√±as generen ruidos en tu balance consolidado, manteniendo siempre una imagen de transparencia y puntualidad absoluta en todos tus pagos mensuales.',
'Establece una meta de endeudamiento total inferior al quince por ciento para el cierre del presente trimestre fiscal, blindando definitivamente tu balance estrat√©gico ante terceros e inversores hoy. Te recomendamos que sigas capitalizando tus utilidades operativas mensualmente para fortalecer el respaldo institucional de tu firma consultora experta en el territorio nacional.',
'An√°lisis Interanual Mensual - Lote 7/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [54: Solvencia Patrimonial - Septiembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M9', 'SOLVENCIA_PATRIMONIAL_M9', '[Analisis Interanual] Solvencia Patrimonial - Septiembre', 'success',
'Tu solvencia patrimonial este mes de septiembre refleja una solidez que ya es un est√°ndar consolidado para tu compa√±√≠a, alej√°ndote totalmente de cualquier riesgo de fragilidad institucional. Est√°s construyendo un legado de valor real para tus socios, donde cada peso de activo est√° respaldado mayoritariamente por capital propio generado leg√≠timamente este a√±o hoy.',
'Sin embargo, recuerda que el sector de la consultor√≠a t√©cnica exige una renovaci√≥n constante de activos intangibles y talento que no siempre aparecen reflejados con su valor real comercial actual. El reto es asegurar que tu solvencia patrimonial contable sea un reflejo fiel de tu fortaleza tecnol√≥gica y humana operativa durante este cierre de trimestre hoy.',
'Asigna una reserva patrimonial espec√≠fica para la investigaci√≥n y desarrollo de nuevas metodolog√≠as de an√°lisis que mantengan tu competitividad al tope del mercado nacional actualmente hoy. Te sugerimos que tu ratio de solvencia siga creciendo hasta alcanzar el sesenta por ciento del valor total de tu empresa consultora ante terceros e inversionistas regionales.',
'An√°lisis Interanual Mensual - Lote 7/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- OCTUBRE (M10) - INICIO AN√ÅLISIS INTERANUAL
-- ============================================================================

-- [55: Cobertura de Cargos Fijos - Octubre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M10', 'CARGOS_FIJOS_M10', '[Analisis Interanual] Cargos Fijos - Octubre', 'success',
'Has iniciado el √∫ltimo trimestre del a√±o con una cobertura de cargos fijos en octubre que se mantiene en niveles de excelencia, superando ampliamente tu desempe√±o hist√≥rico de abriles pasados. Has demostrado que tu modelo de consultor√≠a es altamente escalable, permiti√©ndote facturar mucho m√°s sin inflar tu base de costos administrativos o de n√≥mina fija hoy.',
'Observamos que el gasto en servicios de nube y mantenimiento digital ha tenido un ligero aumento este mes de octubre, reflejando la mayor intensidad operativa de tus proyectos de cierre de a√±o. No permitas que estos costos se vuelvan incontrolables, manteniendo una auditor√≠a directa sobre cada nueva licencia de software o usuario senior contratado hoy mismo.',
'Establece un l√≠mite de gasto operativo inamovible para este cierre de ejercicio que no exceda el promedio exitoso que has mantenido durante todo este gran a√±o dos mil veinticinco actualmente. Te recomendamos mantener tu ratio de cobertura por encima de las once veces, asegurando as√≠ una utilidad neta operativa muy saludable para todos los socios corporativos hoy.',
'An√°lisis Interanual Mensual - Lote 7/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [56: Cobertura de Intereses - Octubre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M10', 'INTERESES_M10', '[Analisis Interanual] Cobertura de Intereses - Octubre', 'success',
'Tu capacidad de cubrimiento de intereses este mes de octubre sigue siendo estelar, reflejando una salud financiera de acero para tu organizaci√≥n de consultor√≠a especializada actualmente hoy. Est√°s en la posici√≥n ideal para manejar tus compromisos bancarios remanentes como un proceso meramente administrativo y no como una presi√≥n econ√≥mica para tu gerencia general hoy.',
'Ten cuidado con el optimismo excesivo al evaluar la toma de nuevos cr√©ditos de capital de trabajo basados √∫nicamente en la actual holgura de tu indicador t√©cnico de cobertura mensual actual. Recuerda que la volatilidad de las tasas externas sigue siendo una amenaza latente que podr√≠a encarecer tu deuda futura de forma imprevista si no mantienes tu prudencia hoy.',
'Utiliza tu excelente reputaci√≥n financiera para negociar descuentos especiales en tus p√≥lizas de cumplimiento ante las grandes aseguradoras nacionales para tus proyectos de este √∫ltimo trimestre hoy. Te sugerimos que mantengas tu pol√≠tica de desapalancamiento operativo, buscando siempre el autofinanciamiento de tus entregables t√©cnicos mediante el recaudo acelerado de cartera.',
'An√°lisis Interanual Mensual - Lote 7/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [57: Servicio de Deuda - Octubre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M10', 'SERVICIO_DEUDA_M10', '[Analisis Interanual] Servicio de Deuda - Octubre', 'success',
'Has mantenido una cobertura del servicio de la deuda en octubre que supera el promedio hist√≥rico de tus octubres pasados por un margen muy considerable y satisfactorio para tu marca corporativa hoy. Tu EBITDA actual es hoy un escudo impenetrable que garantiza el pago puntual de capital e intereses sin estresar tu flujo de maniobra.',
'No obstante, el mes de octubre suele traer consigo el inicio de gastos de cierre de a√±o y provisiones que podr√≠an presionar levemente tu liquidez operativa si no mantienes una coordinaci√≥n de tesorer√≠a perfecta hoy. Asegura que tus recaudos de cartera de este mes se cumplan al cien por ciento para evitar cualquier bache de caja puntual.',
'Crea un fondo de reserva de caja exclusivo para el pago de capital de deudas del pr√≥ximo semestre utilizando tus excedentes de utilidad de este mes de octubre magistralmente hoy mismo. Te recomendamos que tu cobertura de servicio de deuda no baje de las cuatro veces, blindando as√≠ tu calificaci√≥n de riesgo crediticio institucional.',
'An√°lisis Interanual Mensual - Lote 8/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [58: Deuda Neta / EBITDA - Octubre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M10', 'DEUDA_EBITDA_M10', '[Analisis Interanual] Deuda Neta / EBITDA - Octubre', 'success',
'Tu relaci√≥n deuda sobre utilidad operativa neta en este inicio de √∫ltimo trimestre es una de las m√°s seguras y eficientes de todo el sector de consultor√≠a t√©cnico-financiera actual en el pa√≠s hoy. Est√°s operando con un nivel de pasivos bancarios nulo respecto a tu gran generaci√≥n de caja operativa propia, lo que te otorga soberan√≠a total.',
'El riesgo es permitir que la ausencia de deuda bancaria derive en una complacencia corporativa que afecte el ritmo de crecimiento de tus ventas de proyectos senior durante este cierre de ejercicio fiscal hoy. Nota que una deuda controlada y estrat√©gica puede ser un catalizador para duplicar tu capacidad de entrega t√©cnica si se usa bien.',
'Eval√∫a para el pr√≥ximo mes la toma de un cr√©dito estrat√©gico para la expansi√≥n de tu equipo t√©cnico en nuevas verticales de mercado ahora que tu perfil de solvencia es de excelencia total hoy. Te sugerimos mantener este indicador por debajo del cero punto cinco veces, blindando as√≠ tu empresa ante cualquier cambio inesperado de entorno.',
'An√°lisis Interanual Mensual - Lote 8/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [59: Endeudamiento Total - Octubre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M10', 'ENDEUDAMIENTO_TOTAL_M10', '[Analisis Interanual] Endeudamiento Total - Octubre', 'success',
'Tu balance de situaci√≥n en este mes de octubre muestra un nivel de propiedad sobre tus activos que es ejemplar para una pyme del sector de servicios de consultor√≠a estrat√©gica nacional colombiana today. Haber logrado reducir tus deudas totales a niveles m√≠nimos hist√≥ricos es la mejor garant√≠a de que tu firma sobrevivir√° a cualquier ciclo econ√≥mico.',
'Observamos que todav√≠a mantienes algunas deudas de corto plazo con partners comerciales que podr√≠an ser liquidadas totalmente este trimestre para limpiar tu imagen institucional ante terceros evaluadores hoy. No dejes que pasivos peque√±os nublen la visi√≥n de solidez total que has construido con tanto esfuerzo y disciplina financiera reciente.',
'Busca cerrar al menos dos contratos de consultor√≠a de largo plazo que te inyecten flujo de caja fresco para liquidar el total de tus pasivos financieros remanentes este mismo semestre fiscal hoy. Te recomendamos que tu meta de endeudamiento estructural sea inferior al diez por ciento, convirtiendo a tu empresa en un basti√≥n de independencia.',
'An√°lisis Interanual Mensual - Lote 8/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [60: Solvencia Patrimonial - Octubre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M10', 'SOLVENCIA_PATRIMONIAL_M10', '[Analisis Interanual] Solvencia Patrimonial - Octubre', 'success',
'Has iniciado este √∫ltimo cuarto del a√±o con una solvencia patrimonial en octubre que confirma la transformaci√≥n exitosa de tu balance hacia un modelo de acumulaci√≥n de riqueza real senior propia hoy. Tu patrimonio neto contable ya no es solo una cifra t√©cnica, sino que se ha convertido en el respaldo tangible de tus operaciones hoy.',
'Recuerda que ante una eventual inflaci√≥n acelerada en los costos de talento humano experto, tu patrimonio neto real podr√≠a verse afectado si no actualizas tus tarifas de consultor√≠a oportunamente este mes. El reto es asegurar que tu crecimiento patrimonial supere siempre el crecimiento de tus costos de vida corporativos mensuales hoy d√≠a.',
'Revisa tus tarifas de proyectos senior de este trimestre para asegurar que el margen de contribuci√≥n sea suficiente para seguir alimentando tu solvencia patrimonial de forma ininterrumpida hoy mismo. Te sugerimos que tu meta de solvencia patrimonial alcance el sesenta por ciento antes de finalizar el a√±o, blindando institucionalmente tu futuro.',
'An√°lisis Interanual Mensual - Lote 8/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- NOVIEMBRE (M11) - INICIO AN√ÅLISIS INTERANUAL
-- ============================================================================

-- [61: Cobertura de Cargos Fijos - Noviembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M11', 'CARGOS_FIJOS_M11', '[Analisis Interanual] Cargos Fijos - Noviembre', 'success',
'Has logrado mantener una trayectoria de eficiencia operativa impecable durante este mes de noviembre, superando con creces el promedio hist√≥rico de tus √∫ltimos tres a√±os fiscales para este mes hoy. Tu capacidad para absorber los costos fijos de oficina y n√≥mina t√©cnica con tus ingresos de consultor√≠a es hoy un pilar de tu rentabilidad neta.',
'Sin embargo, notamos que el gasto en servicios p√∫blicos y mantenimiento digital ha tenido un ligero repunte este mes de noviembre, reflejando quiz√°s la intensidad de uso de tus plataformas senior actuales. No permitas que estas peque√±as variaciones erosionen tu margen de seguridad de fin de a√±o, manteniendo siempre una vigilancia milim√©trica hoy.',
'Realiza una auditor√≠a de eficiencia sobre tus suscripciones tecnol√≥gicas recurrentes para asegurar que est√°s obteniendo el m√°ximo retorno productivo por cada peso invertido en cargos fijos este mes. Te recomendamos que tu cobertura se mantenga por encima de las once veces, garantizando as√≠ un flujo de caja libre muy robusto para tus socios.',
'An√°lisis Interanual Mensual - Lote 8/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [62: Cobertura de Intereses - Noviembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M11', 'INTERESES_M11', '[Analisis Interanual] Cobertura de Intereses - Noviembre', 'success',
'Tu solvencia para cubrir intereses en este mes de noviembre sigue siendo estelar, reflejando una salud financiera de acero que te aleja de cualquier riesgo de asfixia bancaria o de pasivos pesados hoy. Est√°s operando con un nivel de madurez econ√≥mica que te permite gestionar el costo del dinero como una variable menor en tu planeaci√≥n nacional hoy.',
'El reto oculto es no caer en la inacci√≥n por la ausencia de presi√≥n de pago bancaria, descuidando la b√∫squeda de nuevas l√≠neas de cr√©dito estrat√©gicas que podr√≠an potenciar tu expansi√≥n en dos mil veintis√©is. Tener tanta cobertura podr√≠a indicar que tienes capital subutilizado que deber√≠a estar trabajando para generar m√°s valor real hoy d√≠a.',
'Eval√∫a agresivamente la toma de financiamiento para la adquisici√≥n de activos digitales avanzados ahora que tu perfil de riesgo es de excelencia total ante todos los bancos nacionales de fomento. Te sugerimos que mantengas tu pol√≠tica de desapalancamiento operativo, pero usando el cr√©dito como un catalizador para duplicar tu tama√±o actual prontamente.',
'An√°lisis Interanual Mensual - Lote 8/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [63: Servicio de Deuda - Noviembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M11', 'SERVICIO_DEUDA_M11', '[Analisis Interanual] Servicio de Deuda - Noviembre', 'success',
'Destacamos que tu EBITDA de este mes de noviembre cubre magistralmente tus obligaciones de capital e intereses, superando ampliamente tu desempe√±o hist√≥rico de noviembres de a√±os pasados registrados hoy. Esta solidez demuestra que tu estrategia de enfocarte en proyectos de alto margen y recaudo r√°pido est√° pagando dividendos reales para tu tranquilidad.',
'A pesar de la fortaleza, el mes de noviembre suele traer consigo provisiones para primas legales y bonificaciones que podr√≠an estresar tu tesorer√≠a operativa de forma puntual si no eres precavido hoy. No permitas que la comodidad de los n√∫meros pasados te quite la agilidad necesaria para responder a cierres comerciales imprevistos este mes final.',
'Crea un fondo de reserva de caja equivalente a seis meses de servicio de deuda utilizando tus actuales excedentes de utilidad de este mes de noviembre de forma estrat√©gica y muy profesional. Te recomendamos mantener este ratio por encima de las tres punto cinco veces de forma constante, blindando la calificaci√≥n crediticia de tu organizaci√≥n nacional.',
'An√°lisis Interanual Mensual - Lote 8/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [64: Deuda Neta / EBITDA - Noviembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M11', 'DEUDA_EBITDA_M11', '[Analisis Interanual] Deuda Neta / EBITDA - Noviembre', 'success',
'Has logrado situar tu relaci√≥n deuda sobre EBITDA en niveles de seguridad total este mes de noviembre, demostrando una consistencia envidiable en tu generaci√≥n de valor corporativo propio hoy d√≠a. Est√°s en la posici√≥n so√±ada por cualquier empresario pyme: un negocio altamente rentable con una carga de pasivos bancarios insignificante hoy.',
'El desaf√≠o es evitar que tu equipo comercial se relaje en las negociaciones de m√°rgenes de cierre de a√±o, pensando que la empresa ya tiene el √©xito asegurado permanentemente hoy mismo. La falta de presi√≥n financiera de pago debe ser compensada con una presi√≥n interna por la excelencia t√©cnica para no perder competitividad real regional este a√±o.',
'Enf√≥cate en buscar contratos de largo plazo que incrementen tu EBITDA recurrente para el pr√≥ximo ejercicio, aprovechando tu actual solidez para ofrecer garant√≠as de cumplimiento inigualables hoy. Te sugerimos mantener este indicador por debajo del cero punto cinco veces, blindando as√≠ tu empresa ante cualquier cambio inesperado de entorno nacional.',
'An√°lisis Interanual Mensual - Lote 8/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [65: Endeudamiento Total - Noviembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M11', 'ENDEUDAMIENTO_TOTAL_M11', '[Analisis Interanual] Endeudamiento Total - Noviembre', 'success',
'Has llegado a este mes de noviembre con un nivel de endeudamiento total que es un ejemplo de saneamiento financiero para todo el sector de consultor√≠a estrat√©gica nacional hoy d√≠a. Haber logrado que tus pasivos totales sean apenas una fracci√≥n de lo que sol√≠an ser en noviembres pasados es la mayor garant√≠a de tu soberan√≠a econ√≥mica actual.',
'No obstante, observamos que todav√≠a mantienes una peque√±a porci√≥n de pasivos con socios que podr√≠an ser capitalizados formalmente para mejorar a√∫n m√°s tu ratio de solvencia ante el sector bancario este √∫ltimo trimestre. No dejes que compromisos internos empa√±en la visi√≥n de solidez absoluta que has construido con tanta disciplina financiera hoy.',
'Capitaliza los pr√©stamos de socios antes de finalizar el a√±o comercial para presentar un balance a√∫n m√°s robusto ante tus clientes corporativos de mayor envergadura hoy mismo. Te recomendamos que tu meta de endeudamiento estructural sea inferior al diez por ciento, blindando definitivamente tu patrimonio neto institucional regional nacional.',
'An√°lisis Interanual Mensual - Lote 9/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [66: Solvencia Patrimonial - Noviembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M11', 'SOLVENCIA_PATRIMONIAL_M11', '[Analisis Interanual] Solvencia Patrimonial - Noviembre', 'success',
'Tu solvencia patrimonial este mes de noviembre refleja una fortaleza institucional que ya es tu mayor activo estrat√©gico frente a la competencia del mercado de servicios t√©cnicos hoy d√≠a. Est√°s operando con un capital propio que respalda m√°s del sesenta por ciento de tu operaci√≥n total, lo que te otorga una independencia gerencial inigualable.',
'Cuidado con la tentaci√≥n de diversificar el riesgo patrimonial en inversiones personales de los socios que descapitalicen la firma durante este periodo de bonanza de flujo de caja de fin de a√±o hoy. El patrimonio neto contable debe seguir siendo tu principal prioridad de crecimiento para asegurar una valoraci√≥n de mercado premium para tu marca senior.',
'Ret√©n al menos el setenta por ciento de tus utilidades operativas de este mes de noviembre para seguir alimentando tu solvencia patrimonial de forma ininterrumpida este cierre de a√±o hoy mismo. Te sugerimos que tu meta de solvencia alcance el sesernta y cinco por ciento para el pr√≥ximo ejercicio, blindando tu futuro institucional nacional.',
'An√°lisis Interanual Mensual - Lote 9/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;


-- ============================================================================
-- DICIEMBRE (M12) - CIERRE AN√ÅLISIS INTERANUAL
-- ============================================================================

-- [67: Cobertura de Cargos Fijos - Diciembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M12', 'CARGOS_FIJOS_M12', '[Analisis Interanual] Cargos Fijos - Diciembre', 'success',
'Cierras este a√±o fiscal con una cobertura de cargos fijos en diciembre que ha sido impecable y sostenida, superando el promedio hist√≥rico de tus √∫ltimos tres a√±os para este mismo cierre. Has demostrado que tu disciplina operativa no es un evento fortuito, sino una pol√≠tica administrativa arraigada que garantiza tu rentabilidad neta mensual.',
'Cuidado con la relajaci√≥n operativa que suele acompa√±ar los cierres de a√±o, permitiendo que crezcan los gastos de representaci√≥n o bonificaciones sin un retorno comercial claro actualmente hoy mismo. Mant√©n la m√≠stica de austeridad inteligente incluso en los momentos de mayor liquidez de caja para que tu cobertura de diciembre sea el √©xito total.',
'Establece un presupuesto de gastos fijos inamovible para el primer trimestre del pr√≥ximo a√±o que sea igual al promedio ejecutado exitosamente durante este gran dos mil veinticinco hoy. Te recomendamos que cualquier nuevo gasto recurrente sea justificado exclusivamente por un aumento comprobable en la facturaci√≥n neta de tus proyectos senior.',
'An√°lisis Interanual Mensual - Lote 9/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [68: Cobertura de Intereses - Diciembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M12', 'INTERESES_M12', '[Analisis Interanual] Cobertura de Intereses - Diciembre', 'success',
'Tu capacidad de cubrir intereses este mes de diciembre es magistral, cerrando el a√±o con una solidez financiera inexpugnable ante cualquier acreedor nacional o internacional hoy d√≠a. Tener una cobertura superior a sesenta veces es un indicador de que el costo de tus deudas ya no es un factor determinante en tu toma de decisiones estrat√©gicas.',
'Aseg√∫rate de que est√°s utilizando tu excedente de flujo de caja de este cierre de a√±o para prepagar las √∫ltimas cuotas de capital de tus obligaciones bancarias remanentes hoy mismo. Eliminar totalmente la carga financiera te permitir√° iniciar el pr√≥ximo periodo con una rentabilidad neta libre de compromisos, maximizando el valor de tu firma.',
'Negocia tasas preferenciales de inversi√≥n para tu flujo de caja excedente de cierre de a√±o en instrumentos de bajo riesgo que generen rendimientos superiores a la inflaci√≥n nacional hoy. Te sugerimos que mantengas tu perfil de riesgo conservador, pero buscando activamente que tu dinero trabaje para ti mientras sigues entregando excelencia t√©cnica.',
'An√°lisis Interanual Mensual - Lote 9/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [69: Servicio de Deuda - Diciembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M12', 'SERVICIO_DEUDA_M12', '[Analisis Interanual] Servicio de Deuda - Diciembre', 'success',
'Has concluido el a√±o con una cobertura del servicio de la deuda en diciembre que supera el promedio hist√≥rico de tus √∫ltimos tres a√±os fiscales para este mismo mes estacional hoy. Tu EBITDA de cierre demuestra tener la fuerza necesaria para honrar todas tus obligaciones bancarias sin comprometer tu inversi√≥n en calidad t√©cnica senior corporativa.',
'No obstante, el cierre de diciembre suele exigir pagos de aguinaldos y cierres de contratos que coinciden con tus cuotas financieras, lo que requiere una coordinaci√≥n de tesorer√≠a perfecta hoy. Aseg√∫rate de que tu programaci√≥n de recaudos de cartera de diciembre se cumpla al cien por ciento para mantener este ratio en la cima informativa actual.',
'Establece un fondo de amortizaci√≥n autom√°tica para tus deudas del pr√≥ximo semestre utilizando los excedentes de los proyectos que has entregado con √©xito este cierre de a√±o hoy mismo. Te recomendamos que tu cobertura de servicio de deuda no baje de las cuatro veces, garantizando as√≠ un blindaje absoluto para tu calificaci√≥n de riesgo nacional.',
'An√°lisis Interanual Mensual - Lote 9/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [70: Deuda Neta / EBITDA - Diciembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M12', 'DEUDA_EBITDA_M12', '[Analisis Interanual] Deuda Neta / EBITDA - Diciembre', 'success',
'Tu relaci√≥n deuda sobre utilidad operativa neta en este cierre de ejercicio es una de las m√°s bajas y seguras del mercado de consultor√≠a t√©cnica especializada actualmente hoy. Est√°s operando con un nivel de pasivo bancario casi nulo respecto a tu gran capacidad de generaci√≥n de ingresos operativos, lo que te otorga una soberan√≠a gerencial total.',
'El √∫nico riesgo latente es permitir que la ausencia de presi√≥n de pago bancaria derive en una relajaci√≥n de la gesti√≥n del margen EBITDA por proyecto para el pr√≥ximo a√±o hoy mismo. La eficiencia que te trajo a esta posici√≥n de fuerza debe seguir siendo el ADN de tu organizaci√≥n estrat√©gica para que este ratio se mantenga en la excelencia anual.',
'Incrementa tu margen EBITDA mediante la optimizaci√≥n de procesos de an√°lisis automatizados que reduzcan el tiempo de entrega de tus proyectos sin sacrificar su alta calidad t√©cnica hoy. Te sugerimos mantener este indicador por debajo del cero punto cinco, blindando as√≠ tu empresa ante cualquier cambio inesperado en el entorno econ√≥mico regional.',
'An√°lisis Interanual Mensual - Lote 9/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [71: Endeudamiento Total - Diciembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M12', 'ENDEUDAMIENTO_TOTAL_M12', '[Analisis Interanual] Endeudamiento Total - Diciembre', 'success',
'Al cierre de este mes de diciembre, tu balance muestra un nivel de endeudamiento total excepcionalmente bajo, situ√°ndose muy por debajo del promedio hist√≥rico de tus cierres previos. Has logrado que los socios propios sean due√±os reales de la vasta mayor√≠a de tus activos corporativos, lo que te otorga una independencia gerencial absoluta hoy.',
'La √∫nica vigilancia que debes mantener es no permitir que esta holgura patrimonial derive en una desatenci√≥n a las oportunidades de apalancamiento estrat√©gico para el inicio de 2026 hoy mismo. Tener un endeudamiento tan bajo podr√≠a indicar una aversi√≥n al riesgo excesiva que frene tu expansi√≥n regional durante el pr√≥ximo ejercicio fiscal nacional.',
'Eval√∫a la toma de financiamiento de largo plazo exclusivo para la adquisici√≥n de nuevas plataformas de an√°lisis masivo para el inicio del pr√≥ximo a√±o ahora mismo hoy d√≠a. Te recomendamos que tu meta de endeudamiento estructural sea inferior al quince por ciento, consolidando a tu firma como un basti√≥n de seguridad econ√≥mica definitiva hoy.',
'An√°lisis Interanual Mensual - Lote 9/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- [72: Solvencia Patrimonial - Diciembre]
INSERT INTO insights_ai (empresa_id, periodo_ano, period_key, indicador_key, titulo, status, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3104, 2025, 'M12', 'SOLVENCIA_PATRIMONIAL_M12', '[Analisis Interanual] Solvencia Patrimonial - Diciembre', 'success',
'Has concluido el a√±o fiscal con una solvencia patrimonial en diciembre que es un testimonio de tu disciplina para la retenci√≥n de utilidades y la reinversi√≥n estrat√©gica senior. Est√°s operando con un capital propio robusto que te blinda totalmente ante cualquier crisis de liquidez imprevista en el mercado nacional colombiano actualmente hoy.',
'Cuidado con la tentaci√≥n de decretar dividendos excesivos basados √∫nicamente en los excelentes resultados acumulados de este cierre de a√±o sin considerar tus planes de crecimiento nacional. El patrimonio neto contable debe seguir creciendo para asegurar que tu valoraci√≥n comercial sea siempre creciente y muy competitiva ante clientes senior.',
'Capitaliza al menos el setenta por ciento de tus utilidades operativas de este cierre de a√±o para fortalecer tu capital social legal de forma permanente en tus estados oficiales. Te recomendamos que tu meta de solvencia patrimonial mantenga el nivel del sesenta por ciento, garantizando as√≠ un futuro institucional inexpugnable para todos los socios.',
'An√°lisis Interanual Mensual - Lote 9/9')
ON CONFLICT (empresa_id, periodo_ano, period_key, indicador_key) DO UPDATE SET
    status = EXCLUDED.status, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;
