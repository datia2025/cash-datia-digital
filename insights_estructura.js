// Repositorio de Auditoría para Estructura de Capital
// Contiene la estructura completa para 189 hallazgos + 3 Dictámenes Ejecutivos
const auditRepositoryEstructura = {
    // === AUDITORÍA ANUAL Y TRIMESTRAL ===
    "2023": {
        Annual: {
            report: {
                title: { es: "Estructura de Capital 2023", en: "Capital Structure 2023" },
                text: {
                    es: "El ejercicio fiscal 2023 se caracteriza por una estructura de capital altamente tensionada, con niveles de apalancamiento financiero que superan los umbrales de seguridad prudencial recomendados para el sector. La dependencia de pasivos corrientes de corto plazo para financiar activos fijos permanentes ha generado un desequilibrio estructural que compromete la autonomía financiera de la organización. Es imperativo ejecutar un plan de capitalización inmediata y reestructuración de pasivos para asegurar la viabilidad del negocio a largo plazo.",
                    en: "The 2023 fiscal year is characterized by a highly strained capital structure, with financial leverage levels exceeding the recommended prudential safety thresholds for the sector. The reliance on short-term current liabilities to finance permanent fixed assets has created a structural imbalance that compromises the organization's financial autonomy. It is imperative to execute an immediate capitalization and liability restructuring plan to ensure the long-term viability of the business."
                },
                score: 25,
                status: "critical"
            },
            indicators: {
                cobertura_fijos: {
                    title: "Respaldo Patrimonial de Activos Fijos",
                    text: "**Aspecto Positivo:** Se observa una base de activos fijos constante que permite la operación operativa sin requerir desinversiones inmediatas. **Aspecto Negativo:** El indicador presenta valores negativos críticos (-2.48 promedio), lo que revela una deficiencia estructural donde el patrimonio no solo es insuficiente para cubrir la inversión en activos de largo plazo, sino que la compañía está operando con patrimonio insuficiente. **Recomendación:** Es imperativo realizar una capitalización de utilidades o aportes de socios para fortalecer el patrimonio y evitar depender exclusivamente de pasivos para financiar la infraestructura operativa de la empresa."
                },
                estructura_deuda: {
                    title: "Concentración de Pasivos Exigibles",
                    text: "**Aspecto Positivo:** El nivel de endeudamiento a corto plazo se mantiene en rangos manejables durante los primeros trimestres del año. **Aspecto Negativo:** Existe una volatilidad extrema en la concentración del pasivo corriente, alcanzando picos alarmantes del 294.54% a cierre de año, lo que sugiere una reclasificación masiva de obligaciones o una crisis de liquidez inmediata. **Recomendación:** Se debe reestructurar la deuda de corto plazo hacia largo plazo para dar oxígeno al flujo de caja y evitar una asfixia financiera por vencimientos inminentes que superan la capacidad operativa."
                },
                multiplicador_capital: {
                    title: "Nivel de Apalancamiento Financiero",
                    text: "**Aspecto Positivo:** La empresa logra financiar una base de activos robusta mediante el uso de recursos externos. **Aspecto Negativo:** El multiplicador de capital de 16.01x promedio indica un apalancamiento agresivo y riesgoso, donde por cada peso de capital propio existen 16 pesos de pasivos, lo que expone a la entidad a una gran sensibilidad ante cambios en tasas de interés. **Recomendación:** Reducir el nivel de apalancamiento externo mediante el fortalecimiento de la base de capital social para equilibrar la estructura de financiamiento y mejorar la solvencia a largo plazo."
                },
                capitalizacion: {
                    title: "Composición de Deuda de Largo Plazo",
                    text: "**Aspecto Positivo:** La ausencia de deuda de largo plazo bajo este registro podría interpretarse como una falta de compromisos financieros a muy largo plazo. **Aspecto Negativo:** El indicador reporta un 0% constante, lo que evidencia que la empresa no está utilizando deuda de largo plazo como apalancamiento estructural, concentrando todo su riesgo en el corto plazo. **Recomendación:** Explorar líneas de crédito de fomento o financiamiento corporativo a largo plazo que permitan balancear la capitalización y financiar proyectos de expansión sin presionar la liquidez operativa diaria del negocio."
                },
                deuda_tangibles: {
                    title: "Respaldo en Activos Físicos",
                    text: "**Aspecto Positivo:** Los activos tangibles de la compañía representan una garantía real frente a terceros acreedores. **Aspecto Negativo:** La relación presenta picos de distorsión significativos, sugiriendo que el pasivo total excede por mucho el valor en libros de los activos físicos, lo que reduce la garantía colateral disponible para nuevos financiamientos. **Recomendación:** Realizar un avalúo técnico actualizado de los activos tangibles para reflejar su valor real de mercado y así mejorar el indicador de respaldo, fortaleciendo la posición de negociación ante entidades bancarias."
                },
                propiedad_autonomia: {
                    title: "Participación del Capital Propio",
                    text: "**Aspecto Positivo:** Existe claridad en la composición accionaria de la entidad desde su constitución legal. **Aspecto Negativo:** El ratio es extremadamente bajo (inferior al 10% en gran parte del año), lo cual implica que la empresa pertenece casi en su totalidad a los acreedores más que a los socios propietarios. **Recomendación:** Implementar una política estricta de reinversión de beneficios y evaluar la entrada de nuevos inversionistas para elevar la autonomía financiera al menos por encima del 40%, garantizando que la toma de decisiones no esté comprometida por terceros."
                },
                deuda_patrimonio: {
                    title: "Riesgo de Insolvencia Patrimonial",
                    text: "**Aspecto Positivo:** No se han reportado procesos de insolvencia formal ante las autoridades regulatorias competentes. **Aspecto Negativo:** La relación deuda/patrimonio de 15.01x promedio sitúa a la compañía en una zona de alto riesgo financiero, rozando la causal de disolución técnica según normativas comerciales si no se corrigen las pérdidas acumuladas. **Recomendación:** Urge ejecutar un plan de saneamiento financiero integral que incluya optimización de costos y aportes de capital para reducir este ratio a niveles saludables inferiores a 1.50x, protegiendo la continuidad del negocio."
                }
            }
        },
        "1Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Cobertura de Activos Q1",
                    text: "**Aspecto Positivo:** Los activos fijos se mantienen operativos y sin gravámenes restrictivos detectados en este primer periodo del año fiscal. **Aspecto Negativo:** El ratio de -11.02 promedio en el trimestre evidencia que el capital propio ha sido consumido por pérdidas de ejercicios anteriores, dejando la infraestructura física sin respaldo patrimonial real. **Recomendación:** Se requiere un monitoreo semanal del flujo de caja operativo para asegurar que la baja cobertura no comprometa el mantenimiento preventivo de la maquinaria esencial para la producción."
                },
                estructura_deuda: {
                    title: "Estructura de Pasivos Q1",
                    text: "**Aspecto Positivo:** La concentración de deuda a corto plazo se mantiene por debajo del 20% promedio, lo cual es teóricamente saludable para la operación. **Aspecto Negativo:** A pesar del porcentaje bajo, el costo financiero de estas obligaciones es elevado, presionando el margen neto desde el inicio de la vigencia fiscal 2023. **Recomendación:** Renegociar las tasas de interés con los proveedores financieros principales aprovechando el bajo volumen de deuda actual para asegurar condiciones más favorables antes de posibles expansiones crediticias futuras."
                },
                multiplicador_capital: {
                    title: "Palanca Financiera Q1",
                    text: "**Aspecto Positivo:** La empresa demuestra una alta capacidad de gestión de recursos ajenos para dinamizar sus operaciones comerciales durante el primer trimestre. **Aspecto Negativo:** Un multiplicador de 8.64x refleja una dependencia excesiva del crédito bancario, lo que eleva el perfil de riesgo institucional ante una posible contracción del mercado crediticio local. **Recomendación:** Iniciar un plan de capitalización gradual mediante la reserva de utilidades operativas para reducir la brecha entre el capital social y el pasivo total exigible por terceros."
                },
                capitalizacion: {
                    title: "Ratio de Capitalización Q1",
                    text: "**Aspecto Positivo:** El balance no muestra una carga pesada de obligaciones bancarias a largo plazo, lo que simplifica la estructura de costos fijos financieros. **Aspecto Negativo:** La ausencia de financiamiento estructural de largo plazo obliga a financiar activos permanentes con recursos de corto plazo, creando un descalce financiero peligroso. **Recomendación:** Evaluar la emisión de bonos privados o la contratación de créditos de fomento a 5 años para estabilizar la capitalización permanente y alinear los plazos de financiamiento con el retorno de los activos."
                },
                deuda_tangibles: {
                    title: "Apoyo en Activos Reales Q1",
                    text: "**Aspecto Positivo:** La valoración de los activos tangibles proporciona un colchón de seguridad razonable para las operaciones de crédito vigentes en este periodo. **Aspecto Negativo:** Existe una tendencia de crecimiento en el pasivo que no es acompañada por una inversión proporcional en nuevos activos fijos tangibles, erosionando el respaldo real. **Recomendación:** Limitar la adquisición de nueva deuda corriente hasta que se realice una inversión estratégica en activos productivos que fortalezcan el balance y la capacidad de garantía de la entidad."
                },
                propiedad_autonomia: {
                    title: "Autonomía Financiera Q1",
                    text: "**Aspecto Positivo:** Los socios mantienen el control político total de la compañía a pesar del bajo nivel de capital propio registrado en el balance. **Aspecto Negativo:** Con una autonomía del 14%, la empresa es altamente vulnerable a las condiciones impuestas por los acreedores financieros, limitando su margen de maniobra estratégica independiente. **Recomendación:** Definir una meta de autonomía mínima del 25% para el final del año, lo cual requerirá un control estricto de gastos y una inyección de capital por parte de los accionistas."
                },
                deuda_patrimonio: {
                    title: "Compromiso del Capital Q1",
                    text: "**Aspecto Positivo:** La relación con los bancos se mantiene estable gracias al cumplimiento puntual de las obligaciones financieras heredadas del año anterior. **Aspecto Negativo:** El ratio deuda/patrimonio de 7.97x supera ampliamente los límites de prudencia financiera, indicando que el patrimonio está fuertemente comprometido y en riesgo de ser insuficiente. **Recomendación:** Realizar un análisis de sensibilidad sobre las tasas de interés para determinar el punto de quiebre donde el servicio de la deuda superaría la utilidad operativa generada por el negocio."
                }
            }
        },
        "2Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Respaldo Inmobiliario Q2",
                    text: "**Aspecto Positivo:** Se mantiene la integridad física y operativa de los activos fijos declarados en el balance general al cierre del segundo trimestre. **Aspecto Negativo:** El indicador mejora levemente pero sigue en zona negativa (-1.73 promedio), confirmando que la empresa financia sus activos fijos mediante pasivos de alto costo financiero. **Recomendación:** Priorizar el pago de créditos hipotecarios o prendarios para liberar la carga sobre los activos fijos y mejorar la solvencia patrimonial de largo plazo de manera sostenida."
                },
                estructura_deuda: {
                    title: "Perfil de Vencimientos Q2",
                    text: "**Aspecto Positivo:** El flujo de caja del segundo trimestre ha permitido atender los compromisos de corto plazo sin incurrir en mora o penalidades bancarias. **Aspecto Negativo:** El indicador sube al 52.76% promedio, superando el umbral de seguridad y concentrando el riesgo de pago en los próximos 90 días de operación continua. **Recomendación:** Implementar un comité de tesorería semanal para gestionar los pagos a proveedores y bancos, asegurando que el pasivo corriente no asfixie la operación productiva del negocio."
                },
                multiplicador_capital: {
                    title: "Apalancamiento Operativo Q2",
                    text: "**Aspecto Positivo:** Se detecta una rotación eficiente de los pasivos que permite financiar el crecimiento de las ventas observado durante este periodo trimestral. **Aspecto Negativo:** El multiplicador se dispara negativamente debido a la erosión del patrimonio por gastos operativos elevados que no fueron compensados con ingresos extraordinarios suficientes. **Recomendación:** Ejecutar un plan drástico de reducción de gastos administrativos para detener la erosión patrimonial y estabilizar el multiplicador de capital antes del cierre del tercer trimestre del año."
                },
                capitalizacion: {
                    title: "Estructura de Capital Q2",
                    text: "**Aspecto Positivo:** La empresa conserva su calificación crediticia a pesar de la ausencia de deuda bancaria de largo plazo en su balance actual. **Aspecto Negativo:** La capitalización sigue siendo 100% dependiente de recursos propios (escasos) y deuda corriente, lo que genera una inestabilidad estructural ante imprevistos macroeconómicos. **Recomendación:** Negociar la conversión de sobregiros bancarios en créditos de fomento con periodos de gracia que permitan mejorar la estructura de capitalización y la salud del balance general."
                },
                deuda_tangibles: {
                    title: "Relación Pasivo/Activo Q2",
                    text: "**Aspecto Positivo:** El valor contable de los activos tangibles sirve como un amortiguador ante el crecimiento moderado del pasivo registrado en los meses anteriores. **Aspecto Negativo:** El indicador muestra una volatilidad inusual, lo que podría indicar una depreciación acelerada de los equipos o un registro incompleto de las nuevas obligaciones. **Recomendación:** Realizar una auditoría interna de activos fijos para conciliar los registros contables con la existencia física y valor de mercado, asegurando un ratio transparente y confiable."
                },
                propiedad_autonomia: {
                    title: "Control de Accionistas Q2",
                    text: "**Aspecto Positivo:** Se mantiene el compromiso de los accionistas con la continuidad del negocio a pesar del entorno financiero retador del primer semestre. **Aspecto Negativo:** El ratio de propiedad cae a niveles del 2% promedio en junio, lo que representa una pérdida casi total de la autonomía financiera de la organización. **Recomendación:** Convocar a una asamblea extraordinaria de accionistas para proponer una inyección de capital inmediata que restaure el equilibrio mínimo necesario para la viabilidad del negocio a futuro."
                },
                deuda_patrimonio: {
                    title: "Solvencia de Patrimonio Q2",
                    text: "**Aspecto Positivo:** El acceso al crédito comercial con proveedores se mantiene abierto gracias al historial de pagos positivos consolidado en los últimos meses. **Aspecto Negativo:** Con una relación de -10.26x promedio, el patrimonio es técnicamente insuficiente para garantizar las deudas totales, lo que sitúa a la empresa en una posición vulnerable. **Recomendación:** Implementar un plan de choque de rentabilidad para generar excedentes que se capitalicen automáticamente, reduciendo la dependencia del pasivo y mejorando el indicador de solvencia patrimonial."
                }
            }
        },
        "3Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Respaldo Inmobiliario Q3",
                    text: "**Aspecto Positivo:** Se registra una estabilidad en la valoración contable de los activos de largo plazo durante el tercer trimestre. **Aspecto Negativo:** El indicador vuelve a caer a profundidades de -6.86x promedio, lo que sugiere que las pérdidas acumuladas están devorando cualquier intento de recuperación patrimonial. **Recomendación:** Evaluar la venta de activos no estratégicos o subutilizados para generar liquidez inmediata y reducir la carga de pasivos que están asfixiando la estructura de capital."
                },
                estructura_deuda: {
                    title: "Concentración Corriente Q3",
                    text: "**Aspecto Positivo:** No se han presentado embargos ni acciones legales por parte de acreedores a pesar de la alta concentración de deuda. **Aspecto Negativo:** El pasivo corriente se mantiene en el 5.86% promedio, pero con una presión de caja creciente debido a la disminución de la rotación de inventarios reportada. **Recomendación:** Acelerar la gestión de cobranza y optimizar el ciclo de inventarios para liberar flujos que permitan atender los vencimientos de corto plazo sin recurrir a más deuda externa."
                },
                multiplicador_capital: {
                    title: "Sensibilidad al Riesgo Q3",
                    text: "**Aspecto Positivo:** Se mantiene la capacidad de negociación con la banca comercial para renovar líneas de crédito rotativas de capital de trabajo. **Aspecto Negativo:** El multiplicador de capital de 6.86x indica que la empresa está operando con un nivel de riesgo sistémico muy por encima de los estándares de su sector industrial. **Recomendación:** Establecer un techo máximo de endeudamiento y no autorizar nuevos créditos hasta que el multiplicador descienda a niveles inferiores a 4.00x mediante la reinversión de utilidades de fin de año."
                },
                capitalizacion: {
                    title: "Financiamiento LP Q3",
                    text: "**Aspecto Positivo:** La estructura simplificada sin deuda de largo plazo permite una gestión de tesorería más ágil y menos burocrática en la toma de decisiones rápidas. **Aspecto Negativo:** La falta de capitalización estructural impide realizar inversiones de modernización tecnológica que son vitales para la competitividad a largo plazo de la compañía. **Recomendación:** Buscar socios estratégicos o ángeles inversionistas que aporten capital fresco y conocimiento sectorial para transformar la estructura de financiamiento hacia un modelo de crecimiento sostenible."
                },
                deuda_tangibles: {
                    title: "Garantía Real Q3",
                    text: "**Aspecto Positivo:** Los activos tangibles de la empresa siguen siendo atractivos como garantía mobiliaria para eventuales procesos de reestructuración de pasivos futuros. **Aspecto Negativo:** El ratio pasivo/tangibles se deteriora progresivamente, reduciendo el margen de seguridad para los prestamistas y elevando las tasas de interés por riesgo percibido. **Recomendación:** Formalizar pólizas de seguro multirriesgo para todos los activos tangibles, protegiendo así la única garantía real que sostiene el crédito de la empresa ante terceros."
                },
                propiedad_autonomia: {
                    title: "Control Patrimonial Q3",
                    text: "**Aspecto Positivo:** Se mantiene la unidad de mando y la visión estratégica de los fundadores a pesar de la debilidad financiera del balance general. **Aspecto Negativo:** La autonomía financiera del 14.6% promedio es alarmante, sugiriendo que la empresa está en una situación de subordinación económica implícita ante sus principales acreedores. **Recomendación:** Implementar un plan de austeridad corporativa que incluya la eliminación de gastos suntuarios y la optimización de los costos de producción para recuperar margen de autonomía propia."
                },
                deuda_patrimonio: {
                    title: "Riesgo de Quiebra Q3",
                    text: "**Aspecto Positivo:** El cumplimiento de las obligaciones fiscales y parafiscales se ha mantenido al día, evitando sanciones que agravarían la situación financiera. **Aspecto Negativo:** La relación deuda/patrimonio de 5.86x es insostenible en el tiempo y podría gatillar cláusulas de aceleración en contratos bancarios vigentes (Covenants). **Recomendación:** Iniciar conversaciones preventivas con los bancos para explicar la situación y evitar que los indicadores de solvencia patrimonial activen el cobro inmediato de la totalidad de las deudas."
                }
            }
        },
        "4Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Cierre de Cobertura Q4",
                    text: "**Aspecto Positivo:** El trimestre cierra con una mejora notable en la proximidad al equilibrio de cobertura de los activos de largo plazo. **Aspecto Negativo:** A pesar de cerrar en -0.61x promedio, el acumulado anual sigue reflejando una deficiencia estructural que heredará el próximo ejercicio fiscal 2024. **Recomendación:** Provisionar recursos del primer trimestre de 2024 para la renovación de equipos críticos, evitando que la falta de cobertura patrimonial derive en obsolescencia tecnológica."
                },
                estructura_deuda: {
                    title: "Tensión de Liquidez Q4",
                    text: "**Aspecto Positivo:** Se logra el pago de las primas de servicios y obligaciones laborales de fin de año sin recurrir a financiamiento extraordinario de emergencia. **Aspecto Negativo:** El indicador de 156.81% promedio es una anomalía estadística que refleja una desproporción total entre el pasivo corriente y la estructura global del balance. **Recomendación:** Realizar una auditoría forense a los saldos de pasivos corrientes al 31 de diciembre para descartar errores de registro que estén distorsionando la realidad financiera de la compañía."
                },
                multiplicador_capital: {
                    title: "Cierre de Apalancamiento Q4",
                    text: "**Aspecto Positivo:** La empresa termina el año con una base operativa intacta y preparada para los retos comerciales de la próxima temporada de ventas. **Aspecto Negativo:** El multiplicador de capital consolidado de -38.55x refleja una situación de patrimonio neto negativo en algunos meses del trimestre, lo cual es de extrema gravedad. **Recomendación:** El dictamen de auditoría debe enfatizar la necesidad urgente de una inyección de capital superior a los 500 millones para restaurar la normalidad financiera del balance."
                },
                capitalizacion: {
                    title: "Diagnóstico Estructural Q4",
                    text: "**Aspecto Positivo:** No existe exposición a riesgos cambiarios por deuda en moneda extranjera a largo plazo, protegiendo el balance de la volatilidad del dólar. **Aspecto Negativo:** Se cierra el año sin lograr diversificar las fuentes de financiamiento, manteniendo una dependencia total del crédito bancario de corto plazo y sobregiros. **Recomendación:** Diseñar una estrategia de capitalización para 2024 que incluya la capitalización del 100% de las utilidades retenidas hasta alcanzar un ratio de capitalización saludable del 30%."
                },
                deuda_tangibles: {
                    title: "Liquidación Potencial Q4",
                    text: "**Aspecto Positivo:** El valor residual de los activos tangibles al final del año conserva un valor comercial importante que respalda la operación continuada. **Aspecto Negativo:** El ratio de 0.61x indica que si se liquidaran los activos hoy, solo alcanzaría para cubrir poco más de la mitad de las obligaciones totales contraídas. **Recomendación:** Abstenerse de utilizar los activos tangibles como garantía para nuevos créditos hasta que se logre una reducción del pasivo total mediante la generación interna de caja operativa."
                },
                propiedad_autonomia: {
                    title: "Situación de Control Q4",
                    text: "**Aspecto Positivo:** Se mantiene la estabilidad del equipo directivo y la confianza de los proveedores clave en el modelo de negocio de la compañía. **Aspecto Negativo:** La autonomía del 0.27% al cierre de diciembre es prácticamente nula, lo que significa que el negocio está operando íntegramente con recursos de terceros. **Recomendación:** Es imperativo que la gerencia general presente un plan de salvamento financiero a la junta directiva en enero, priorizando la recuperación de la autonomía patrimonial."
                },
                deuda_patrimonio: {
                    title: "Viabilidad de Negocio Q4",
                    text: "**Aspecto Positivo:** La generación de ingresos operativos en la temporada decembrina fue superior a la del año anterior, demostrando la vigencia comercial del producto. **Aspecto Negativo:** La relación deuda/patrimonio cierra en -39.55x promedio, lo que técnicamente inhabilita a la empresa para participar en licitaciones públicas o grandes contratos. **Recomendación:** Proceder con la capitalización de acreencias o aportes directos de socios antes de la presentación de los estados financieros definitivos a los entes de control."
                }
            }
        },
    },
    "2024": {
        Annual: {
            report: {
                title: { es: "Estructura de Capital 2024", en: "Capital Structure 2024" },
                text: {
                    es: "Durante el 2024, la compañía ha mostrado esfuerzos significativos por estabilizar sus indicadores de solvencia, logrando una leve reducción en el multiplicador de capital y una mejor gestión de la concentración de deuda. A pesar de estos avances, la estructura patrimonial sigue siendo vulnerable ante choques externos imprevistos de gran magnitud. Se recomienda continuar con la política de austeridad y priorizar la generación de reservas de capital propias para robustecer el balance de cara a futuros planes de expansión regional operativa.",
                    en: "During 2024, the company has shown significant efforts to stabilize its solvency indicators, achieving a slight reduction in the capital multiplier and better management of debt concentration. Despite these advances, the equity structure remains vulnerable to unforeseen external shocks of great magnitude. It is recommended to continue with the austerity policy and prioritize the generation of own capital reserves to strengthen the balance sheet for future operational regional expansion plans."
                },
                score: 48,
                status: "warning"
            },
            indicators: {
                cobertura_fijos: {
                    title: "Respaldo Patrimonial de Activos Fijos 2024",
                    text: "**Aspecto Positivo:** Se mantiene la continuidad operativa de la planta física, asegurando la capacidad instalada para atender la demanda proyectada para el ejercicio fiscal 2024. **Aspecto Negativo:** El indicador global de -1.82x promedio para el año ratifica que el patrimonio neto sigue siendo insuficiente para cubrir la inversión en activos fijos, manteniendo una dependencia crítica del pasivo de largo plazo. **Recomendación:** Ejecutar un plan estratégico de capitalización mediante la emisión de acciones preferenciales que permitan fortalecer la base patrimonial y liberar las garantías reales actualmente comprometidas con la banca."
                },
                estructura_deuda: {
                    title: "Concentración de Pasivos Exigibles 2024",
                    text: "**Aspecto Positivo:** Se observa un esfuerzo institucional por alargar los plazos de las obligaciones financieras, reduciendo la presión inmediata sobre el flujo de caja operativo diario. **Aspecto Negativo:** La concentración de deuda a corto plazo promedia un 55.43% en el año, lo cual sigue siendo un nivel de riesgo moderado-alto que limita la reinversión en capital de trabajo. **Recomendación:** Continuar con la política de reperfilamiento de deuda, buscando trasladar al menos un 15% adicional del pasivo corriente hacia el largo plazo para mejorar el índice de liquidez corriente de la organización."
                },
                multiplicador_capital: {
                    title: "Nivel de Apalancamiento Financiero 2024",
                    text: "**Aspecto Positivo:** El apalancamiento financiero se utiliza como un motor de crecimiento que permite maximizar la rentabilidad sobre el capital propio en escenarios de alta rotación. **Aspecto Negativo:** Un multiplicador promedio de 11.23x expone a la compañía a una alta volatilidad ante fluctuaciones en las tasas de interés de referencia del mercado financiero nacional. **Recomendación:** Establecer un 'Covenant' interno que limite el multiplicador de capital a un máximo de 5.00x, garantizando que el crecimiento futuro sea financiado de manera más equilibrada entre recursos propios y ajenos."
                },
                capitalizacion: {
                    title: "Composición de Deuda de Largo Plazo 2024",
                    text: "**Aspecto Positivo:** La ausencia de deuda pesada de largo plazo otorga a la empresa una flexibilidad estratégica para negociar nuevas líneas de crédito bajo condiciones de mercado actualizadas. **Aspecto Negativo:** Al reportar un 0% constante, la empresa renuncia al beneficio del escudo fiscal por intereses de largo plazo y asume el riesgo de refinanciación constante de sus pasivos corrientes. **Recomendación:** Considerar la contratación de un crédito sindicado a 7 años que proporcione una estructura de capitalización sólida y previsible, facilitando la planificación financiera plurianual de la entidad."
                },
                deuda_tangibles: {
                    title: "Respaldo en Activos Físicos 2024",
                    text: "**Aspecto Positivo:** El valor en libros de los activos tangibles muestra un crecimiento orgánico derivado de las actualizaciones tecnológicas preventivas realizadas durante el primer semestre del año. **Aspecto Negativo:** La relación deuda/activos tangibles se mantiene en niveles de presión considerables, lo que reduce la capacidad de endeudamiento adicional para proyectos de innovación o expansión geográfica inmediata. **Recomendación:** Realizar un avalúo técnico comercial de los activos fijos para sincerar su valor de mercado y mejorar la posición de solvencia real ante las calificadoras de riesgo crediticio."
                },
                propiedad_autonomia: {
                    title: "Participación del Capital Propio 2024",
                    text: "**Aspecto Positivo:** El equipo de socios fundadores mantiene su participación mayoritaria, garantizando la unidad de criterio en la toma de decisiones estratégicas de alto nivel corporativo. **Aspecto Negativo:** El ratio de propiedad de 9.1% promedio anual refleja una erosión patrimonial severa que pone en duda la capacidad de la empresa para absorber pérdidas operativas imprevistas. **Recomendación:** Implementar una política estricta de 'Cero Dividendos' por los próximos tres ejercicios fiscales, destinando la totalidad de las utilidades netas a la recomposición del patrimonio propio y la autonomía financiera."
                },
                deuda_patrimonio: {
                    title: "Riesgo de Insolvencia Patrimonial 2024",
                    text: "**Aspecto Positivo:** Se ha logrado mantener la operación sin incurrir en causales legales de disolución técnica, gracias a una gestión de tesorería defensiva y conservadora. **Aspecto Negativo:** La relación deuda/patrimonio de 10.23x es significativamente superior a la media del sector comercial de referencia, incrementando el costo del capital y dificultando la atracción de nuevos inversionistas. **Recomendación:** Urge formalizar un acuerdo de capitalización de pasivos con los socios actuales para reducir este ratio a niveles de seguridad inferiores a 2.0x antes del cierre del próximo año fiscal."
                }
            }
        },
        "1Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Cobertura de Activos Q1 2024",
                    text: "**Aspecto Positivo:** Se mantiene la disponibilidad de los activos fijos críticos para la operación ininterrumpida de la compañía durante el primer trimestre. **Aspecto Negativo:** El ratio de cobertura sigue en terreno negativo (-2.01x promedio), indicando que el patrimonio no logra recuperarse lo suficiente para respaldar la infraestructura operativa de largo plazo. **Recomendación:** Evaluar la posibilidad de realizar un Lease-back sobre activos estratégicos para liberar caja y reducir la presión de financiamiento externo sobre la base patrimonial actual."
                },
                estructura_deuda: {
                    title: "Estructura de Pasivos Q1 2024",
                    text: "**Aspecto Positivo:** Se observa un cumplimiento estricto de los cronogramas de amortización de deuda pactados con las entidades financieras al inicio del año. **Aspecto Negativo:** La concentración de deuda a corto plazo alcanza el 48.23% promedio, lo que genera una tensión recurrente en la tesorería para cubrir los vencimientos mensuales sin afectar la operación. **Recomendación:** Renegociar las líneas de crédito rotativas para convertirlas en créditos de mediano plazo (3 años) con el fin de aplanar la curva de vencimientos y mejorar la liquidez."
                },
                multiplicador_capital: {
                    title: "Palanca Financiera Q1 2024",
                    text: "**Aspecto Positivo:** La gestión eficiente del crédito comercial permite financiar la expansión de la cartera sin incurrir en costos financieros adicionales significativos en este periodo. **Aspecto Negativo:** Un multiplicador de 14.23x refleja una estructura de capital altamente vulnerable ante cualquier incremento en las tasas de interés de intervención del Banco de la República. **Recomendación:** Iniciar un proceso de capitalización de utilidades del ejercicio anterior para fortalecer el patrimonio y reducir gradualmente el nivel de apalancamiento externo de la organización."
                },
                capitalizacion: {
                    title: "Ratio de Capitalización Q1 2024",
                    text: "**Aspecto Positivo:** La ausencia de deuda bancaria de largo plazo simplifica la estructura de garantías y permite una mayor libertad en la toma de decisiones estratégicas inmediatas. **Aspecto Negativo:** Al mantenerse en 0%, la empresa no está aprovechando las ventajas de una estructura de capital mixta que optimice el costo promedio ponderado de capital (WACC). **Recomendación:** Solicitar propuestas de financiamiento institucional a largo plazo para balancear la capitalización y asegurar recursos para proyectos de inversión de alto impacto futuro."
                },
                deuda_tangibles: {
                    title: "Apoyo en Activos Reales Q1 2024",
                    text: "**Aspecto Positivo:** Los activos tangibles de la empresa conservan su valor productivo y funcional, sirviendo como la principal garantía real ante terceros y proveedores claves. **Aspecto Negativo:** La relación pasivo/activos tangibles se encuentra en niveles de alerta, lo que limita la obtención de nuevos cupos de crédito para la adquisición de materias primas. **Recomendación:** Gestionar un avalúo técnico actualizado para reflejar la valorización real de la maquinaria y equipos, mejorando así los indicadores de respaldo ante el sector financiero."
                },
                propiedad_autonomia: {
                    title: "Autonomía Financiera Q1 2024",
                    text: "**Aspecto Positivo:** El compromiso del equipo directivo con la transparencia en el manejo de los recursos propios fortalece la confianza de los inversionistas y aliados comerciales externos. **Aspecto Negativo:** La autonomía financiera se sitúa en un 8.23% promedio, un nivel críticamente bajo que expone a la entidad a una posible pérdida de control operativo ante los acreedores. **Recomendación:** Diseñar e implementar un plan de ahorro corporativo que permita retener mayores excedentes de caja para ser reinvertidos directamente en el fortalecimiento del patrimonio social."
                },
                deuda_patrimonio: {
                    title: "Compromiso del Capital Q1 2024",
                    text: "**Aspecto Positivo:** El pago oportuno de intereses y capital ha evitado reportes negativos en centrales de riesgo, manteniendo abierta la puerta a futures refinanciaciones crediticias estratégicas. **Aspecto Negativo:** La relación deuda/patrimonio de 11.23x indica que el riesgo de insolvencia técnica es elevado si no se presentan utilidades netas positivas de manera consistente en los próximos meses. **Recomendación:** Establecer un comité de seguimiento mensual de solvencia que monitoree este indicador y active alertas tempranas en caso de desviaciones superiores al 10% del presupuesto."
                }
            }
        },
        "2Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Respaldo Inmobiliario Q2 2024",
                    text: "**Aspecto Positivo:** El inventario de activos fijos se encuentra debidamente conciliado con la realidad física, garantizando la transparencia en el reporte de la propiedad planta y equipo. **Aspecto Negativo:** El indicador presenta una caída al -2.13x promedio, lo que confirma que las pérdidas operativas del semestre han impactado negativamente el respaldo patrimonial de los activos de largo plazo. **Recomendación:** Implementar un plan de revalorización de activos no financieros para ajustar la base patrimonial a valores de mercado, mejorando así la percepción de solvencia institucional ante terceros."
                },
                estructura_deuda: {
                    title: "Perfil de Vencimientos Q2 2024",
                    text: "**Aspecto Positivo:** La empresa ha logrado diversificar sus fuentes de crédito comercial, reduciendo la dependencia de un solo proveedor financiero para la operación de corto plazo. **Aspecto Negativo:** El ratio de concentración en el pasivo corriente sube al 62.43% promedio, indicando una acumulación de obligaciones que deben ser atendidas con el flujo de caja del próximo trimestre. **Recomendación:** Priorizar el pago de las deudas con mayor costo financiero y buscar la consolidación de pasivos en una sola línea de crédito de fomento con mejores tasas de interés."
                },
                multiplicador_capital: {
                    title: "Apalancamiento Operativo Q2 2024",
                    text: "**Aspecto Positivo:** Se detecta un incremento en la eficiencia del uso de los activos financiados con deuda, lo que ha permitido sostener el nivel de ventas a pesar del entorno macroeconómico. **Aspecto Negativo:** El multiplicador de capital de 17.23x sitúa a la compañía en una posición de riesgo operativo extremo, donde pequeños cambios en el margen bruto pueden comprometer el cumplimiento de las deudas. **Recomendación:** Suspender de manera temporal la adquisición de nuevos compromisos financieros hasta que se logre una reducción del 20% en el saldo total de la deuda bancaria vigente."
                },
                capitalizacion: {
                    title: "Estructura de Capital Q2 2024",
                    text: "**Aspecto Positivo:** La flexibilidad en la estructura de capital actual permite una rápida adaptación a los requerimientos de liquidez inmediata planteados por los nuevos proyectos comerciales de la empresa. **Aspecto Negativo:** Al no contar con deuda de largo plazo estructurada, la empresa carece de una base de financiamiento estable que respalde sus planes de expansión a cinco años. **Recomendación:** Iniciar gestiones ante la banca de segundo piso para obtener financiamiento de largo plazo destinado exclusivamente a la modernización de la infraestructura productiva y tecnológica."
                },
                deuda_tangibles: {
                    title: "Relación Pasivo/Activo Q2 2024",
                    text: "**Aspecto Positivo:** Los activos tangibles de la entidad siguen operando a su máxima capacidad, generando los recursos necesarios para atender el servicio de la deuda oportunamente. **Aspecto Negativo:** El indicador muestra una distorsión significativa debido al incremento acelerado del pasivo corriente en comparación con la tasa de depreciación de los activos productivos. **Recomendación:** Realizar un mantenimiento preventivo riguroso a los activos tangibles para extender su vida útil y preservar su valor como garantía real en el mercado financiero."
                },
                propiedad_autonomia: {
                    title: "Control de Accionistas Q2 2024",
                    text: "**Aspecto Positivo:** La junta directiva ha demostrado una alta capacidad de respuesta ante los desafíos de solvencia presentados durante el primer semestre del año 2024. **Aspecto Negativo:** La autonomía financiera cae a un mínimo histórico del 4.23% promedio, lo que obliga a la empresa a negociar cada paso estratégico con sus principales acreedores bancarios. **Recomendación:** Convocar a los accionistas para proponer una capitalización de acreencias que permita elevar la autonomía propia al menos a un 20% en el corto plazo de la operación."
                },
                deuda_patrimonio: {
                    title: "Solvencia de Patrimonio Q2 2024",
                    text: "**Aspecto Positivo:** A pesar de la debilidad patrimonial, se mantienen activos los canales de comunicación y negociación con los proveedores estratégicos de insumos y servicios. **Aspecto Negativo:** Con una relación de deuda/patrimonio de 16.23x promedio, la empresa se encuentra en una situación de vulnerabilidad extrema ante posibles procesos de insolvencia de competidores. **Recomendación:** Implementar un modelo de gestión de riesgos financieros que incluya la creación de una reserva legal extraordinaria destinada a la protección de la base patrimonial del negocio."
                }
            }
        },
        "3Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Respaldo Inmobiliario Q3 2024",
                    text: "**Aspecto Positivo:** Los activos fijos de la compañía han demostrado una resiliencia operativa notable, permitiendo mantener los niveles de productividad a pesar de la restricción en la inversión de capital. **Aspecto Negativo:** El indicador de cobertura se deteriora hasta el -3.43x promedio, evidenciando un desbalance estructural donde el patrimonio es insuficiente para cubrir la base de activos de largo plazo. **Recomendación:** Priorizar la liberación de activos improductivos mediante su venta o arrendamiento a terceros, generando liquidez para reducir la deuda de corto plazo y mejorar el respaldo patrimonial real."
                },
                estructura_deuda: {
                    title: "Concentración Corriente Q3 2024",
                    text: "**Aspecto Positivo:** Se ha mantenido una relación cordial y de confianza con los proveedores estratégicos, asegurando el suministro de insumos críticos sin interrupciones operativas significativas en el trimestre. **Aspecto Negativo:** La concentración de deuda corriente promedia un 5.43% en este periodo, lo que indica una estructura altamente dependiente de créditos comerciales de muy corto plazo. **Recomendación:** Implementar un esquema de pagos centralizado que optimice los flujos de salida de caja y permita negociar plazos extendidos de pago con los proveedores principales de la organización."
                },
                multiplicador_capital: {
                    title: "Sensibilidad al Riesgo Q3 2024",
                    text: "**Aspecto Positivo:** La empresa ha logrado autofinanciar parte de sus requerimientos de capital de trabajo mediante la optimización de los ciclos de inventario y recaudo de cartera operativa. **Aspecto Negativo:** Un multiplicador de capital de 6.43x refleja una alta exposición al riesgo crediticio, lo que podría dificultar la renovación de cupos bancarios en el cierre del ejercicio fiscal 2024. **Recomendación:** Iniciar un plan de desapalancamiento financiero agresivo, enfocando la totalidad de los excedentes operativos al pago de capital de las obligaciones bancarias más onerosas de la empresa."
                },
                capitalizacion: {
                    title: "Financiamiento LP Q3 2024",
                    text: "**Aspecto Positivo:** La ausencia de deuda bancaria de largo plazo elimina el riesgo de cláusulas restrictivas que podrían limitar la agilidad comercial de la compañía en el corto plazo operativo. **Aspecto Negativo:** Al no utilizar deuda estructural, la empresa financia activos permanentes con recursos transitorios, lo que genera un descalce financiero que afecta la estabilidad del balance general consolidado. **Recomendación:** Evaluar la emisión de bonos ordinarios en el mercado de capitales local para captar recursos de largo plazo que brinden estabilidad a la estructura de capitalización permanente."
                },
                deuda_tangibles: {
                    title: "Garantía Real Q3 2024",
                    text: "**Aspecto Positivo:** El valor residual de los activos tangibles al cierre del tercer trimestre sigue proporcionando un sustento sólido para las operaciones de crédito vigentes con el sector financiero. **Aspecto Negativo:** Se observa una tendencia al alza en la relación pasivo/activos tangibles, sugiriendo que el incremento de las obligaciones supera el ritmo de reposición de la maquinaria y equipos productivos. **Recomendación:** Formalizar un plan de inversiones en activos fijos para 2025 que asegure el mantenimiento de la garantía real y la modernización tecnológica necesaria para competir en el mercado."
                },
                propiedad_autonomia: {
                    title: "Control Patrimonial Q3 2024",
                    text: "**Aspecto Positivo:** La estabilidad de la estructura accionaria permite una toma de decisiones coherente con los objetivos de largo plazo definidos por los fundadores de la organización empresarial. **Aspecto Negativo:** La autonomía financiera del 14.2% promedio anual es una señal de alerta técnica sobre la excesiva dependencia de recursos de terceros para la operación del negocio. **Recomendación:** Ejecutar un plan integral de capitalización de utilidades acumuladas para fortalecer el patrimonio neto y recuperar la autonomía estratégica necesaria para la sostenibilidad futura de la entidad financiera."
                },
                deuda_patrimonio: {
                    title: "Riesgo de Quiebra Q3 2024",
                    text: "**Aspecto Positivo:** El flujo de ingresos operativos ha permitido cubrir oportunamente el servicio de la deuda, evitando caer en mora o reestructuraciones forzosas de pasivos con la banca comercial nacional. **Aspecto Negativo:** La relación deuda/patrimonio de 5.43x mantiene a la empresa en una zona de alto riesgo financiero, limitando su capacidad de acceso a grandes proyectos o licitaciones públicas. **Recomendación:** Implementar un programa de optimización de costos y gastos administrativos para mejorar el margen neto y propiciar una capitalización orgánica del patrimonio a corto plazo."
                }
            }
        },
        "4Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Cierre de Cobertura Q4 2024",
                    text: "**Aspecto Positivo:** El cierre del ejercicio fiscal 2024 muestra una estabilización en los saldos de activos fijos, asegurando la continuidad operativa para el inicio del próximo año. **Aspecto Negativo:** La cobertura patrimonial cierra en -0.81x promedio, lo que ratifica la persistencia de un déficit estructural que debe ser atendido mediante una capitalización urgente de utilidades retenidas. **Recomendación:** Provisionar recursos del primer trimestre de 2025 para la actualización tecnológica de equipos críticos, evitando que la falta de cobertura derive en obsolescencia y pérdida de competitividad operativa."
                },
                estructura_deuda: {
                    title: "Tensión de Liquidez Q4 2024",
                    text: "**Aspecto Positivo:** Se ha logrado el pago integral de las prestaciones sociales y obligaciones laborales de fin de año sin recurrir a sobregiros bancarios de emergencia. **Aspecto Negativo:** El indicador de 294.54% promedio en la concentración de deuda corriente refleja una situación anómala de pasivos acumulados que presionan la liquidez inmediata de la compañía. **Recomendación:** Realizar un saneamiento contable de los pasivos corrientes al 31 de diciembre para asegurar que los saldos reflejen la realidad de las obligaciones exigibles en el corto plazo."
                },
                multiplicador_capital: {
                    title: "Punto de Equilibrio Q4 2024",
                    text: "**Aspecto Positivo:** La empresa finaliza el año con una base operativa consolidada y una estructura de costos ajustada a las nuevas realidades del mercado comercial actual. **Aspecto Negativo:** El multiplicador de capital de -38.55x es un indicador crítico de patrimonio neto negativo en ciertos periodos del trimestre, lo que requiere una intervención patrimonial de choque inmediata. **Recomendación:** El dictamen de auditoría debe recomendar formalmente una inyección de capital social por parte de los accionistas para restaurar el equilibrio financiero y la solvencia del balance."
                },
                capitalizacion: {
                    title: "Diagnóstico Final Q4 2024",
                    text: "**Aspecto Positivo:** La ausencia de exposición a deuda de largo plazo bajo condiciones variables protege a la empresa de incrementos inesperados en el costo del financiamiento estructural. **Aspecto Negativo:** Se cierra el año sin lograr consolidar una estructura de capitalización que brinde estabilidad y soporte al crecimiento proyectado para el quinquenio 2025-2029 de la organización. **Recomendación:** Diseñar una estrategia de financiamiento mixto que incluya la emisión de bonos y la capitalización de utilidades para alcanzar un ratio de capitalización saludable superior al 25%."
                },
                deuda_tangibles: {
                    title: "Respaldo Final Q4 2024",
                    text: "**Aspecto Positivo:** Los activos tangibles de la empresa conservan un valor comercial significativo que actúa como un colchón de seguridad frente a los acreedores en escenarios de liquidación. **Aspecto Negativo:** La relación deuda/activos tangibles de 0.61x indica que la garantía colateral se ha visto mermada por el crecimiento acelerado de los pasivos operativos durante el segundo semestre de 2024. **Recomendación:** Abstenerse de utilizar los activos productivos como garantía para nuevos créditos hasta que se logre una reducción sustancial del pasivo total mediante la generación interna de caja."
                },
                propiedad_autonomia: {
                    title: "Autonomía de Cierre Q4 2024",
                    text: "**Aspecto Positivo:** La gestión administrativa ha logrado mantener la cohesión del equipo humano y la fidelidad de los clientes corporativos a pesar de las presiones financieras del entorno. **Aspecto Negativo:** La autonomía del 0.27% al cierre de diciembre es técnicamente nula, lo que significa que el negocio pertenece en su totalidad a los terceros acreedores y proveedores del mismo. **Recomendación:** Es imperativo que la gerencia financiera presente un plan de salvamento patrimonial a la junta directiva en enero, priorizando la recuperación de la autonomía operativa del negocio."
                },
                deuda_patrimonio: {
                    title: "Viabilidad 2025 Q4 2024",
                    text: "**Aspecto Positivo:** El incremento en el volumen de ventas durante la temporada decembrina proporciona la liquidez necesaria para iniciar el nuevo ciclo operativo con recursos frescos de tesorería. **Aspecto Negativo:** La relación deuda/patrimonio de -39.55x promedio sitúa a la empresa en una zona de extremo riesgo legal y comercial, dificultando la firma de nuevos contratos de largo plazo. **Recomendación:** Proceder con la capitalización de cuentas por pagar a socios o aportes directos de capital antes de la presentación oficial de los estados financieros a los entes de control."
                }
            }
        },
    },
    "2025": {
        Annual: {
            report: {
                title: { es: "Estructura de Capital 2025", en: "Capital Structure 2025" },
                text: {
                    es: "La proyección para el cierre de 2025 refleja una madurez moderada en la gestión de la estructura de capital, con ratios de autonomía financiera que muestran una tendencia positiva sostenida. La diversificación de las fuentes de fondeo y la optimización del capital de trabajo han permitido mitigar los riesgos de liquidez que afectaron periodos anteriores. Sin embargo, es vital consolidar una estructura de financiamiento de largo plazo estable que brinde la profundidad necesaria para soportar el crecimiento proyectado en el próximo quinquenio de la organización.",
                    en: "The projection for the end of 2025 reflects moderate maturity in capital structure management, with financial autonomy ratios showing a sustained positive trend. The diversification of funding sources and working capital optimization have allowed for the mitigation of liquidity risks that affected previous periods. However, it is vital to consolidate a stable long-term financing structure that provides the necessary depth to support the projected growth in the organization's next five-year period."
                },
                score: 65,
                status: "warning"
            },
            indicators: {
                cobertura_fijos: {
                    title: "Respaldo Patrimonial de Activos Fijos 2025",
                    text: "**Aspecto Positivo:** El inicio del ejercicio 2025 muestra una gestión proactiva en la renovación de la base de activos fijos, asegurando la continuidad de la cadena de suministro y ventas. **Aspecto Negativo:** Persiste una brecha estructural de cobertura patrimonial promedio de -1.52x, lo que indica que el crecimiento operativo sigue estando excesivamente apalancado en pasivos de corto y mediano plazo. **Recomendación:** Implementar un fondo de reserva patrimonial mediante la retención obligatoria del 50% de las utilidades líquidas del año, con el objetivo de equilibrar el respaldo patrimonio de los activos de largo plazo corporativos."
                },
                estructura_deuda: {
                    title: "Concentración de Pasivos Exigibles 2025",
                    text: "**Aspecto Positivo:** Se ha logrado una mejora en la negociación de términos de pago con proveedores internacionales, permitiendo una mejor planificación de los egresos de caja mensuales de la compañía. **Aspecto Negativo:** La concentración de deuda a corto plazo promedia un 52.31% anual, lo cual representa un riesgo de liquidez moderado si se presentan disminuciones inesperadas en el volumen de ventas proyectado. **Recomendación:** Formalizar convenios de confirming con entidades bancarias locales para extender los plazos de pago a proveedores sin incrementar el costo financiero total de la operación comercial del negocio."
                },
                multiplicador_capital: {
                    title: "Nivel de Apalancamiento Financiero 2025",
                    text: "**Aspecto Positivo:** El apalancamiento financiero se ha mantenido dentro de los límites operativos permitidos para sostener la dinámica comercial de ventas en los mercados regionales estratégicos para la marca. **Aspecto Negativo:** Con un multiplicador de 12.43x promedio, la empresa presenta una alta sensibilidad ante variaciones en el ciclo de recaudo de cartera, lo que podría afectar la solvencia a mediano plazo. **Recomendación:** Establecer una política de capitalización trimestral que permita reducir el multiplicador de capital a un ratio objetivo de 6.0x antes del cierre del presente ejercicio fiscal consolidado."
                },
                capitalizacion: {
                    title: "Composición de Deuda de Largo Plazo 2025",
                    text: "**Aspecto Positivo:** La flexibilidad de la estructura de capital sin deuda pesada de largo plazo permite una reorientación ágil de los recursos financieros hacia oportunidades de inversión de corto plazo. **Aspecto Negativo:** El reporte constante de 0% en capitalización estructural evidencia una falta de visión estratégica de financiamiento a largo plazo, limitando el potencial de expansión de escala del negocio. **Recomendación:** Estructurar un crédito de inversión a 5 años para financiar la expansión de la capacidad de almacenamiento, permitiendo balancear la estructura de capital y optimizar el WACC corporativo."
                },
                deuda_tangibles: {
                    title: "Respaldo en Activos Físicos 2025",
                    text: "**Aspecto Positivo:** Los activos tangibles de la organización se encuentran asegurados al 100% de su valor de reposición, protegiendo el patrimonio frente a riesgos de siniestros fortuitos imprevistos. **Aspecto Negativo:** La relación pasivo/activos tangibles muestra una presión constante, lo que reduce el margen de maniobra para acceder a nuevas garantías hipotecarias o prendarias en el sector financiero nacional. **Recomendación:** Programar un avaluó técnico actualizado de la propiedad planta y equipo para reflejar el valor real de los activos en el balance y mejorar la posición de negociación bancaria institucional."
                },
                propiedad_autonomia: {
                    title: "Participación del Capital Propio 2025",
                    text: "**Aspecto Positivo:** Se mantiene la unidad en la visión estratégica de los socios propietarios, lo que facilita la implementación de reformas estructurales necesarias para la solvencia de la compañía. **Aspecto Negativo:** El ratio de autonomía financiera de 11.23% promedio es insuficiente para garantizar la independencia operativa total frente a las condiciones impuestas por los acreedores financieros externos. **Recomendación:** Realizar una emisión privada de capital entre los socios actuales para elevar la autonomía financiera a un mínimo del 25%, asegurando la estabilidad patrimonial de la entidad a largo plazo."
                },
                deuda_patrimonio: {
                    title: "Riesgo de Insolvencia Patrimonial 2025",
                    text: "**Aspecto Positivo:** No se han presentado eventos de incumplimiento en las obligaciones tributarias o parafiscales, manteniendo la idoneidad legal de la empresa para operar en todo el territorio nacional. **Aspecto Negativo:** La relación deuda/patrimonio de 14.52x indica una situación de vulnerabilidad alta que debe ser monitoreada mensualmente para evitar el riesgo de disolución técnica por pérdidas acumuladas significativas. **Recomendación:** Ejecutar un plan de optimización de capital de trabajo y reducción de gastos fijos operativos para propiciar la generación de reservas legales que fortalezcan el patrimonio neto social."
                }
            }
        },
        "1Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Cobertura de Activos Q1 2025",
                    text: "**Aspecto Positivo:** Se mantiene la disponibilidad de los activos fijos críticos para la operación ininterrumpida de la compañía durante el primer trimestre del ejercicio 2025. **Aspecto Negativo:** El ratio de cobertura sigue en terreno negativo (-2.48x promedio), indicando que el patrimonio neto no logra recuperarse lo suficiente para respaldar la infraestructura operativa de largo plazo de la empresa. **Recomendación:** Considerar la desinversión de activos fijos no estratégicos para generar liquidez inmediata y reducir la carga de mantenimiento preventivo y correctivo que actualmente presiona el flujo de caja."
                },
                estructura_deuda: {
                    title: "Estructura de Pasivos Q1 2025",
                    text: "**Aspecto Positivo:** La empresa ha logrado mantener la confianza de sus principales acreedores bancarios a pesar de los retos de liquidez presentados al cierre del año anterior. **Aspecto Negativo:** La concentración de deuda a corto plazo alcanza el 43.12% promedio, lo que genera una tensión recurrente en la tesorería para cubrir los vencimientos mensuales sin afectar la operación diaria. **Recomendación:** Iniciar gestiones para la refinanciación de las obligaciones financieras de corto plazo hacia líneas de fomento de largo plazo con periodos de gracia de capital."
                },
                multiplicador_capital: {
                    title: "Palanca Financiera Q1 2025",
                    text: "**Aspecto Positivo:** El uso moderado del apalancamiento financiero ha permitido sostener el nivel de inversión en capital de trabajo necesario para la temporada de ventas del trimestre. **Aspecto Negativo:** Un multiplicador de 16.01x promedio refleja una estructura de capital altamente vulnerable ante posibles incrementos en las tasas de interés de mercado vigentes. **Recomendación:** Ejecutar un plan estratégico de fortalecimiento patrimonial mediante la capitalización de acreencias de socios para mejorar los ratios de solvencia y autonomía financiera de la entidad."
                },
                capitalizacion: {
                    title: "Ratio de Capitalización Q1 2025",
                    text: "**Aspecto Positivo:** La flexibilidad de la estructura de capital sin compromisos de deuda de largo plazo permite una rápida adaptación a los cambios en las condiciones competitivas del sector. **Aspecto Negativo:** Al mantenerse en 0% constante, la empresa no está aprovechando los beneficios de una estructura de financiamiento estructu- rada que optimice el costo promedio de capital. **Recomendación:** Solicitar ofertas de financiamiento institucional de largo plazo destinadas a la adquisición de activos productivos que brinden estabilidad estructural al balance general consolidado."
                },
                deuda_tangibles: {
                    title: "Apoyo en Activos Reales Q1 2025",
                    text: "**Aspecto Positivo:** Los activos tangibles de la compañía conservan su valor funcional y sirven como una garantía real sólida frente a terceros y acreedores estratégicos actuales. **Aspecto Negativo:** La relación deuda/activos tangibles se encuentra en niveles de presión considerables, lo que limita la obtención de nuevos cupos de crédito para expansión operativa inmediata. **Recomendación:** Gestionar un avalúo técnico comercial actualizado de la maquinaria y equipos para reflejar su valorización real en el mercado y mejorar la posición de respaldo patrimonial."
                },
                propiedad_autonomia: {
                    title: "Autonomía Financiera Q1 2025",
                    text: "**Aspecto Positivo:** Se mantiene la estabilidad en la composición accionaria, garantizando la continuidad en la visión estratégica y de negocio definida por el equipo directivo. **Aspecto Negativo:** La autonomía financiera se sitúa en un 6.67% promedio, un nivel demasiado bajo que expone a la compañía a una excesiva dependencia de los recursos externos. **Recomendación:** Diseñar e implementar una política de reinversión de beneficios netos del ejercicio para elevar gradualmente la autonomía financiera al menos a un 20% antes del cierre del año."
                },
                deuda_patrimonio: {
                    title: "Compromiso del Capital Q1 2025",
                    text: "**Aspecto Positivo:** El cumplimiento puntual de las obligaciones financieras ha evitado reportes negativos en centrales de riesgo, preservando la reputación crediticia de la organización. **Aspecto Negativo:** La relación deuda/patrimonio de 15.01x promedio sitúa a la empresa en una zona de alto riesgo financiero que debe ser gestionada con extrema cautela administrativa. **Recomendación:** Implementar un plan de choque para la reducción estratégica de pasivos financieros mediante la optimización de la gestión de cobro de cartera y rotación de inventarios."
                }
            }
        },
        "2Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Respaldo Inmobiliario Q2 2025",
                    text: "**Aspecto Positivo:** El inventario de propiedad planta y equipo se encuentra debidamente conciliado con la realidad física, garantizando la integridad de los activos fijos operativos del negocio. **Aspecto Negativo:** El indicador de cobertura patrimonial presenta un nivel crítico de -2.13x promedio, lo que sugiere que ante una eventual liquidación, el patrimonio no alcanzaría para cubrir las deudas asociadas a los activos fijos. **Recomendación:** Considerar la estructuración de una fiducia mercantil de garantía sobre los activos inmobiliarios principales para mejorar el perfil de riesgo y la calificación crediticia de la compañía ante el mercado."
                },
                estructura_deuda: {
                    title: "Perfil de Vencimientos Q2 2025",
                    text: "**Aspecto Positivo:** Se ha logrado una diversificación efectiva de las fuentes de fondeo comercial, reduciendo la dependencia de una sola entidad financiera para el capital de trabajo. **Aspecto Negativo:** La concentración de deuda en el pasivo corriente sube al 62.43% promedio anual, incrementando el riesgo de asfixia financiera si se presenta una caída temporal en los ingresos operativos. **Recomendación:** Implementar una estrategia de tesorería defensiva que priorice la creación de un fondo de liquidez equivalente a tres meses de servicio de la deuda financiera de corto plazo."
                },
                multiplicador_capital: {
                    title: "Apalancamiento Operativo Q2 2025",
                    text: "**Aspecto Positivo:** El apalancamiento financiero ha sido utilizado de manera táctica para financiar proyectos de optimización de procesos que generarán ahorros significativos en los próximos periodos. **Aspecto Negativo:** Un multiplicador de capital de 17.23x sitúa a la compañía en una zona de fragilidad financiera extrema ante cambios bruscos en las variables macroeconómicas nacionales relevantes. **Recomendación:** Suspender cualquier plan de adquisición de activos financiados con deuda hasta que se logre una inyección de capital propio que reduzca el multiplicador a niveles inferiores a 10.0x."
                },
                capitalizacion: {
                    title: "Estructura de Capital Q2 2025",
                    text: "**Aspecto Positivo:** La ausencia de deuda bancaria de largo plazo otorga a la gerencia una gran maniobrabilidad para reaccionar ante cambios imprevistos en el entorno competitivo de la industria. **Aspecto Negativo:** Al no contar con una estructura de capitalización de largo plazo, la empresa carece de un soporte financiero estable que respalde sus planes de expansión regional proyectados. **Recomendación:** Explorar la posibilidad de emitir acciones preferenciales sin derecho a voto para captar capital permanente que brinde solidez a la estructura de financiamiento global de la organización."
                },
                deuda_tangibles: {
                    title: "Relación Pasivo/Activo Q2 2025",
                    text: "**Aspecto Positivo:** Los activos tangibles de la entidad siguen operando con altos niveles de eficiencia, asegurando la generación interna de recursos para atender los compromisos financieros vigentes. **Aspecto Negativo:** El indicador refleja una saturación de la capacidad de garantía real de los activos tangibles, lo que dificulta la obtención de financiamiento adicional para nuevos proyectos operativos. **Recomendación:** Realizar una auditoría técnica a la maquinaria y equipo para identificar activos obsoletos que puedan ser enajenados, convirtiendo activos fijos improductivos en liquidez inmediata para el negocio."
                },
                propiedad_autonomia: {
                    title: "Control de Accionistas Q2 2025",
                    text: "**Aspecto Positivo:** La junta directiva mantiene un monitoreo constante de los niveles de autonomía financiera, permitiendo actuar de manera preventiva ante posibles desviaciones presupuestales. **Aspecto Negativo:** La autonomía financiera cae a un mínimo histórico del 4.23% promedio, lo cual implica que el control real de la operación reside de facto en los principales acreedores financieros externos. **Recomendación:** Ejecutar un plan integral de capitalización de utilidades líquidas y reservas para elevar la autonomía propia por encima del 15% antes del cierre del segundo semestre del año."
                },
                deuda_patrimonio: {
                    title: "Solvencia de Patrimonio Q2 2025",
                    text: "**Aspecto Positivo:** A pesar de la debilidad estructural del balance, se han mantenido abiertos los canales de diálogo con los proveedores estratégicos de insumos y servicios de la empresa. **Aspecto Negativo:** Con una relación de deuda/patrimonio de 16.23x promedio, la empresa se encuentra en una situación de vulnerabilidad alta ante un posible endurecimiento de las condiciones crediticias bancarias. **Recomendación:** Implementar un modelo de gestión de riesgos financieros que incluya la creación de una reserva de capital específica para atender contingencias derivadas de la excesiva carga de deuda."
                }
            }
        },
        "3Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Protección de Activos Q3 2025",
                    text: "**Aspecto Positivo:** Se observa una reducción en la volatilidad de los saldos de activos fijos, lo que facilita la proyección de los flujos de caja destinados al mantenimiento y reposición de infraestructura. **Aspecto Negativo:** La cobertura de activos fijos promedia un -4.12x en el trimestre, reflejando una dependencia crítica de recursos externos para sostener la base operativa de largo plazo de la entidad. **Recomendación:** Priorizar la amortización de pasivos financieros asociados a la adquisición de maquinaria para liberar cupos de crédito y mejorar el respaldo patrimonial real de los activos productivos."
                },
                estructura_deuda: {
                    title: "Concentración Corriente Q3 2025",
                    text: "**Aspecto Positivo:** La gestión eficiente del capital de trabajo ha permitido reducir el costo financiero implícito en las cuentas por pagar comerciales con los principales proveedores de la empresa. **Aspecto Negativo:** La concentración de deuda de corto plazo se mantiene en niveles elevados (54.32% promedio), lo que obliga a mantener un ritmo de ventas acelerado para evitar baches de liquidez operativa. **Recomendación:** Establecer un calendario de pagos escalonado que permita suavizar los picos de exigibilidad de pasivos corrientes y optimizar el uso de los excedentes temporales de tesorería."
                },
                multiplicador_capital: {
                    title: "Riesgos de Apalancamiento Q3 2025",
                    text: "**Aspecto Positivo:** El apalancamiento financiero ha sido canalizado hacia la diversificación de la cartera de productos, lo que incrementa el potencial de generación de ingresos futuros para la compañía. **Aspecto Negativo:** Un multiplicador de 14.52x promedio anual ratifica la fragilidad de la estructura de capital frente a shocks externos que puedan afectar la rentabilidad operativa del negocio. **Recomendación:** Continuar con la política de austeridad en el gasto administrativo y reinversión de utilidades para fortalecer el patrimonio neto y reducir la exposición al riesgo de crédito bancario."
                },
                capitalizacion: {
                    title: "Financiamiento LP Q3 2025",
                    text: "**Aspecto Positivo:** El balance general consolidado muestra una estructura limpia de gravámenes hipotecarios de largo plazo, lo que conserva la opcionalidad estratégica para futuras capitalizaciones estructurales. **Aspecto Negativo:** El indicador reportado en 0% evidencia una subutilización de las herramientas de financiamiento corporativo que podrían brindar mayor estabilidad al crecimiento de la organización. **Recomendación:** Diseñar una propuesta de emisión de deuda subordinada de largo plazo que permita captar recursos frescos y mejorar la calificación de riesgo crediticio institucional."
                },
                deuda_tangibles: {
                    title: "Garantía de Activo Fijo Q3 2025",
                    text: "**Aspecto Positivo:** Los activos tangibles de la empresa han sido sometidos a un riguroso mantenimiento preventivo, preservando su valor de uso y su capacidad de servir como colateral financiero. **Aspecto Negativo:** Se observa una saturación en la relación pasivo/activos tangibles, lo que incrementa el costo marginal de obtener nuevas líneas de crédito bancario con garantía de activos reales. **Recomendación:** Formalizar un plan de reposición tecnológica que incluya la enajenación de activos depreciados para reducir la base de activos improductivos y mejorar la eficiencia del balance general."
                },
                propiedad_autonomia: {
                    title: "Control de Gestión Q3 2025",
                    text: "**Aspecto Positivo:** El equipo directivo ha demostrado una gran capacidad de resiliencia operativa, manteniendo los márgenes brutos a pesar de la presión en los costos de los insumos internacionales. **Aspecto Negativo:** La autonomía financiera se mantiene en niveles marginales (8.12% promedio), lo que limita la capacidad de la empresa para emprender proyectos de innovación disruptiva de gran escala. **Recomendación:** Presentar a la asamblea de accionistas una propuesta formal de capitalización de utilidades acumuladas para fortalecer la autonomía y la solvencia de la entidad financiera."
                },
                deuda_patrimonio: {
                    title: "Viabilidad de Negocio Q3 2025",
                    text: "**Aspecto Positivo:** El flujo de caja operativo ha sido suficiente para cubrir el servicio de la deuda y los gastos operativos esenciales sin requerir nuevas inyecciones de emergencia de tesorería. **Aspecto Negativo:** La relación deuda/patrimonio de 14.82x promedio es una señal de alerta persistente que debe ser atendida mediante una reestructuración integral del balance patrimonial. **Recomendación:** Implementar un programa de eficiencia operativa que priorice la liberación de recursos de capital de trabajo para amortizar los pasivos más onerosos y mejorar la solvencia."
                }
            }
        },
        "4Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Cierre de Cobertura Q4 2025",
                    text: "**Aspecto Positivo:** El cierre del ejercicio fiscal 2025 muestra el exitoso cumplimiento de los planes de mantenimiento preventivo de la infraestructura operativa principal de la compañía. **Aspecto Negativo:** La cobertura patrimonial cierra en -0.52x promedio, lo que confirma la persistencia de un déficit estructural que debe ser abordado prioritariamente en el presupuesto del próximo año 2026 de la organización. **Recomendación:** Provisionar una reserva especial para la renovación tecnológica de activos críticos, asegurando que el respaldo patrimonial se fortalezca de manera orgánica y sostenible en el tiempo."
                },
                estructura_deuda: {
                    title: "Tensión de Tesorería Q4 2025",
                    text: "**Aspecto Positivo:** Se ha logrado el pago integral de todas las obligaciones laborales y prestaciones sociales de fin de año sin afectar la operatividad comercial del negocio. **Aspecto Negativo:** La concentración de deuda de corto plazo promedia un 52.31%, lo que genera una presión constante sobre la caja para cubrir los vencimientos recurrentes del primer trimestre del próximo año. **Recomendación:** Realizar un saneamiento de las cuentas por pagar al 31 de diciembre para asegurar que los saldos reflejen la realidad de las obligaciones exigibles de corto plazo de la empresa."
                },
                multiplicador_capital: {
                    title: "Punto de Equilibrio Q4 2025",
                    text: "**Aspecto Positivo:** La empresa finaliza el año con una base operativa consolidada y una estructura de costos ajustada a las nuevas condiciones competitivas del mercado regional. **Aspecto Negativo:** El multiplicador de capital de 12.43x promedio indica que la compañía sigue operando en una zona de riesgo financiero moderado ante posibles fluctuaciones en las tasas de interés. **Recomendación:** El dictamen de auditoría debe recomendar una inyección de capital social para restaurar el equilibrio financiero y mejorar los ratios de solvencia y autonomía de cara al cierre fiscal."
                },
                capitalizacion: {
                    title: "Diagnóstico Final Q4 2025",
                    text: "**Aspecto Positivo:** La ausencia de deuda de largo plazo bajo condiciones variables protege a la empresa de incrementos inesperados en el costo del financiamiento estructural externo. **Aspecto Negativo:** Se cierra el ejercicio sin consolidar una estructura de capitalización que brinde estabilidad y soporte al crecimiento proyectado para el próximo quinquenio operativo de la organización. **Recomendación:** Diseñar una estrategia de financiamiento mixto que incluya la emisión de bonos ordinarios y la capitalización de utilidades para alcanzar un ratio de capitalización saludable superior al 25%."
                },
                deuda_tangibles: {
                    title: "Respaldo Final Q4 2025",
                    text: "**Aspecto Positivo:** Los activos tangibles de la empresa conservan un valor comercial significativo que actúa como un colchón de seguridad frente a los acreedores en escenarios de liquidación. **Aspecto Negativo:** La relación deuda/activos tangibles de 0.52x indica que la garantía colateral se ha visto mermada por el crecimiento de los pasivos operativos durante el segundo semestre del año. **Recomendación:** Abstenerse de utilizar los activos productivos como garantía para nuevos créditos hasta que se logre una reducción sustancial del pasivo total mediante la generación interna de caja operativa."
                },
                propiedad_autonomia: {
                    title: "Autonomía de Cierre Q4 2025",
                    text: "**Aspecto Positivo:** La gestión administrativa ha logrado mantener la cohesión del equipo directivo y la fidelidad de los clientes corporativos estratégicos a pesar de los retos financieros. **Aspecto Negativo:** La autonomía del 11.23% al cierre de diciembre es técnicamente baja, lo que significa que el negocio depende prioritariamente de los recursos de terceros para su operación diaria normal. **Recomendación:** Es imperativo que la gerencia financiera presente un plan de salvamento patrimonial a la junta directiva en enero, priorizando la recuperación de la autonomía operativa del negocio."
                },
                deuda_patrimonio: {
                    title: "Viabilidad 2026 Q4 2025",
                    text: "**Aspecto Positivo:** El incremento en el volumen de ventas durante la temporada decembrina proporciona la liquidez necesaria para iniciar el nuevo ciclo operativo de 2026 con recursos frescos. **Aspecto Negativo:** La relación deuda/patrimonio de 14.52x prome- dio mantiene a la empresa en una zona de alto riesgo financiero, dificultando el acceso a grandes licitaciones públicas nacionales. **Recomendación:** Proceder con la capitalización de utilidades o aportes directos de capital antes de la presentación oficial de los estados financieros a los entes de control y vigilancia."
                }
            }
        },
    },

    // === MATRIZ COMPARATIVA MENSUAL (YoY) ===
    Comparative: {
        Months: {
            "1": {
                indicators: {
                    cobertura_fijos: {
                        title: "Enero (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** El salto cuántico de cobertura desde niveles críticos de -5.92x en 2023 a un saludable +1.41x en 2025 demuestra una recuperación patrimonial excepcional y estructural. **Aspecto Negativo:** A pesar de la mejora interanual sostenida, la empresa aún requiere optimizar la rotación de activos fijos para maximizar el margen operativo frente a la base instalada. **Recomendación:** Consolidar el excedente de flujo de caja para prepagar las últimas líneas de crédito vinculadas a infraestructura pesada, asegurando un balance 100% financiado con recursos propios."
                    },
                    estructura_deuda: {
                        title: "Enero (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** La reducción drástica de la deuda corriente, que pasó de niveles de exigibilidad del 15% a porcentajes residuales del 0.28%, libera presión sobre la tesorería de inicio de año. **Aspecto Negativo:** Existe una concentración residual en pasivos de muy corto plazo que, aunque mínimos en valor absoluto, demandan una gestión administrativa constante para su legalización. **Recomendación:** Implementar una política de 'Cero Deuda Financiera' para el primer trimestre dado que el flujo de caja actual permite la autofinanciación total de la operación técnica."
                    },
                    multiplicador_capital: {
                        title: "Enero (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** La normalización del multiplicador de capital, bajando de 16.01x a un ratio óptimo de 1.27x, posiciona a la compañía como una de las más solventes de su sector competitivo. **Aspecto Negativo:** Un apalancamiento excesivamente bajo puede subutilizar el potencial de rentabilidad sobre el capital propio (ROE) si no se encuentran oportunidades de inversión de alto retorno. **Recomendación:** Evaluar la incursión en nuevos mercados nacionales utilizando excedentes patrimoniales sin comprometer la estabilidad lograda en la estructura de capital consolidada durante los últimos tres años."
                    },
                    capitalizacion: {
                        title: "Enero (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** El modelo de capitalización basado en retención de utilidades ha permitido eliminar la dependencia de fondeo externo de largo plazo, reduciendo el riesgo de tasa de interés. **Aspecto Negativo:** El ratio de capitalización en 0% indica que no se están utilizando instrumentos de deuda estructurada que podrían optimizar el WACC corporativo en escenarios de expansión agresiva. **Recomendación:** Mantener la política de capitalización orgánica hasta consolidar un fondo de reserva para contingencias que supere el 30% del activo total antes de buscar financiamiento externo."
                    },
                    deuda_tangibles: {
                        title: "Enero (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** La relación pasivo/activos tangibles ha colapsado desde el 15.02x hasta un insignificante 0.28x, otorgando a la empresa una capacidad de endeudamiento virgen para futuros proyectos estratégicos. **Aspecto Negativo:** La subutilización de los activos tangibles como colateral financiero implica un costo de oportunidad ante posibles adquisiciones de maquinaria que requieran apalancamiento preventivo para no desviar caja operativa. **Recomendación:** Registrar avalúos comerciales actualizados para reflejar un respaldo patrimonial real aún más robusto que el contable, fortaleciendo la posición financiera ante posibles auditores externos."
                    },
                    propiedad_autonomia: {
                        title: "Enero (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** La autonomía financiera ha escalado desde un marginal 6% en 2023 hasta un dominante 78% en 2025, transfiriendo el control absoluto del negocio de los acreedores a los socios. **Aspecto Negativo:** Tal nivel de autonomía podría generar complacencia administrativa en la búsqueda de eficiencias operativas que anteriormente eran impuestas por la rigidez de los convenios bancarios externos. **Recomendación:** Establecer KPIs de eficiencia interna que emulen la disciplina financiera de una entidad altamente endeudada para no perder la agilidad operativa lograda durante la crisis patrimonial."
                    },
                    deuda_patrimonio: {
                        title: "Enero (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La reducción de la solvencia patrimonial de 15.01x a 0.27x representa uno de los saneamientos financieros más exitosos documentados en la historia operativa reciente de la organización empresarial. **Aspecto Negativo:** La velocidad del desapalancamiento ha drenado recursos que podrían haberse destinado a innovación tecnológica disruptiva para ganar cuota de mercado frente a competidores internacionales. **Recomendación:** Reorientar la estrategia financiera hacia el crecimiento agresivo una vez que el ratio de solvencia se ha estabilizado por debajo de 0.50x de manera sostenida interanualmente."
                    }
                }
            },
            "2": {
                indicators: {
                    cobertura_fijos: {
                        title: "Febrero (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** Se consolida el cambio de tendencia de -15.4x en 2023 a +1.5x en 2025, garantizando que cada peso invertido en propiedad y equipo está respaldado por el patrimonio neto. **Aspecto Negativo:** El mantenimiento de esta cobertura depende exclusivamente de la rentabilidad del mes, la cual es estacionalmente más baja que la del primer trimestre operativo actual. **Recomendación:** Establecer un fondo de amortización de activos fijos financiado con el 10% de la utilidad neta mensual para asegurar que la cobertura patrimonial nunca regrese a terreno negativo."
                    },
                    estructura_deuda: {
                        title: "Febrero (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** La concentración de pasivos corrientes bajó del 4.69x al 0.26x, eliminando prácticamente los riesgos de falta de liquidez inmediata para cubrir las obligaciones bancarias de corto plazo. **Aspecto Negativo:** La micro-gestión de pasivos tan pequeños puede elevar proporcionalmente los costos operativos administrativos si no se automatizan los procesos de pago y conciliación con los proveedores. **Recomendación:** Implementar un sistema de pago electrónico directo (EDI) para pasivos recurrentes, aprovechando el volumen mínimo de deuda para reducir el headcount administrativo enfocado en tesorería operativa."
                    },
                    multiplicador_capital: {
                        title: "Febrero (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** La caída del multiplicador de 5.68x a 1.26x asegura que la empresa no sea vulnerable a las fluctuaciones de las tasas de interés de intervención del banco central. **Aspecto Negativo:** La estructura de capital se ha vuelto tan conservadora que el retorno sobre el equity se alinea estrictamente con el retorno sobre activos, perdiendo el beneficio del apalancamiento positivo. **Recomendación:** Considerar el uso estratégico de deuda de fomento con tasas subsidiadas para proyectos de sostenibilidad ambiental que mejoren la imagen corporativa sin comprometer la solvencia patrimonial."
                    },
                    capitalizacion: {
                        title: "Febrero (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** La transparencia de un balance sin deuda de largo plazo simplifica los procesos de debida diligencia ante inversionistas potenciales o procesos de fusión y adquisición futura. **Aspecto Negativo:** La capitalización nula (0%) refleja una subutilización del escudo fiscal generado por los gastos financieros, lo que podría estar elevando la carga tributaria efectiva sobre las utilidades netas. **Recomendación:** Realizar una planeación tributaria integral que evalúe si la inclusión de una línea de crédito de mediano plazo ofrece beneficios fiscales superiores al costo del financiamiento."
                    },
                    deuda_tangibles: {
                        title: "Febrero (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** Con un ratio de 0.27x, los activos tangibles están libres de gravámenes en un 97%, lo cual representa un patrimonio inmobiliario y técnico envidiable para la competencia directa. **Aspecto Negativo:** Existe el riesgo de que el valor en libros de los activos tangibles (maquinaria) no refleje su obsolescencia tecnológica real frente a los nuevos estándares de la industria. **Recomendación:** Programar una renovación técnica parcial de activos fijos utilizando leasing operativo para no afectar la propiedad de los activos actuales y mantener el ratio de garantía real estable."
                    },
                    propiedad_autonomia: {
                        title: "Febrero (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** El incremento de la autonomía del 18% al 79% en el periodo comparativo ratifica el éxito del plan de inyección de capital y reinversión de beneficios propios. **Aspecto Negativo:** El control concentrado en los socios propietarios puede limitar el acceso a mentes directivas externas que exijan participación accionaria para liderar procesos de transformación tecnológica disruptiva. **Recomendación:** Crear un plan de 'Phantom Shares' para cargos ejecutivos clave que incentive la generación de valor patrimonial sin diluir la autonomía accionaria lograda con tanto esfuerzo financiero."
                    },
                    deuda_patrimonio: {
                        title: "Febrero (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La solvencia ha mejorado interanualmente en un 94%, pasando de 4.68x a 0.26x, lo cual blinda a la compañía ante escenarios de recesión económica severa a nivel nacional. **Aspecto Negativo:** Una solvencia tan robusta puede derivar en una política de dividendos excesiva que drene la liquidez necesaria para el capital de trabajo de los meses de alta demanda. **Recomendación:** Definir un payout ratio de dividendos que no supere el 30% de la utilidad neta mientras el ratio de solvencia se mantenga estable en el presente rango de seguridad patrimonial."
                    }
                }
            },
            "3": {
                indicators: {
                    cobertura_fijos: {
                        title: "Marzo (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** El cierre del primer trimestre confirma la solidez de la cobertura, estabilizada en +1.52x frente al -11.74x de 2023, eliminando el riesgo de quiebra técnica operativa. **Aspecto Negativo:** La base de activos fijos ha crecido menos que el patrimonio neto, lo cual indica que la inversión en infraestructura productiva podría estar rezagada frente al crecimiento corporativo total. **Recomendación:** Iniciar un estudio de factibilidad para la ampliación de la planta física o renovación de techware especializado, financiado íntegramente con recursos patrimoniales propios para mantener la cobertura."
                    },
                    estructura_deuda: {
                        title: "Marzo (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** El pasivo corriente bajó del 4.22x al 0.30x, asegurando que el flujo de caja del cierre de trimestre sea destinado a crecimiento y no al servicio de la deuda externa. **Aspecto Negativo:** Se observa una persistente concentración de obligaciones comerciales de muy corto plazo que podrían optimizarse mediante convenios de pronto pago con proveedores estratégicos del sector. **Recomendación:** Negociar descuentos financieros por pago anticipado a 15 días, ya que la solvencia actual permite operar como un generador de liquidez para la cadena de suministro corporativa."
                    },
                    multiplicador_capital: {
                        title: "Marzo (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** El multiplicador de 1.29x indica una estructura de capital de bajo riesgo que permite a la gerencia financiera enfocarse en la eficiencia del margen Ebitda operacional. **Aspecto Negativo:** La ausencia de apalancamiento limita la capacidad de comprar activos estratégicos de competidores en crisis que requieran cierres de negociación rápidos con financiamiento puente bancario. **Recomendación:** Mantener pre-aprobadas líneas de crédito contingentes de 'Tesorería Blindada' para utilizarlas únicamente en adquisiciones estratégicas que incrementen la cuota de mercado neta de la compañía."
                    },
                    capitalizacion: {
                        title: "Marzo (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** El mantenimiento del 0% de capitalización de largo plazo externaliza la solidez del balance a los entes de control, facilitando la obtención de pólizas de cumplimiento masivas. **Aspecto Negativo:** Se pierde la oportunidad de posicionar deuda calificada en el mercado de valores, lo cual sería un hito para la reputación corporativa de la entidad bursátil en el futuro. **Recomendación:** Investigar la emisión ética de bonos verdes o sostenibles de mediano plazo para financiar la transición energética de la operación, elevando el valor de marca e institucional de la empresa."
                    },
                    deuda_tangibles: {
                        title: "Marzo (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** La reducción sistemática de la deuda sobre tangibles del 4.22x al 0.30x interanual libera la totalidad de la maquinaria pesada para ser usada como respaldo en licitaciones públicas. **Aspecto Negativo:** La depreciación contable de los activos tangibles está avanzando más rápido que su reposición física, lo que podría mermar la garantía real neta en los próximos tres años fiscales operativos. **Recomendación:** Implementar una política de reinversión tecnológica recurrente que sustituya el 15% del valor de los activos tangibles anualmente para mantener la modernidad operativa total del negocio."
                    },
                    propiedad_autonomia: {
                        title: "Marzo (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** El ratio de propiedad escaló del 19% al 77% interanualmente, consolidando el dominio absoluto de la asamblea de accionistas sobre el destino estratégico de la organización administrativa. **Aspecto Negativo:** Una autonomía tan elevada puede dificultar la entrada de fondos de capital privado (Private Equity) si la gerencia decidiera buscar una salida a bolsa en el mediano plazo. **Recomendación:** Formalizar protocolos de buen gobierno corporativo que estandaricen la toma de decisiones para que la autonomía no se traduzca en una gestión personalista o poco transparente para terceros."
                    },
                    deuda_patrimonio: {
                        title: "Marzo (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La mejora de solvencia de 4.22x a 0.29x es el pilar que permite proyectar un crecimiento de ventas del 20% para el segundo semestre sin requerir inyecciones de socios. **Aspecto Negativo:** El patrimonio neto concentrado en utilidades retenidas podría verse afectado por cambios en la legislación impositiva sobre reservas, incrementando el impuesto diferido de la entidad bursátil. **Recomendación:** Consultar con expertos tributarios la creación de una reserva legal facultativa para expansión, protegiendo el patrimonio de posibles distribuciones forzosas o cambios en la base gravable estatal."
                    }
                }
            },
            "4": {
                indicators: {
                    cobertura_fijos: {
                        title: "Abril (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** La superación del déficit de cobertura (pasando de -1.17x en 2023 a +1.57x en 2025) ratifica que la empresa ha salido exitosamente de la zona de insolvencia técnica recurrente. **Aspecto Negativo:** El excedente de cobertura de activos podría estar indicando que la empresa posee demasiada caja ociosa que no está rindiendo intereses financieros por encima de la inflación anual. **Recomendación:** Abrir una cuenta de inversiones de renta fija corporativa con el 20% del excedente patrimonial para generar ingresos no operativos que contribuyan al margen neto consolidado del mes."
                    },
                    estructura_deuda: {
                        title: "Abril (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** La compresión del pasivo corriente del 35.25x al 0.30x es una métrica de eficiencia de tesorería sin precedentes que garantiza el funcionamiento operacional sin estrés financiero bancario. **Aspecto Negativo:** La desaparición de la deuda bancaria de corto plazo reduce el contacto recurrente con los analistas de crédito, lo que podría enfriar las relaciones comerciales estratégicas con la banca nacional. **Recomendación:** Mantener una comunicación proactiva con los gerentes de cuenta bancarios, presentándoles los balances de solvencia actuales para garantizar cupos de crédito preferenciales siempre disponibles al negocio."
                    },
                    multiplicador_capital: {
                        title: "Abril (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** La estabilización del multiplicador en 1.29x protege a la empresa de cualquier 'credit crunch' o restricción masiva de liquidez en el sistema financiero colombiano durante este ejercicio fiscal. **Aspecto Negativo:** Un apalancamiento tan bajo penaliza el ROE frente a competidores que, con mayor riesgo, logran rentabilidades sobre el capital superiores mediante el uso de deuda barata externa. **Recomendación:** Mantener la seguridad patrimonial actual, pero estar preparados para re-apalancar la compañía únicamente si el costo de la deuda (Ke) es inferior a la rentabilidad esperada de nuevos proyectos (TIR)."
                    },
                    capitalizacion: {
                        title: "Abril (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** La estructura de capital se mantiene 100% líquida y libre de gravámenes de largo plazo, lo que otorga una flexibilidad total para pivotar el modelo de negocio si es necesario. **Aspecto Negativo:** Al no reportar deuda de largo plazo, la empresa carece de una curva de rendimiento crediticio propia que sea visible para los mercados de capitales institucionales públicos o privados. **Recomendación:** Considerar la estructuración de un crédito de capital de trabajo a 36 meses para mantener activo el historial crediticio de largo plazo y optimizar la relación flujo-deuda-tiempo del balance."
                    },
                    deuda_tangibles: {
                        title: "Abril (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** La relación deuda/activos tangibles ha caído del 35.25x al 0.30x interanual, dejando el 99% de la maquinaria operativa como recurso patrimonial libre para cualquier contingencia financiera. **Aspecto Negativo:** La valoración de los activos tangibles está sujeta a la volatilidad de los precios de mercado, lo que podría sobreestimar el respaldo real si no se descuenta la depreciación técnica. **Recomendación:** Realizar un inventario físico auditado trimestral para conciliar la realidad de los activos tangibles con los saldos del balance general, asegurando la transparencia total ante la asamblea de socios."
                    },
                    propiedad_autonomia: {
                        title: "Abril (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** La autonomía financiera del 77% en abril de 2025, comparada con el 3% de 2023, es el indicador más claro de la soberanía recuperada por la alta gerencia sobre la operación. **Aspecto Negativo:** Existe el riesgo de estancamiento estratégico si la autonomía absoluta no se acompaña de una visión externa crítica que desafíe las proyecciones de crecimiento del equipo directivo interno. **Recomendación:** Fortalecer el papel de los miembros independientes en la junta directiva para asegurar que la autonomía no se convierta en una burbuja de autocomplacencia directiva o falta de innovación estratégica."
                    },
                    deuda_patrimonio: {
                        title: "Abril (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La mejora de la solvencia patrimonial (de 35.24x a 0.29x) es drástica y otorga a la compañía una calificación de riesgo interna equivalente a 'Grado de Inversión' técnico fiscal. **Aspecto Negativo:** La gerencia debe vigilar que la acumulación de utilidades en el patrimonio neto no distorsione el valor intrínseco de la acción para efectos de una futura entrada de socios capitalistas externos. **Recomendación:** Implementar un modelo de valoración de empresas por flujo de caja libre descontado para monitorear el valor real de la compañía ahora que la estructura de capital está totalmente saneada y estable."
                    }
                }
            },
            "5": {
                indicators: {
                    cobertura_fijos: {
                        title: "Mayo (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** La transición de una cobertura negativa de -5.23x en 2024 a un sólido +1.45x en 2025 marca el fin definitivo de la etapa de vulnerabilidad patrimonial estructural del negocio. **Aspecto Negativo:** La base de activos fijos se mantiene estática, lo que sugiere que la mejora en el ratio se debe más al fortalecimiento del patrimonio que a una optimización real de la infraestructura productiva. **Recomendación:** Evaluar la adquisición de software de gestión avanzada (ERP) que, al ser considerado activo intangible o fijo, mejore la capacidad de respuesta operativa sin diluir la cobertura patrimonial lograda."
                    },
                    estructura_deuda: {
                        title: "Mayo (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** La reducción de la exigibilidad inmediata, pasando de un agresivo 28.5x en 2023 a un marginal 0.35x en 2025, garantiza una operatividad libre de presiones de tesorería bancaria. **Aspecto Negativo:** Un ratio de deuda tan comprimido reduce la capacidad de aprovechar el apalancamiento comercial con proveedores que ofrecen plazos de pago a 60 o 90 días sin costo financiero. **Recomendación:** Reactivar el uso de crédito comercial estratégico para financiar inventarios de alta rotación, permitiendo que la caja propia se mantenga invertida en instrumentos de renta fija de corto plazo."
                    },
                    multiplicador_capital: {
                        title: "Mayo (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** El multiplicador de capital se ha estabilizado en 1.34x, una cifra envidiable que refleja una estructura de capital blindada contra volatilidades externas del mercado financiero colombiano actual. **Aspecto Negativo:** Al operar con niveles de apalancamiento tan bajos, la empresa podría estar perdiendo competitividad en términos de escala frente a actores que utilizan deuda para expansiones regionales rápidas. **Recomendación:** Mantener la cautela financiera, pero diseñar un plan estratégico de inversión que contemple un apalancamiento moderado (hasta 2.5x) solo si las oportunidades de crecimiento en cuota de mercado lo justifican."
                    },
                    capitalizacion: {
                        title: "Mayo (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** El balance general presenta una limpieza absoluta de pasivos de largo plazo, lo que proyecta una imagen de máxima solvencia patrimonial ante calificadoras de riesgo y entes de control estatal. **Aspecto Negativo:** La ausencia de deuda de largo plazo (0% capitalización) priva al balance de una estructura de fondeo que iguale la duración de los activos fijos con la de los pasivos financieros. **Recomendación:** Considerar la emisión de títulos de deuda privada de mediano plazo para financiar la modernización de los sistemas digitales, creando una estructura de capital más equilibrada y eficiente."
                    },
                    deuda_tangibles: {
                        title: "Mayo (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** La caída del ratio deuda/tangibles de 28.5x a 0.35x en dos años es un hito de saneamiento que deja el 96% de la maquinaria operativa libre para ser usada como colateral bursátil. **Aspecto Negativo:** El valor contable de los activos tangibles está sujeto a depreciación lineal, lo cual puede no reflejar el valor de reposición real necesario para mantener la competitividad tecnológica del negocio operativo. **Recomendación:** Institucionalizar la práctica de avalúos técnicos cada 18 meses para asegurar que el respaldo patrimonial declarado sea una representación fiel de la capacidad de garantía real de la organización."
                    },
                    propiedad_autonomia: {
                        title: "Mayo (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** El salto en la autonomía financiera del 3% al 74% interanual es el resultado de una gestión disciplinada enfocada en la recuperación del control accionario sobre el destino estratégico empresarial. **Aspecto Negativo:** Una autonomía tan dominante puede llevar a un aislamiento de las mejores prácticas de gobernanza corporativa que suelen exigir los inversores institucionales o acreedores de primer nivel. **Recomendación:** Implementar un comité de auditoría independiente que reporte directamente a la asamblea de socios, emulando la transparencia exigida por los mercados de capitales externos a pesar de la autonomía lograda."
                    },
                    deuda_patrimonio: {
                        title: "Mayo (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La solvencia patrimonial ha pasado de un estado de alerta roja (28.5x) a una solidez granítica (0.34x), permitiendo a la empresa operar con total independencia de las fluctuaciones del crédito bancario. **Aspecto Negativo:** La velocidad del desapalancamiento ha generado un excedente de capital que, si no se reinvierte proactivamente, podría erosionar el valor de la compañía en términos reales frente a la inflación anual. **Recomendación:** Diseñar una estrategia de diversificación de inversiones corporativas que permita rentabilizar el exceso de patrimonio sin comprometer el ratio de solvencia logrado en el presente ejercicio fiscal."
                    }
                }
            },
            "6": {
                indicators: {
                    cobertura_fijos: {
                        title: "Junio (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** La recuperación desde un ratio de cobertura de -2.64x en 2024 hasta un +1.35x en 2025 confirma la eficacia de la política de capitalización de utilidades del primer semestre del año. **Aspecto Negativo:** Al comparar con el cierre de 2023, la mejora es radical, pero se observa una ligera desaceleración en el ritmo de fortalecimiento de la cobertura respecto al trimestre inmediatamente anterior. **Recomendación:** Vincular los planes de mantenimiento mayor de infraestructura a las metas de generación de flujo de caja libre, evitando que nuevas inversiones físicas comprometan la estabilidad de la cobertura patrimonial."
                    },
                    estructura_deuda: {
                        title: "Junio (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** Se ha superado el escenario de inestabilidad extrema del año 2023 (donde el ratio era negativo por patrimonio erosionado) alcanzando una estructura de deuda corriente de apenas 0.43x. **Aspecto Negativo:** El incremento marginal del pasivo corriente en este mes podría indicar un ligero retraso en el ciclo de pagos a proveedores estratégicos de insumos técnicos para la operación del negocio. **Recomendación:** Ajustar el presupuesto de tesorería para el segundo semestre, priorizando la liquidación de pasivos corrientes para retornar al rango de 0.30x que se mantenía en el primer trimestre del año."
                    },
                    multiplicador_capital: {
                        title: "Junio (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** El multiplicador de capital en 1.43x sigue representando una de las estructuras de balance más seguras del mercado, minimizando la exposición de los socios ante contingencias legales o financieras. **Aspecto Negativo:** Existe una correlación directa entre el bajo apalancamiento y un crecimiento moderado de los ingresos, sugiriendo que la prudencia financiera podría estar limitando la velocidad de expansión comercial. **Recomendación:** Realizar un análisis de sensibilidad para determinar un nivel de apalancamiento óptimo que acelere el crecimiento sin poner en riesgo la calificación de solvencia técnica lograda actualmente."
                    },
                    capitalizacion: {
                        title: "Junio (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** La ausencia total de deuda de largo plazo permite a la organización enfrentar el cierre del semestre con cero riesgos de refinanciación de pasivos permanentes ante el sistema financiero institucional. **Aspecto Negativo:** No utilizar el mercado de deuda impide que la empresa acceda a indicadores comparativos de eficiencia de capital que solo el rigor de los acreedores externos suele imponer a las grandes corporaciones. **Recomendación:** Evaluar la apertura de una línea de crédito 'revolving' de largo plazo con un banco internacional, utilizándola únicamente como respaldo de liquidez para mejorar el perfil de capitalización estratégica."
                    },
                    deuda_tangibles: {
                        title: "Junio (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** Con un ratio de 0.44x sobre activos tangibles, la compañía posee una capacidad de respuesta patrimonial inmediata para respaldar cualquier requerimiento de garantía en nuevas licitaciones de gran envergadura. **Aspecto Negativo:** Se observa una ligera presión al alza en este indicador comparado con el mes anterior, lo que sugiere una mayor utilización de los activos fijos para respaldar compromisos operativos temporales. **Recomendación:** Realizar una revisión de las pólizas de seguro de los activos tangibles, asegurando que la cobertura de siniestros esté alineada con el valor patrimonial de respaldo que representan en el balance."
                    },
                    propiedad_autonomia: {
                        title: "Junio (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** La autonomía del 70% al cierre del semestre consolida el giro estratégico iniciado en 2023, donde se pasó de una situación de intervención técnica 'de facto' a una soberanía económica real. **Aspecto Negativo:** La caída de 4 puntos en la autonomía respecto a mayo (74% vs 70%) debe ser monitoreada para evitar que sea el inicio de una reversión de la tendencia de independencia financiera lograda. **Recomendación:** Restringir el gasto no operativo durante el tercer trimestre para asegurar que la autonomía financiera retorne a niveles superiores al 75%, blindando el control de los socios propietarios originales."
                    },
                    deuda_patrimonio: {
                        title: "Junio (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La solvencia de 0.43x es excepcionalmente buena si se compara con los ratios de dos dígitos de los periodos de crisis operativa, garantizando la viabilidad del negocio a mediano plazo institucional. **Aspecto Negativo:** El ligero deterioro mensual del ratio (de 0.34x a 0.43x) exige una revisión de la política de dividendos para asegurar que no se estén drenando los fondos propios más allá de la capacidad de generación interna. **Recomendación:** Implementar un tablero de control de solvencia en tiempo real que alerte a la gerencia financiera ante cualquier incremento del ratio por encima de 0.60x, preservando la calidad patrimonial consolidada."
                    }
                }
            },
            "7": {
                indicators: {
                    cobertura_fijos: {
                        title: "Julio (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** Se mantiene la tendencia de respaldo positivo (+1.40x) frente a los niveles deficitarios de años anteriores, asegurando que el crecimiento físico de la empresa no se base en pasivos financieros exigibles. **Aspecto Negativo:** El ratio de cobertura se ha estancado en el rango de 1.40x durante el último bimestre, evidenciando una pausa en el proceso de fortalecimiento patrimonial sobre la base de activos fijos instalada. **Recomendación:** Incentivar la reinversión de beneficios operativos en activos tecnológicos de última generación que mejoren la eficiencia sin deteriorar la robusta cobertura patrimonial actual de la entidad."
                    },
                    estructura_deuda: {
                        title: "Julio (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** La reducción sistemática de la deuda corriente desde el 7.06x en 2023 al 0.40x en 2025 libera el flujo operativo mensual para ser reinvertido en mercadeo y expansión de los servicios técnicos. **Aspecto Negativo:** Una estructura de deuda tan liviana puede generar una falta de apalancamiento operativo que, en meses de estacionalidad baja, presione los márgenes de rentabilidad neta sobre la inversión total. **Recomendación:** Optimizar el manejo de las cuentas por cobrar para que el ciclo de efectivo propio financie totalmente los pasivos corrientes, eliminando cualquier costo financiero por utilización de cupos de sobregiro bancarios."
                    },
                    multiplicador_capital: {
                        title: "Julio (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** El multiplicador de 1.40x ratifica una estructura de capital de bajo riesgo que permite a la compañía navegar periodos de incertidumbre macroeconómica nacional con una estabilidad financiera superior a sus pares. **Aspecto Negativo:** El costo de oportunidad de no utilizar capital de terceros para financiar proyectos de alta rentabilidad podría estar mermando el valor intrínseco de la empresa para los accionistas minoritarios actuales. **Recomendación:** Evaluar la posibilidad de realizar inversiones estratégicas en el exterior, utilizando una mezcla equilibrada de capital propio y deuda de bajo costo para diversificar el riesgo de mercado sistémico."
                    },
                    capitalizacion: {
                        title: "Julio (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** La ausencia de deudas de largo plazo otorga una flexibilidad inigualable para negociar fusiones o alianzas estratégicas donde la solidez del balance sea el principal activo de negociación del negocio. **Aspecto Negativo:** Al no reportar capitalización estructural (0%), la empresa no aprovecha las deducciones fiscales por intereses que podrían mejorar el flujo de caja neto después de impuestos de la entidad corporativa. **Recomendación:** Consultar con un panel de expertos fiscales sobre los beneficios de una estructura de capital mixta, buscando el punto de equilibrio óptimo entre solvencia patrimonial y eficiencia tributaria operativa."
                    },
                    deuda_tangibles: {
                        title: "Julio (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** Los activos tangibles operan bajo un ratio de deuda de 0.41x, lo que significa que el 95% de la capacidad de garantía inmobiliaria y técnica de la organización está disponible para uso estratégico futuro. **Aspecto Negativo:** Se debe prevenir el riesgo de obsolescencia de los activos tangibles mediante un plan de renovación que se financie con la depreciación acumulada para no afectar la posición de garantía real neta. **Recomendación:** Mantener actualizada la valoración de mercado de los activos fijos críticos, asegurando que la garantía real refleje valores de realización comercial y no solo valores históricos de adquisición contables oficiales."
                    },
                    propiedad_autonomia: {
                        title: "Julio (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** La autonomía financiera del 71% representa un blindaje estratégico contra las presiones externas de los acreedores, permitiendo una toma de decisiones alineada estrictamente con los intereses de los socios. **Aspecto Negativo:** La concentración del riesgo en el capital propio implica que cualquier pérdida operativa debe ser absorbida íntegramente por los accionistas sin el amortiguador que proporcionaría una estructura de financiamiento externa. **Recomendación:** Fortalecer el fondo de contingencia corporativo con aportes mensuales equivalentes al 5% de la facturación neta, protegiendo la autonomía financiera ante posibles picos de siniestralidad u otros riesgos operativos inesperados."
                    },
                    deuda_patrimonio: {
                        title: "Julio (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La solvencia patrimonial se mantiene en un óptimo 0.40x, superando con creces las metas corporativas de saneamiento definidas al inicio del plan de reestructuración financiera de la organización empresarial. **Aspecto Negativo:** Existe el riesgo de que la gerencia relaje los controles de gastos operativos ahora que la solvencia no es una preocupación inmediata, lo que podría erosionar los márgenes de utilidad neta futuros. **Recomendación:** Mantener la disciplina de 'Austeridad Estratégica' para que la solvencia patrimonial lograda se convierta en una ventaja competitiva permanente que permita financiar la innovación disruptiva del negocio."
                    }
                }
            },
            "8": {
                indicators: {
                    cobertura_fijos: {
                        title: "Agosto (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** La estabilidad de la cobertura en +1.41x confirma que la estrategia de autofinanciación de la infraestructura física ha sido exitosa y sostenible a lo largo de los tres periodos fiscales comparados. **Aspecto Negativo:** El ratio de cobertura patrimonial presenta una sensibilidad nula ante el crecimiento operativo de la empresa, sugiriendo un modelo de negocio que ha alcanzado su techo de eficiencia física actual instalada. **Recomendación:** Diseñar un plan de expansión de la capacidad operativa que se apalanque en la robustez patrimonial lograda, buscando incrementar la escala del negocio sin deteriorar el ratio de respaldo de activos fijos."
                    },
                    estructura_deuda: {
                        title: "Agosto (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** Se mantiene la compresión del pasivo corriente en un nivel de 0.40x, eliminando por completo los históricos riesgos de asfixia financiera por vencimientos bancarios inminentes de corto plazo operativos. **Aspecto Negativo:** La extrema reducción de la deuda comercial puede estar afectando el poder de negociación con los proveedores que prefieren clientes con mayor volumen de utilización de líneas de crédito rotativo institucionales. **Recomendación:** Mantener las líneas de crédito abiertas y con movimientos simbólicos para preservar la relación con la banca, asegurando que el perfil de deuda siga siendo excelente para futuras calificaciones de riesgo externas."
                    },
                    multiplicador_capital: {
                        title: "Agosto (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** Un multiplicador de 1.39x dota a la empresa de una capacidad de resiliencia inigualable ante choques de liquidez sectoriales o incrementos en las tasas de interés de colocación crediticia nacional. **Aspecto Negativo:** El bajo apalancamiento restringe la capacidad de realizar inversiones masivas en marketing digital que hoy en día son críticas para sostener el crecimiento de la facturación en un entorno competitivo agresivo. **Recomendación:** Asignar un presupuesto extraordinario para la adquisición de nuevas cuentas, financiado con el excedente de caja generado por la baja carga de intereses de la estructura de capital actual de la empresa."
                    },
                    capitalizacion: {
                        title: "Agosto (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** El balance reporta un 0% constante en capitalización estructural, traduciéndose en una independencia total de los prestamistas de largo plazo y de sus recurrentes exigencias de control operativo. **Aspecto Negativo:** Se desaprovecha la oportunidad de estructurar la empresa bajo un modelo de 'Capital Eficiente' que combine fondos propios con deuda de largo plazo para maximizar la rentabilidad de los inversionistas. **Recomendación:** Considerar la estructuración de un crédito de inversión a 10 años para la adquisición de sede propia, transformando un gasto operativo (arriendo) en una inversión patrimonial de larga duración y bajo riesgo."
                    },
                    deuda_tangibles: {
                        title: "Agosto (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** La garantía real de los activos tangibles está libre en un 96%, lo que representa un valor de respaldo patrimonial líquido de primer orden para cualquier operación de banca de inversión futura. **Aspecto Negativo:** La gestión de activos tangibles requiere una vigilancia sobre su valor comercial ante la posible entrada de nuevas tecnologías que hagan obsoleta la maquinaria actual de la organización corporativa. **Recomendación:** Realizar un test de deterioro de activos fijos al cierre del tercer trimestre, asegurando que el valor registrado en el balance no sobrestime la capacidad de garantía real neta de la estructura financiera."
                    },
                    propiedad_autonomia: {
                        title: "Agosto (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** La autonomía financiera del 72% ratifica el exitoso saneamiento patrimonial, donde los socios han recuperado plenamente el control estratégico y la libertad de rumbo del modelo de negocio corporativo. **Aspecto Negativo:** En este mes se observa una ligera meseta en el crecimiento de la autonomía, indicando que el ritmo de generación de utilidades neta se ha estabilizado frente al crecimiento de los activos totales. **Recomendación:** Implementar políticas de eficiencia energética y operativa para reducir los costos variables, impulsando el margen neto y propiciando un nuevo ciclo de fortalecimiento de la autonomía financiera propia."
                    },
                    deuda_patrimonio: {
                        title: "Agosto (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La solvencia de 0.39x sitúa a la compañía en el percentil superior de estabilidad financiera de su sector, brindando una confianza absoluta a todos los grupos de interés de la organización social. **Aspecto Negativo:** La gerencia financiera debe evitar la tentación de realizar inversiones riesgosas en el mercado bursátil con el excedente de liquidez, protegiendo la solvencia patrimonial lograda con tanto esfuerzo administrativo. **Recomendación:** Priorizar la inversión en el core-business o en activos de renta fija de máxima calificación (AAA) para asegurar que el ratio de solvencia se mantenga siempre dentro de los parámetros de alta seguridad institucional."
                    }
                }
            },
            "9": {
                indicators: {
                    cobertura_fijos: {
                        title: "Septiembre (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** La resiliencia de la cobertura patrimonial, que se sitúa en +1.34x frente al déficit crónico de -2.36x en 2024, demuestra que la estructura de capital ha alcanzado un estado de madurez financiera envidiable. **Aspecto Negativo:** Al entrar en el último trimestre, se observa una ligera presión sobre los activos corrientes que podría distraer recursos destinados a la capitalización de la base de activos fijos del negocio. **Recomendación:** Priorizar la autogeneración de recursos para cualquier expansión tecnológica de fin de año, evitando desviar el flujo de caja operativo hacia inversiones no estratégicas que degraden la cobertura patrimonial."
                    },
                    estructura_deuda: {
                        title: "Septiembre (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** El perfil de deuda corriente en 0.44x es un testimonio de la disciplina financiera aplicada, permitiendo un cierre de año con absoluta tranquilidad en términos de exigibilidad bancaria inmediata. **Aspecto Negativo:** La reducción de la deuda respecto al año anterior (1.57x) es masiva, pero el estancamiento mensual sugiere que se ha llegado al límite de optimización del pasivo corriente sin afectar la operatividad. **Recomendación:** Analizar la posibilidad de sustituir parte del pasivo comercial por un crédito de fomento industrial que ofrezca mejores tasas y mayor plazo, optimizando la estructura de deuda institucional."
                    },
                    multiplicador_capital: {
                        title: "Septiembre (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** El multiplicador de 1.44x refleja un equilibrio perfecto entre la seguridad de los socios y la capacidad de movilizar recursos para la generación de valor económico agregado en la operación. **Aspecto Negativo:** Operar con un apalancamiento tan bajo exige una eficiencia operativa extrema, ya que no se tiene el beneficio del 'escudo fiscal' ni del impulso que proporciona el capital ajeno de bajo costo. **Recomendación:** Monitorear el retorno sobre el capital invertido (ROIC) mensualmente para asegurar que el bajo apalancamiento no esté castigando la rentabilidad neta final esperada por los accionistas principales."
                    },
                    capitalizacion: {
                        title: "Septiembre (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** La posición de 0% de deuda de largo plazo otorga a la empresa una 'capacidad de endeudamiento virgen' para enfrentar cualquier oportunidad de adquisición o fusión estratégica que surja en el mercado. **Aspecto Negativo:** La inexistencia de una estructura de capital de largo plazo impide proyectar una planificación de inversiones a 5 o 10 años que sea verdaderamente transformacional para el modelo de negocio. **Recomendación:** Diseñar un plan maestro de inversión 2026-2030 que contemple el uso de deuda estructurada para financiar la internacionalización de la empresa, aprovechando la solidez actual del balance general."
                    },
                    deuda_tangibles: {
                        title: "Septiembre (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** La relación deuda/tangibles de 0.45x consolida un escenario de máximo respaldo para los acreedores, elevando la calificación crediticia implícita de la compañía ante todo el ecosistema financiero colombiano. **Aspecto Negativo:** Se debe vigilar que el valor de los activos tangibles no se vea amenazado por el cambio de ciclo económico, lo que podría reducir su atractivo como garantía real en el futuro inmediato. **Recomendación:** Gestionar la certificación de los activos fijos bajo normas de calidad internacionales para incrementar su valor de reventa y, por ende, fortalecer la position de garantía real de la entidad corporativa."
                    },
                    propiedad_autonomia: {
                        title: "Septiembre (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** La autonomía financiera del 69% asegura que el control de la empresa reside plenamente en sus dueños, permitiendo una agilidad en la toma de decisiones que los competidores apalancados no poseen. **Aspecto Negativo:** Una autonomía tan elevada puede incentivar una zona de confort en la gerencia, reduciendo la urgencia por alcanzar niveles de rentabilidad que un acreedor externo exigiría de forma permanente y rigurosa. **Recomendación:** Establecer metas internas de desempeño financiero que simulen las condiciones de un mercado de capitales abierto, forzando a la organización a mantener su competitividad a pesar de su autonomía."
                    },
                    deuda_patrimonio: {
                        title: "Septiembre (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La solvencia de 0.44x es un indicador de salud financiera robusta, blindando a la organización frente a crisis de pago sistémicas que puedan afectar a otros actores menos capitalizados del sector técnico. **Aspecto Negativo:** Se detecta una ligera tendencia al alza en el ratio comparado con mayo (0.34x), lo que amerita un análisis detallado sobre el origen de los nuevos pasivos generados en el último cuatrimestre operativo. **Recomendación:** Ajustar la política de compras de fin de año para evitar un repunte innecesario del ratio de solvencia, preservando la calidad patrimonial lograda durante todo el presente ejercicio fiscal."
                    }
                }
            },
            "10": {
                indicators: {
                    cobertura_fijos: {
                        title: "Octubre (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** El ratio de +1.44x en cobertura patrimonial de activos fijos confirma que la empresa ha consolidado un modelo de crecimiento sostenible, financiado con el esfuerzo de su propia operación comercial. **Aspecto Negativo:** El diferencial de mejora respecto al año anterior es notable, pero la estabilidad actual sugiere que se requieren nuevas inyecciones de capital si se desea escalar la infraestructura física significativamente. **Recomendación:** Evaluar esquemas de 'Lease-Back' sobre activos fijos no críticos para liberar liquidez sin comprometer la operatividad, manteniendo una cobertura patrimonial saludable sobre los activos productivos estratégicos de la compañía."
                    },
                    estructura_deuda: {
                        title: "Octubre (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** Con una deuda corriente de solo 0.41x, la entidad se posiciona como una de las más solventes de su categoría, lo que facilita las negociaciones de precios por pronto pago con proveedores locales. **Aspecto Negativo:** Se observa una concentración de la liquidez en cuentas de ahorro que generan bajos rendimientos, en lugar de utilizar ese capital para cancelar pasivos que podrían tener costos ocultos de oportunidad. **Recomendación:** Implementar un sistema de tesorería centralizada que optimice los excedentes de caja para liquidar pasivos corrientes de manera estratégica, mejorando el margen financiero neto de la operación global de la empresa."
                    },
                    multiplicador_capital: {
                        title: "Octubre (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** Un multiplicador de 1.41x es garantía de paz financiera para los socios, permitiendo que la empresa enfoque todos sus esfuerzos en la innovación y el servicio al cliente más que en la gestión de pasivos. **Aspecto Negativo:** Este nivel de apalancamiento podría ser percibido por algunos inversores de crecimiento como una falta de agresividad comercial en un mercado que premia la expansión rápida mediante deuda barata. **Recomendación:** Realizar un 'Benchmarking' sectorial para validar si el apalancamiento actual es el óptimo para el segmento de mercado en el que participa la empresa, ajustando la estrategia si es necesario."
                    },
                    capitalizacion: {
                        title: "Octubre (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** El reporte de 0% de capitalización externa es una ventaja competitiva en periodos de tasas de interés al alza, ya que la empresa no sufre el impacto directo del encarecimiento del dinero bancario. **Aspecto Negativo:** Se pierde el beneficio de la diversificación de fuentes de fondeo que permitiría a la organización acceder a recursos de gran escala para proyectos hidroeléctricos o de infraestructura de gran porte. **Recomendación:** Iniciar un proceso de pre-calificación crediticia con la banca de desarrollo para estar listos ante la posibilidad de requerir financiamiento de largo plazo para proyectos de inversión de alto impacto futuro."
                    },
                    deuda_tangibles: {
                        title: "Octubre (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** La garantía real de los activos tangibles, con una deuda de solo el 42%, representa un seguro de vida patrimonial para la organización ante cualquier eventualidad que exija liquidez inmediata extrema. **Aspecto Negativo:** El mantenimiento preventivo de los activos tangibles no debe descuidarse, ya que su valor como garantía real depende directamente de su estado de conservación y funcionalidad operativa comprobable documentalmente. **Recomendación:** Digitalizar toda la documentación de soporte de la propiedad y mantenimiento de los activos tangibles, facilitando cualquier proceso de auditoría o valoración de respaldo patrimonial ante terceros interesados."
                    },
                    propiedad_autonomia: {
                        title: "Octubre (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** La autonomía del 71% otorga una soberanía total sobre el flujo de caja, permitiendo que la reinversión de utilidades sea una decisión puramente empresarial y no impuesta por acuerdos de deuda bancarios. **Aspecto Negativo:** La autonomía financiera podría verse amenazada si se decide un reparto de dividendos agresivo antes de asegurar el capital de trabajo necesario para el primer trimestre del próximo año fiscal. **Recomendación:** Definir una política de dividendos conservadora que priorice el fortalecimiento de la autonomía patrimonial, asegurando que el ratio no descienda de niveles de seguridad del 65% bajo ninguna circunstancia."
                    },
                    deuda_patrimonio: {
                        title: "Octubre (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La solvencia patrimonial en 0.41x supera ampliamente los estándares exigidos por los proveedores internacionales más rigurosos, garantizando un flujo constante de suministros para la operación técnica global. **Aspecto Negativo:** Existe una correlación entre el fortalecimiento de la solvencia y una mayor carga tributaria, lo que exige una planeación fiscal más sofisticada para no erosionar la generación de flujo de caja libre neto. **Recomendación:** Contratar una auditoría fiscal preventiva para optimizar las deducciones permitidas por ley, de modo que la solvencia patrimonial se traduzca también en una mayor eficiencia financiera tributaria operativa."
                    }
                }
            },
            "11": {
                indicators: {
                    cobertura_fijos: {
                        title: "Noviembre (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** El salto en la cobertura desde un -11.93x en 2023 hasta un robusto +1.48x en 2025 es una hazaña de gestión que restaura la confianza total de los inversionistas en el modelo de negocio. **Aspecto Negativo:** La brecha de cobertura se ha cerrado mediante la retención de utilidades, pero el crecimiento orgánico de los activos fijos parece haberse estancado en este último periodo del año fiscal en curso. **Recomendación:** Planificar una renovación parcial del parque de activos fijos para el próximo ejercicio, aprovechando la excelente posición de cobertura lograda para negociar condiciones de adquisición preferenciales en el mercado."
                    },
                    estructura_deuda: {
                        title: "Noviembre (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** Un nivel de deuda corriente de 0.38x permite a la gerencia enfrentar el cierre de año sin las angustias típicas de liquidez, pudiendo honrar todos los compromisos laborales y operativos sin sobre saltos. **Aspecto Negativo:** La reducción de pasivos corrientes es tan profunda que podría estar indicando una subutilización del crédito comercial que los proveedores ofrecen como incentivo por volumen de compra estacional técnico. **Recomendación:** Aprovechar los descuentos por pronto pago ofrecidos por los proveedores estratégicos, utilizando el excedente de caja para mejorar el costo de ventas y aumentar el margen operativo bruto de la empresa."
                    },
                    multiplicador_capital: {
                        title: "Noviembre (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** Con un multiplicador de 1.38x, la empresa reporta una de las estructuras de capital más sólidas y menos riesgosas de todo su historial contable, atrayendo miradas de posibles socios institucionales. **Aspecto Negativo:** Este nivel de apalancamiento, aunque seguro, limita la rentabilidad sobre el patrimonio (ROE) en comparación con empresas que logran un apalancamiento eficiente de nivel 3x o superior en el mercado local. **Recomendación:** Diseñar una estrategia de 'Crecimiento Apalancado Inteligente' para el futuro, donde se utilicen recursos externos solo para proyectos que garanticen un retorno sustancialmente superior al costo de la deuda."
                    },
                    capitalizacion: {
                        title: "Noviembre (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** La ausencia de deudas de largo plazo (0%) blinda el balance contra la volatilidad de las tasas de interés internacionales, lo cual es crítico en un entorno de devaluación de la moneda local colombiana. **Aspecto Negativo:** Al no tener historial reciente de deuda de largo plazo pagada, la empresa podría enfrentar dificultades para obtener préstamos de gran volumen de forma rápida en caso de una emergencia operativa. **Recomendación:** Establecer relaciones de largo plazo con bancos para el financiamiento de proyectos, incluso si es por montos moderados, para construir un historial crediticio sólido y verificable de largo aliento institucional."
                    },
                    deuda_tangibles: {
                        title: "Noviembre (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** El ratio de 0.39x sobre activos tangibles es un indicador de solvencia excepcional que permite a la compañía actuar con total libertad estratégica en sus negociaciones comerciales de fin de año fiscal. **Aspecto Negativo:** Se debe asegurar que el valor en libros de los activos tangibles esté respaldado por peritajes técnicos vigentes, evitando sorpresas desagradables durante la consolidación de los estados financieros de cierre de año. **Recomendación:** Institucionalizar la revisión anual de la vida útil de los activos tangibles, ajustando las depreciaciones para que el ratio de garantía real sea una representación fiel de la realidad económica de la empresa."
                    },
                    propiedad_autonomia: {
                        title: "Noviembre (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** El incremento de la autonomía al 72% consolida el control de los socios sobre la empresa, garantizando que el rumbo estratégico no esté condicionado por las exigencias de terceros ajenos a la organización. **Aspecto Negativo:** Una autonomía tan alta puede generar una falta de autocrítica en la alta dirección, ya que no existe la presión externa que suele traer consigo el financiamiento bancario de gran escala empresarial. **Recomendación:** Fomentar la participación de consejeros externos independientes en la junta directiva para aportar una visión objetiva y desafiante que complemente la sólida autonomía financiera lograda por los socios."
                    },
                    deuda_patrimonio: {
                        title: "Noviembre (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** La solvencia de 0.38x es un hito de sostenibilidad que sitúa a la compañía en el percentil de máximo cumplimiento financiero de su sector, elevando el valor intrínseco de cada acción corporativa social. **Aspecto Negativo:** Se observa una desaceleración en el ritmo de mejora de la solvencia, indicando que se ha alcanzado el punto de equilibrio óptimo entre el control de pasivos y la necesidad de financiamiento operativo. **Recomendación:** Mantener la política de prudencia financiera, pero permitiendo una mayor flexibilidad operativa en la asignación de recursos para el mercadeo y la captación de nuevos clientes corporativos estratégicos."
                    }
                }
            },
            "12": {
                indicators: {
                    cobertura_fijos: {
                        title: "Diciembre (YoY) - Respaldo Fijo",
                        text: "**Aspecto Positivo:** El cierre de año con una cobertura de +1.59x representa el éxito rotundo del plan de estabilización patrimonial integral, superando con creces la situación deficitaria extrema de finales de 2023. **Aspecto Negativo:** Al ser el mes de mayor actividad administrativa, el riesgo de incurrir en gastos extraordinarios que afecten la cobertura patrimonial de fin de año es elevado y debe ser monitoreado rigurosamente. **Recomendación:** Realizar un cierre contable de activos fijos antes de la finalización del periodo, asegurando que todas las mejoras capitalizables estén debidamente registradas para maximizar el ratio de cobertura patrimonial."
                    },
                    estructura_deuda: {
                        title: "Diciembre (YoY) - Perfil Deuda",
                        text: "**Aspecto Positivo:** Finalizar el ejercicio con un ratio de deuda corriente de 0.33x dota a la empresa de una liquidez estructural poderosa para iniciar el próximo año con una base operativa totalmente saneada y competitiva. **Aspecto Negativo:** La drástica reducción de la deuda desde el 12.01x de 2023 ha requerido un sacrificio de crecimiento en volumen que ahora debe ser recuperado mediante una gestión comercial más agresiva y enfocada. **Recomendación:** Proyectar un presupuesto para el primer trimestre del próximo año que capitalice la solidez del balance actual para capturar nuevas oportunidades de negocio sin poner en riesgo el perfil de deuda."
                    },
                    multiplicador_capital: {
                        title: "Diciembre (YoY) - Apalancamiento",
                        text: "**Aspecto Positivo:** El multiplicador de capital en 1.33x es el sello de una empresa con una gestión de riesgos de primer nivel, lista para enfrentar cualquier reto de expansión o consolidación en el mercado nacional. **Aspecto Negativo:** El bajo apalancamiento financiero impone un techo a la rentabilidad porcentual de los accionistas, obligándolos a depender exclusivamente de la eficiencia operativa para mejorar sus retornos económicos netos reales. **Recomendación:** Evaluar la creación de un fondo de inversión interno para proyectos de innovación disruptiva, financiado por la excelente capacidad de apalancamiento que la empresa tiene actualmente disponible."
                    },
                    capitalizacion: {
                        title: "Diciembre (YoY) - Capitalización",
                        text: "**Aspecto Positivo:** El balance general cierra el año totalmente libre de deudas de largo plazo (0%), lo que confiere una estabilidad absoluta y una imagen de solvencia inquebrantable ante bancos y proveedores. **Aspecto Negativo:** Esta estructura de capital 'plana' carece de las ventajas de diversificación de riesgos y costos de fondeo que una buena estructura de deuda de largo aliento suele proporcionar a las grandes corporaciones operativas. **Recomendación:** Explorar mecanismos de financiamiento alternativos para el próximo año, buscando diversificar las fuentes de capital sin comprometer la independencia financiera ganada con tanto rigor administrativo."
                    },
                    deuda_tangibles: {
                        title: "Diciembre (YoY) - Garantía Real",
                        text: "**Aspecto Positivo:** Los activos tangibles cierran el año con un respaldo de deuda del 34%, lo que significa que el 66% de su valor está totalmente libre para ser utilizado como garantía en operaciones estratégicas futuras. **Aspecto Negativo:** La valoración de los activos tangibles debe ser auditada externamente para asegurar que el cierre de estados financieros refleje la realidad comercial de mercado y no solo el valor contable histórico. **Recomendación:** Programar un avalúo técnico integral para el mes de enero, actualizando las bases de valoración de la garantía real de la empresa y fortaleciendo la confianza de todos los grupos de interés patrimonial."
                    },
                    propiedad_autonomia: {
                        title: "Diciembre (YoY) - Autonomía",
                        text: "**Aspecto Positivo:** Una autonomía financiera del 75% al cierre del ejercicio es la culminación de una estrategia de empoderamiento patrimonial que devuelve a los socios el mando total sobre el destino de la organización. **Aspecto Negativo:** El riesgo de complacencia estratégica aumenta proporcionalmente a la autonomía lograda, por lo que es vital mantener indicadores de gestión operativa exigentes para no perder el dinamismo comercial del negocio. **Recomendación:** Diseñar un plan de incentivos para la alta gerencia vinculado a la generación de valor económico (EVA) y no solo a la estabilidad del balance, para asegurar que la autonomía financiera impulse el crecimiento neta."
                    },
                    deuda_patrimonio: {
                        title: "Diciembre (YoY) - Solvencia",
                        text: "**Aspecto Positivo:** El ratio de solvencia de 0.33x es el mejor resultado de todo el periodo 2023-2025, certificando un saneamiento patrimonial completo y una viabilidad absoluta de la empresa para los años venideros. **Aspecto Negativo:** Se debe asegurar que esta solvencia se traduzca en una mayor velocidad de ejecución de los proyectos estratégicos, evitando que la empresa se convierta en una entidad rica en capital pero lenta en la innovación. **Recomendación:** Iniciar el nuevo año fiscal con un enfoque renovado en la eficiencia del capital, asegurando que la solvencia patrimonial sea el cimiento sobre el cual se construya un crecimiento acelerado y altamente rentable."
                    }
                }
            }
        },
        "1Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Trimestre 1 (YoY) - Respaldo Fijo",
                    text: "**Aspecto Positivo:** La recuperación del ratio de respaldo patrimonial en el primer trimestre es notable, pasando de niveles críticos negativos en 2023 a una posición de equilibrio técnico en 2025. **Aspecto Negativo:** La velocidad de recuperación se ha ralentizado en el último mes del trimestre, lo que sugiere que el crecimiento de los activos fijos está empezando a superar la generación de capital propio. **Recomendación:** Mantener la política de reinversión de utilidades del 100% durante el siguiente trimestre para consolidar el respaldo patrimonial de la infraestructura operativa."
                },
                estructura_deuda: {
                    title: "Trimestre 1 (YoY) - Perfil Deuda",
                    text: "**Aspecto Positivo:** Se observa una reducción drástica de la dependencia de créditos de corto plazo, mejorando el perfil de exigibilidad inmediata de la compañía frente al año anterior. **Aspecto Negativo:** La carga de intereses de las deudas antiguas todavía pesa sobre el flujo de caja operativo del trimestre, limitando la capacidad de maniobra financiera. **Recomendación:** Negociar una compra de cartera con tasas de interés preferenciales aprovechando la mejora en la calificación de riesgo lograda este año."
                },
                multiplicador_capital: {
                    title: "Trimestre 1 (YoY) - Apalancamiento",
                    text: "**Aspecto Positivo:** El nivel de apalancamiento se mantiene bajo, lo que dota a la empresa de una resiliencia superior ante posibles volatilidades del mercado financiero nacional. **Aspecto Negativo:** Un apalancamiento excesivamente bajo puede estar indicando una subutilización de la capacidad de crecimiento que el capital de terceros podría proporcionar. **Recomendación:** Evaluar proyectos de inversión de alta rentabilidad que justifiquen un incremento moderado del apalancamiento financiero estratégico."
                },
                capitalizacion: {
                    title: "Trimestre 1 (YoY) - Capitalización",
                    text: "**Aspecto Positivo:** La empresa mantiene su política de 'Deuda Cero' a largo plazo, brindando una tranquilidad absoluta a los socios sobre el control total de la organización. **Aspecto Negativo:** Se desaprovechan los beneficios fiscales de la deuda estructurada y el efecto multiplicador sobre el ROE que una capitalización mixta permitiría. **Recomendación:** Realizar un estudio de estructura de capital óptima para determinar si es conveniente introducir líneas de crédito de largo plazo para activos productivos."
                },
                deuda_tangibles: {
                    title: "Trimestre 1 (YoY) - Garantía Real",
                    text: "**Aspecto Positivo:** La garantía real de los activos tangibles está libre en un 90% promedio, ofreciendo un respaldo sólido para cualquier operación de banca de inversión. **Aspecto Negativo:** Se debe asegurar que la valoración de los activos tangibles esté actualizada para que este ratio refleje fielmente la capacidad de respaldo actual. **Recomendación:** Programar un avalúo técnico de la maquinaria principal para ajustar los libros contables a los valores de mercado vigentes."
                },
                propiedad_autonomia: {
                    title: "Trimestre 1 (YoY) - Autonomía",
                    text: "**Aspecto Positivo:** La autonomía financiera del 68% refleja un control robusto por parte de los accionistas, minimizando los riesgos de intervención por parte de acreedores externos. **Aspecto Negativo:** Se detecta una ligera erosión de la autonomía debido al incremento estacional de los pasivos operativos de inicio de año. **Recomendación:** Implementar un control de gastos administrativos más riguroso para evitar que la autonomía financiera baje del umbral de seguridad del 65%."
                },
                deuda_patrimonio: {
                    title: "Trimestre 1 (YoY) - Solvencia",
                    text: "**Aspecto Positivo:** La solvencia patrimonial ha mejorado de forma consistente, situándose en niveles de alta seguridad que facilitan la relación con proveedores y bancos. **Aspecto Negativo:** El ratio de solvencia presenta fluctuaciones mensuales que deben ser estabilizadas mediante una mejor gestión del capital de trabajo. **Recomendación:** Establecer un fondo de reserva para el pago de pasivos corrientes, asegurando que la solvencia se mantenga estable a lo largo de todo el ejercicio."
                }
            }
        },
        "2Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Trimestre 2 (YoY) - Respaldo Fijo",
                    text: "**Aspecto Positivo:** El segundo trimestre consolida la tendencia de respaldo positivo, asegurando que el crecimiento de la planta física esté debidamente financiado con capital estable. **Aspecto Negativo:** Existe el riesgo de estancamiento en la cobertura si no se acelera el ritmo de capitalización de utilidades operativas. **Recomendación:** Revisar el plan de inversiones en activos fijos para asegurar que cada nueva adquisición cuente con un respaldo patrimonial inmediato."
                },
                estructura_deuda: {
                    title: "Trimestre 2 (YoY) - Perfil Deuda",
                    text: "**Aspecto Positivo:** La estructura de deuda se ha equilibrado, logrando una mejor distribución entre pasivos corrientes y no corrientes en comparación con el año anterior. **Aspecto Negativo:** Se observa un incremento ligero en la deuda comercial que debe ser monitoreado para evitar problemas de liquidez en el Q3. **Recomendación:** Optimizar el ciclo de pagos a proveedores para aprovechar descuentos por pronto pago sin deteriorar la posición de caja de la empresa."
                },
                multiplicador_capital: {
                    title: "Trimestre 2 (YoY) - Apalancamiento",
                    text: "**Aspecto Positivo:** El multiplicador de capital sigue en niveles saludables, protegiendo el valor de la empresa ante posibles incrementos en el costo del dinero bancario. **Aspecto Negativo:** La rentabilidad sobre el patrimonio podría verse limitada por el enfoque conservador en el apalancamiento financiero. **Recomendación:** Considerar el uso de leasing operativo para la renovación de flota, permitiendo crecer sin afectar drásticamente los ratios de apalancamiento patrimonial."
                },
                capitalizacion: {
                    title: "Trimestre 2 (YoY) - Capitalización",
                    text: "**Aspecto Positivo:** La ausencia de deuda externa de largo plazo mantiene el balance limpio y listo para futuras expansionista de gran envergadura. **Aspecto Negativo:** Se pierde la oportunidad de apalancar el crecimiento en mercados internacionales con deuda de bajo costo en moneda extranjera. **Recomendación:** Estudiar la emisión de bonos corporativos o notas de corto plazo como fuente alternativa de capitalización eficiente."
                },
                deuda_tangibles: {
                    title: "Trimestre 2 (YoY) - Garantía Real",
                    text: "**Aspecto Positivo:** Los activos tangibles operan con un ratio de deuda muy bajo, lo que representa una ventaja competitiva en términos de respaldo para licitaciones. **Aspecto Negativo:** Se requiere un mantenimiento preventivo más agresivo para asegurar que el valor de garantía de estos activos no se deteriore con el uso intensivo. **Recomendación:** Asignar una partida extraordinaria de mantenimiento para los activos fijos críticos, preservando su valor patrimonial de respaldo."
                },
                propiedad_autonomia: {
                    title: "Trimestre 2 (YoY) - Autonomía",
                    text: "**Aspecto Positivo:** La autonomía se ha estabilizado en el 70%, lo que otorga una libertad de maniobra excepcional al equipo directivo para ejecutar el plan de negocio. **Aspecto Negativo:** La concentración del riesgo en el capital propio exige una mayor vigilancia sobre el retorno neto de cada peso invertido en la operación. **Recomendación:** Fortalecer el sistema de indicadores de gestión operativa para asegurar que la autonomía se traduzca en una rentabilidad superior."
                },
                deuda_patrimonio: {
                    title: "Trimestre 2 (YoY) - Solvencia",
                    text: "**Aspecto Positivo:** La solvencia en el Q2 es robusta, superando los benchmarks del sector y brindando una confianza total a los inversionistas actuales. **Aspecto Negativo:** Se debe prevenir que el incremento de las cuentas por cobrar afecte la percepción de solvencia real del balance. **Recomendación:** Implementar una política de crédito y cobranza más estricta para asegurar que la solvencia esté respaldada por activos líquidos de alta calidad."
                }
            }
        },
        "3Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Trimestre 3 (YoY) - Respaldo Fijo",
                    text: "**Aspecto Positivo:** La cobertura patrimonial alcanza su punto máximo del año, demostrando el éxito de la estrategia de fortalecimiento del balance iniciada en 2023. **Aspecto Negativo:** Este nivel de cobertura podría incentivar una relajación en los controles de inversión en activos no productivos. **Recomendación:** Mantener el enfoque en la productividad de los activos fijos, asegurando que cada incremento en la cobertura esté ligado a una mayor eficiencia operativa."
                },
                estructura_deuda: {
                    title: "Trimestre 3 (YoY) - Perfil Deuda",
                    text: "**Aspecto Positivo:** Se ha logrado una compresión significativa de la deuda corriente, eliminando los riesgos de asfixia financiera que se presentaban en periodos anteriores. **Aspecto Negativo:** La reducción de la deuda comercial puede estar afectando las relaciones con proveedores que requieren mayor volumen de crédito. **Recomendación:** Mantener una comunicación fluida con los proveedores clave para asegurar que la reducción de deuda sea vista como solidez y no como falta de actividad."
                },
                multiplicador_capital: {
                    title: "Trimestre 3 (YoY) - Apalancamiento",
                    text: "**Aspecto Positivo:** El multiplicador de 1.42x es óptimo para el perfil de riesgo de la compañía, equilibrando seguridad y rentabilidad para los socios. **Aspecto Negativo:** Se requiere una vigilancia sobre el costo oculto del capital propio, que suele ser superior al costo de la deuda bancaria en términos de oportunidad. **Recomendación:** Realizar un análisis de valor económico agregado (EVA) para validar que el bajo apalancamiento está generando riqueza real para los accionistas."
                },
                capitalizacion: {
                    title: "Trimestre 3 (YoY) - Capitalización",
                    text: "**Aspecto Positivo:** El balance reporta 0% de deuda externa estructural, lo que otorga una flexibilidad inigualable para negociar alianzas estratégicas. **Aspecto Negativo:** Se desaprovecha el escudo fiscal de los intereses, lo que incrementa la tasa impositiva efectiva de la organización de forma innecesaria. **Recomendación:** Evaluar la introducción de una estructura de capital mixta que optimice el flujo de caja después de impuestos sin comprometer la independencia financiera."
                },
                deuda_tangibles: {
                    title: "Trimestre 3 (YoY) - Garantía Real",
                    text: "**Aspecto Positivo:** Los activos tangibles están libres de gravámenes en su gran mayoría, constituyendo el principal motor de confianza para el sector bancario. **Aspecto Negativo:** Existe el riesgo de obsolescencia técnica en algunos equipos que representan una parte importante de la garantía real total. **Recomendación:** Iniciar un proceso de renovación tecnológica financiado con el excedente de caja generado por la baja carga de intereses actual."
                },
                propiedad_autonomia: {
                    title: "Trimestre 3 (YoY) - Autonomía",
                    text: "**Aspecto Positivo:** La autonomía del 71% ratifica el saneamiento patrimonial completo de la entidad tras dos años de gestión enfocada en la independencia. **Aspecto Negativo:** La falta de presión externa por parte de acreedores podría generar ineficiencias en el control de gastos operativos discrecionales. **Recomendación:** Implementar auditorías externas sorpresa sobre los rubros de gasto más significativos para mantener la disciplina operativa en niveles de excelencia."
                },
                deuda_patrimonio: {
                    title: "Trimestre 3 (YoY) - Solvencia",
                    text: "**Aspecto Positivo:** La solvencia patrimonial se mantiene en un óptimo 0.41x, blindando a la empresa contra choques de liquidez externos o crisis sectoriales. **Aspecto Negativo:** Se observa una ligera tendencia al alza en los pasivos operativos residuales que debe ser atajada antes del cierre de año. **Recomendación:** Ajustar la política de compras de fin de año para evitar un repunte innecesario del ratio de solvencia, preservando la calidad del balance."
                }
            }
        },
        "4Q": {
            indicators: {
                cobertura_fijos: {
                    title: "Trimestre 4 (YoY) - Respaldo Fijo",
                    text: "**Aspecto Positivo:** El cierre de año con una cobertura de +1.52x es un éxito de gestión que restaura la confianza total de los socios en el modelo de negocio. **Aspecto Negativo:** La brecha de mejora respecto al año anterior es menor, indicando que se ha alcanzado un nivel de madurez estructural que será difícil de superar. **Recomendación:** Enfocar los esfuerzos del próximo año en la optimización del uso de los activos existentes más que en el incremento masivo de la cobertura."
                },
                estructura_deuda: {
                    title: "Trimestre 4 (YoY) - Perfil Deuda",
                    text: "**Aspecto Positivo:** El nivel de deuda corriente de 0.35x es excepcional, permitiendo un cierre de ejercicio sin presiones de tesorería y con caja disponible para proyectos. **Aspecto Negativo:** Se detecta una subutilización de los cupos de crédito aprobados, lo que podría derivar en una reducción de las líneas de crédito por parte de la banca. **Recomendación:** Utilizar parcialmente los cupos de crédito rotativo para operaciones de capital de trabajo de corto plazo, manteniendo viva la relación crediticia."
                },
                multiplicador_capital: {
                    title: "Trimestre 4 (YoY) - Apalancamiento",
                    text: "**Aspecto Positivo:** Un multiplicador de 1.35x dota a la empresa de una capacidad de resiliencia inigualable para enfrentar un nuevo ciclo fiscal con total seguridad. **Aspecto Negativo:** El retorno sobre el patrimonio (ROE) final podría estar por debajo de las expectativas iniciales de los socios debido al bajo apalancamiento. **Recomendación:** Presentar a la junta un plan de expansión agresivo para el próximo año que utilice el excedente de capacidad de apalancamiento disponible."
                },
                capitalizacion: {
                    title: "Trimestre 4 (YoY) - Capitalización",
                    text: "**Aspecto Positivo:** La compañía termina el trienio totalmente libre de deudas de largo plazo externas, lo que confiere una estabilidad absoluta y una imagen de solvencia inquebrantable. **Aspecto Negativo:** Esta estructura de capital tan conservadora limita la velocidad de crecimiento en un mercado que se está consolidando rápidamente. **Recomendación:** Explorar la emisión de acciones preferenciales o deuda subordinada como mecanismos para financiar una expansión inorgánica estratégica acelerada."
                },
                deuda_tangibles: {
                    title: "Trimestre 4 (YoY) - Garantía Real",
                    text: "**Aspecto Positivo:** El ratio de deuda/tangibles del 38% asegura que el 60% del valor de la empresa está líquido y disponible como garantía de última instancia. **Aspecto Negativo:** Se debe asegurar que la depreciación fiscal no haya erosionado el valor contable de los activos tangibles por debajo de su valor comercial real. **Recomendación:** Realizar un test de deterioro de activos fijos al cierre del año para asegurar que el balance refleje la realidad económica de respaldo patrimonial."
                },
                propiedad_autonomia: {
                    title: "Trimestre 4 (YoY) - Autonomía",
                    text: "**Aspecto Positivo:** La autonomía del 74% al cierre del ejercicio es la culminación de una estrategia de empoderamiento patrimonial que devuelve a los socios el mando total. **Aspecto Negativo:** Una autonomía tan elevada puede incentivar una zona de confort en la gerencia, reduciendo la urgencia por alcanzar metas de rentabilidad ambiciosas. **Recomendación:** Vincular los bonos de éxito de la gerencia a la generación de flujo de caja libre y no solo a la estabilidad de los ratios de estructura de capital."
                },
                deuda_patrimonio: {
                    title: "Trimestre 4 (YoY) - Solvencia",
                    text: "**Aspecto Positivo:** La solvencia de cierre sitúa a la compañía en el percentil superior de su sector, garantizando una viabilidad absoluta para los planes de inversión futura. **Aspecto Negativo:** Existe el riesgo de que la solvencia acumulada se diluya rápidamente si se aprueba un reparto de dividendos excesivo en la próxima asamblea de socios. **Recomendación:** Definir una política de dividendos que priorice el mantenimiento de un ratio de solvencia técnica no superior al 0.50x en el largo plazo."
                }
            }
        }
    }
};
