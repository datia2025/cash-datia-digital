import json
import os

def escape_sql(text):
    return text.replace("'", "''")

def count_words(text):
    return len(text.split())

def validate_insight(insight):
    for key in ['analisis_positivo', 'analisis_negativo', 'recomendacion']:
        count = count_words(insight[key])
        if count < 40:
            raise ValueError(f"Insight {insight['indicador_key']} - {insight['year']} in {key} ONLY HAS {count} words. Rule: +40 words mandatory.")

# Output path
output_dir = r"C:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\MASCONSULTA\LiquidityDashboard\database"
os.makedirs(output_dir, exist_ok=True)
output_file = os.path.join(output_dir, "rentabilidad_bloque_b_2023_2025.sql")

# Database Table
TABLE_NAME = "insights"

# --- INSIGHTS DATA GENERATION ---
# 8 Indicators * 3 Years = 24 Insights
insights = []

# --- 2023 (Annual) ---
# ebitda: 32.46%, neto: 36.46%, operativo: -35.96%, bruto: 100%, patrimonio: 4.1M, roa: -11.36%, roe: 420%, utilidad: 0
insights.append({
    "empresa_id": 3104, "indicador_key": "ebitda", "year": 2023, "periodo_ano": 2023, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Has logrado que tu operación principal de consultoría estratégica genere un margen EBITDA del 32.46% en 2023, lo cual es una cifra fenomenal que destaca la potencia de tu equipo para crear valor bruto. Este nivel de rentabilidad operativa te otorga una ventaja competitiva única para financiar nuevas iniciativas de crecimiento sin sacrificar tu liquidez inmediata.",
    "analisis_negativo": "Sin embargo, debes vigilar que esta rentabilidad operativa tan alta no se diluya en gastos administrativos o financieros que no fueron controlados adecuadamente durante el ejercicio fiscal anterior. Un EBITDA robusto puede camuflar ineficiencias en la gestión de tus activos fijos que, de no corregirse a tiempo, podrían limitar tus sueños de expansión masiva en el mercado colombiano.",
    "recomendacion": "Te sugiero que reinviertas parte de este excedente operativo en la automatización de tus reportes de gestión interna ahora mismo. Al liberar el tiempo de tus consultores senior de tareas burocráticas y repetitivas, asegurarás que este margen se mantenga e incluso crezca en el próximo ciclo, elevando la calidad de tus entregables sin incrementar tus costos fijos anuales.",
    "metodologia": "Bloque B - Auditoría Anual 2023"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "neto", "year": 2023, "periodo_ano": 2023, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Tu margen neto del 36.46% es un resultado de rentabilidad final envidiable que demuestra que estás dirigiendo la firma con un enfoque claro en la ganancia real. Lograste que mas de una tercera parte de cada peso facturado llegue limpio a tu bolsillo tras cubrir todos los compromisos legales, operativos y financieros de MAS CONSULTA.",
    "analisis_negativo": "Debes ser cauteloso con la procedencia de esta utilidad neta, asegurándote de que provenga de la recurrencia de tus servicios y no de eventos extraordinarios que difícilmente se repetirán en el próximo año fiscal. Si tu rentabilidad final depende de contratos aislados de alto margen, podrías enfrentar desafíos de estabilidad si las condiciones del mercado de servicios cambian bruscamente.",
    "recomendacion": "Haz un uso inteligente y estratégico de este excedente fortaleciendo tu fondo de maniobra operativa para el largo plazo. Te recomiendo que utilices un porcentaje de estas ganancias para financiar tu expansión comercial hacia nuevos nichos de mercado, reduciendo así tu dependencia de los sectores actuales y garantizando que tu empresa mantenga este nivel de beneficio neto sistemáticamente.",
    "metodologia": "Bloque B - Auditoría Anual 2023"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "operativo", "year": 2023, "periodo_ano": 2023, "period_key": "Annual", "tipo": "danger",
    "analisis_positivo": "A pesar de la cifra negativa que arroja la auditoría operativa, tu capacidad para sostener una facturación bruta sólida demuestra que tu marca goza de una reputación impecable entre tus clientes actuales. Tienes una base comercial viva y vibrante que te permitirá recuperar la rentabilidad operativa rápidamente si logras ajustar con determinación las palancas de costo administrativo.",
    "analisis_negativo": "Un margen operativo negativo del -35.96% es una señal de alerta máxima para tu gestión diaria como dueño del negocio. Básicamente, te está costando mas mantener la estructura de la oficina y el soporte que lo que logras cobrar por la ejecución técnica de tus consultorías. Estás permitiendo que los gastos fijos devoren por completo el valor que generas con tu equipo.",
    "recomendacion": "Urge que realices una auditoría profunda de tus gastos administrativos fijos hoy mismo para identificar fugas de dinero innecesarias. Debes ajustar tu estructura para que cada contrato nuevo sume directamente a la utilidad y no se pierda en un pozo sin fondo de gastos burocráticos. Enfócate en tener una organización mas ligera que reaccione con velocidad a las oportunidades rentables.",
    "metodologia": "Bloque B - Auditoría Anual 2023"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "bruto", "year": 2023, "periodo_ano": 2023, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Mantenes un margen bruto del 100%, lo cual es la característica ganadora de tu modelo de negocio basado puramente en el intelecto y el conocimiento estratégico. Esto significa que no tienes el lastre de costos directos de materiales o mercancías, permitiendo que todo el ingreso neto sea la semilla para cubrir tu operación y generar tu ganancia final libremente.",
    "analisis_negativo": "Al no tener costos directos variables, tu riesgo principal se traslada al tiempo ocioso de tu equipo consultor senior dentro del ejercicio. Si tus profesionales no están facturando el máximo de horas posible, tu margen bruto del 100% se queda en una cifra teórica que no se traduce en caja real, mientras que tus gastos internos de nómina administrativa siguen corriendo implacablemente.",
    "recomendacion": "Debes enfocarte intensamente en maximizar la tasa de aprovechamiento de tus especialistas en cada proyecto activo. Asegúrate de que cada hito de tus consultorías esté definido para ser facturado de manera acelerada y constante. Al carecer de costos de insumos físicos, tu rentabilidad bruta es infinita, pero solo se activa si logras cerrar los ciclos operativos en el tiempo pactado.",
    "metodologia": "Bloque B - Auditoría Anual 2023"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "patrimonio", "year": 2023, "periodo_ano": 2023, "period_key": "Annual", "tipo": "info",
    "analisis_positivo": "Tu patrimonio cerró el 2023 en un nivel positivo de 4.1 millones de pesos, lo cual significa que el valor de tus activos es superior a tus deudas acumuladas. Es la base financiera sólida sobre la cual has construido tu trayectoria profesional y representa el respaldo intangible necesario para negociar mejores condiciones de financiación con proveedores estratégicos o entidades bancarias nacionales.",
    "analisis_negativo": "Aunque el patrimonio es positivo, su volumen actual es todavía reducido frente a los grandes desafíos de expansión que te has propuesto para el futuro. Si no logras inyectar utilidades retenidas de manera constante, tu base de capital propio podría erosionarse ante cualquier pérdida inesperada o imprevisto operativo grave que surja en los próximos meses de ejecución de tus proyectos.",
    "recomendacion": "Te recomiendo implementar una política de capitalización de utilidades para fortalecer esta base patrimonial en el corto plazo de manera decidida. En lugar de retirar dividendos de forma inmediata, deja que ese dinero trabaje dentro de tu empresa para mejorar tu solvencia absoluta. Un patrimonio robusto te dará la tranquilidad necesaria para afrontar contratos de mayor envergadura que exijan garantías financieras sólidas.",
    "metodologia": "Bloque B - Auditoría Anual 2023"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "roa", "year": 2023, "periodo_ano": 2023, "period_key": "Annual", "tipo": "warning",
    "analisis_positivo": "El hecho de que utilices pocos activos físicos para operar es una ventaja competitiva magistral que debes explotar para mejorar este ratio con rapidez. Al no tener grandes inversiones en maquinaria pesada, cualquier incremento marginal en tus utilidades tendrá un impacto directo en la rentabilidad sobre tus activos totales, demostrando que tu empresa es una maquinaria ágil para producir riqueza real.",
    "analisis_negativo": "Un ROA negativo del -11.36% indica que tus activos actuales no están siendo gestionados con la eficiencia necesaria para producir beneficios tangibles para los socios. Tienes recursos dentro de la empresa que, en lugar de estar trabajando para generar el retorno que esperas, están permaneciendo inactivos o consumiendo valor sin retornar una utilidad operativa que justifique su permanencia en el balance.",
    "recomendacion": "Debes poner a trabajar tus activos circulantes con mucha mayor agresividad comercial a partir de mañana mismo. Acelera el recaudo de tus facturas pendientes para que ese dinero no sea solo un número contable, sino combustible real para nuevas ventas rentables. Al mejorar la rotación de tus cuentas por cobrar, elevarás automáticamente este indicador de eficiencia gerencial demostrando que cada peso invertido produce resultados.",
    "metodologia": "Bloque B - Auditoría Anual 2023"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "roe", "year": 2023, "periodo_ano": 2023, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Has logrado un retorno sobre el patrimonio (ROE) excepcional, lo que significa que estás multiplicando el dinero de los socios de una manera asombrosa en este periodo. Esta cifra destaca la eficiencia con la que tu capital propio está apalancando la generación de beneficios netos finales, posicionándote como una empresa con un altísimo potencial de rentabilidad sobre la inversión inicial ejecutada.",
    "analisis_negativo": "Ten mucho cuidado con este indicador, ya que un ROE tan elevado a veces es el resultado de tener un patrimonio muy pequeño en relación con las utilidades generadas. Si tu base de capital es baja, cualquier riesgo operativo futuro se sentirá mucho mas fuerte en tus finanzas. No te dejes cegar por el porcentaje; asegúrate de que el valor absoluto crezca saludablemente.",
    "recomendacion": "Utiliza este excelente desempeño del ROE para demostrar la potencia de tu modelo de negocio ante posibles aliados e inversionistas del sector. No descuides el fortalecimiento de tu capital propio para el largo plazo. Te sugiero que busques un equilibrio donde logres mantener una rentabilidad alta pero sobre un patrimonio mas robusto para garantizar tu seguridad financiera y crecimiento sostenido.",
    "metodologia": "Bloque B - Auditoría Anual 2023"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "utilidad", "year": 2023, "periodo_ano": 2023, "period_key": "Annual", "tipo": "info",
    "analisis_positivo": "Has cerrado el ejercicio 2023 logrando mantener el equilibrio en tu utilidad acumulada, lo que demuestra tu capacidad de gestión para navegar un año fiscal sin incurrir en pérdidas que destruyan el valor de la firma. Es un punto de partida neutral y seguro que te permite planificar con la cabeza fría los próximos pasos para escalar tus ingresos anuales.",
    "analisis_negativo": "Mantener una utilidad acumulada plana durante todo un ejercicio significa que estás trabajando solo para cubrir tus gastos operativos mínimos, sin generar un excedente real para tus sueños. Estás en una zona de confort peligrosa donde cualquier imprevisto leve en un contrato clave podría empujarte hacia el terreno de las pérdidas operativas reales de inmediato si no reaccionas con prontitud gerencial.",
    "recomendacion": "Debes romper el techo de cristal de la utilidad plana implementando un plan de incentivos por metas de rentabilidad neta para tu equipo comercial. Enfoca todos tus esfuerzos de venta en aquellos tipos de consultoría que te dejan un margen superior y que demandan menos soporte administrativo. Solo así lograrás que la utilidad acumulada crezca de manera sólida y sostenida periodo tras periodo.",
    "metodologia": "Bloque B - Auditoría Anual 2023"
})

# --- 2024 (Annual) ---
# ebitda: -38.05%, neto: -33.91%, operativo: 35.08%, bruto: 100%, patrimonio: 24.9M, roa: 19.66%, roe: 89.55%, utilidad: 0
insights.append({
    "empresa_id": 3104, "indicador_key": "ebitda", "year": 2024, "periodo_ano": 2024, "period_key": "Annual", "tipo": "danger",
    "analisis_positivo": "Tu empresa mantiene una tracción comercial que te permite seguir facturando servicios de consultoría estratégica de alto nivel, lo que indica que tu reputación en el mercado sigue intacta a pesar de las dificultades. Tienes la maquinaria comercial encendida, lo cual es el primer paso indispensable para corregir cualquier desviación operativa y volver rápidamente a los niveles de rentabilidad anteriores.",
    "analisis_negativo": "Caer a un margen EBITDA negativo del -38.05% en 2024 es una señal de deterioro operativo muy grave que no puedes ignorar por mas tiempo. Tu operación básica ya no está produciendo el dinero suficiente ni siquiera para cubrir los costos mínimos necesarios antes de impuestos, lo que significa que estás quemando tus ahorros acumulados para mantener las luces de la oficina encendidas.",
    "recomendacion": "Debes implementar un plan de choque inmediato para elevar la eficiencia operativa de tu equipo técnico y administrativo. Reevalúa todos tus contratos vigentes y asegúrate de que estás cobrando el valor justo por cada hora de conocimiento invertida. Necesitas detener la erosión de tu flujo de caja bruto volviendo a un esquema de costos extremadamente austero y enfocado en la consultoría.",
    "metodologia": "Bloque B - Auditoría Anual 2024"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "neto", "year": 2024, "periodo_ano": 2024, "period_key": "Annual", "tipo": "danger",
    "analisis_positivo": "A pesar del margen neto negativo que arrojan los estados financieros de 2024, tu firma de consultoría posee activos intangibles y una base de conocimientos que siguen siendo valorados por tus socios. El valor real de tu marca MAS CONSULTA es lo que te permitirá atraer nuevos ingresos frescos para sanear tu estructura de rentabilidad final si actúas con total firmeza administrativa.",
    "analisis_negativo": "Cerrar con un margen neto negativo del -33.91% significa que por cada peso que vendiste, perdiste mas de treinta centavos adicionales de tu propia ganancia acumulada. Estás en una situación donde tu operación no solo no es rentable, sino que está destruyendo activamente el capital propio que has invertido con tanto esfuerzo durante años en tu proyecto de consultoría.",
    "recomendacion": "Urge que elimines todos los gastos no esenciales que no contribuyan directamente a cerrar ventas o a entregar servicios a tus clientes corporativos ahora. Debes priorizar la supervivencia financiera reduciendo tu estructura a lo mínimo viable hasta que logres recuperar el punto de equilibrio operativo. Solo con una dieta financiera rigurosa podrás salvar la rentabilidad final de tu amada empresa.",
    "metodologia": "Bloque B - Auditoría Anual 2024"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "operativo", "year": 2024, "periodo_ano": 2024, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Has logrado revertir la tendencia negativa del año anterior alcanzando un margen operativo positivo del 35.08% en 2024, lo cual es un logro de gestión administrativa asombroso. Has demostrado que tu operación técnica es sumamente rentable y que tienes la capacidad de controlar tus gastos generales para que el fruto de tu consultoría llegue directamente a los resultados operativos.",
    "analisis_negativo": "Sin embargo, debes asegurarte de que este margen operativo positivo sea sostenible y no el resultado de recortes extremos de una sola vez que puedan comprometer la calidad futura de tus servicios. Un margen operativo alto exige un equilibrio constante entre la austeridad administrativa y la inversión necesaria en el talento humano que es el corazón de tu firma estratégica en Colombia.",
    "recomendacion": "Mantén el rigor administrativo que te permitió alcanzar este éxito operativo pero enfócate ahora en escalar tus ingresos anuales sistemáticamente. Te sugiero que utilices parte de la eficiencia ganada para incentivar a tu equipo comercial a cerrar contratos mas largos que te den estabilidad operativa. Haber recuperado tu margen operativo es tu mayor credencial de buena gestión ante tus socios e inversionistas.",
    "metodologia": "Bloque B - Auditoría Anual 2024"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "bruto", "year": 2024, "periodo_ano": 2024, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Tu margen bruto se mantiene firme en el 100% durante el 2024, reafirmando la pureza y potencia de tu modelo de negocio de servicios basados en el conocimiento. No tienes el peso de inventarios o costos de mercancía, lo cual es la mejor noticia posible para tu capacidad de maniobra frente a la incertidumbre económica y la volatilidad de los precios externos.",
    "analisis_negativo": "El peligro de tener un margen bruto infinito es confiarse y permitir que el desorden administrativo crezca sin control en el back-office del negocio. Al no tener costos directos que te avisen de la ineficiencia, es fácil perder de vista los tiempos reales que consume cada consultoría. El tiempo de tu gente es tu único insumo real y debes cuidarlo como si fuera oro.",
    "recomendacion": "Implementa un modelo de facturación basado estricta y únicamente en hitos clave de entrega durante este ciclo fiscal. Asegúrate de capturar el 100% de ese margen bruto transformándolo en facturas cobrables con rapidez. Mientras mantengas esta pureza operativa en tu margen de utilidad bruta, tendrás la base ideal para construir una estructura de rentabilidad neta envidiable y escalable.",
    "metodologia": "Bloque B - Auditoría Anual 2024"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "patrimonio", "year": 2024, "periodo_ano": 2024, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Has logrado que tu patrimonio crezca espectacularmente hasta los 24.9 millones de pesos en 2024, lo cual indica que la empresa se ha fortalecido institucionalmente. Este crecimiento de tu base de capital propio es la mejor prueba de que tu proyecto de consultoría MAS CONSULTA está madurando y convirtiéndose en una organización con respaldo real para sus socios fundadores.",
    "analisis_negativo": "Debes monitorear que este incremento patrimonial no provenga únicamente de deudas o valorizaciones contables abstractas que no tengan un respaldo real en caja líquida para el ejercicio. Un patrimonio grande es inútil si la empresa atraviesa crisis de liquidez puntuales que no le permitan cumplir con sus obligaciones corrientes de corto plazo, por lo que debes vigilar tu solvencia total mensualmente.",
    "recomendacion": "Utiliza este patrimonio fortalecido como palanca para buscar mejores condiciones de crédito o inversión para tu crecimiento futuro. Tienes ahora una base sólida que te posiciona como un jugador serio en el mercado de la consultoría estratégica. Te recomiendo seguir capitalizando una porción de tus ingresos para que tu patrimonio siga siendo tu escudo protector ante cualquier tormenta económica futura.",
    "metodologia": "Bloque B - Auditoría Anual 2024"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "roa", "year": 2024, "periodo_ano": 2024, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Has alcanzado un ROA del 19.66% en 2024, superando con creces los estándares ideales de rentabilidad sobre tus activos totales. Esto significa que cada peso que tienes invertido en computadores, software y activos financieros está produciendo casi veinte centavos de utilidad neta, demostrando una eficiencia en el uso de los recursos corporativos que pocos dueños de negocio logran alcanzar.",
    "analisis_negativo": "Mantener este nivel de eficiencia en tus activos exige un control permanente de tu balance para evitar la acumulación de recursos ociosos que bajen tu rendimiento promedio. Un ROA alto a veces es el resultado de tener activos insuficientes para operar con comodidad tecnológica, por lo que debes vigilar que no estés sacrificando la calidad de tus herramientas de trabajo en nombre de la rentabilidad.",
    "recomendacion": "Mantén tu enfoque estratégico en la optimización del uso de tus activos corrientes y no te dejes tentar por inversiones innecesarias en activos fijos que no generen un retorno inmediato y medible. Al ser una empresa de consultoría, tu mayor fortaleza es tu agilidad financiera; conserva este ROA alto escalando tus ventas sobre la misma base de infraestructura que ya posees actualmente.",
    "metodologia": "Bloque B - Auditoría Anual 2024"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "roe", "year": 2024, "periodo_ano": 2024, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Tu ROE del 89.55% en 2024 es una cifra de rendimiento sobre tu inversión inicial absolutamente destacable que demuestra la potencia multiplicadora de tu conocimiento en el mercado. Estás logrando que el dinero que pusiste como socio rinda casi el doble cada año, validando que el sector de la consultoría estratégica es el lugar correcto para tus talentos y capital.",
    "analisis_negativo": "A pesar de este éxito del ROE, no debes bajar la vigilancia sobre la proporción de tu deuda externa frente a tu capital propio. Un ROE tan elevado puede estar impulsado por un apalancamiento financiero agresivo que, aunque maximiza tu retorno hoy por cada peso invertido por ti, también incrementa el riesgo de insolvencia si los ingresos operativos sufren una caída inesperada en el futuro.",
    "recomendacion": "Consolida este ROE excepcional equilibrando tu estructura de capital a medida que tu patrimonio sigue creciendo con las utilidades retenidas del ejercicio. Te sugiero que utilices estos rendimientos para pagar deudas costosas y fortalecer tu autonomía financiera como dueño. Ser rentable es excelente, pero ser rentable y financieramente independiente es el objetivo final para tu tranquilidad como gran empresario.",
    "metodologia": "Bloque B - Auditoría Anual 2024"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "utilidad", "year": 2024, "periodo_ano": 2024, "period_key": "Annual", "tipo": "info",
    "analisis_positivo": "Has logrado cerrar el ejercicio 2024 manteniendo el equilibrio en tu utilidad acumulada, lo cual es una proeza de resistencia financiera dada la caída que sufrieron tus márgenes porcentuales netos. Has evitado que la empresa entre en una espiral de pérdidas permanentes que comprometan su viabilidad legal y comercial para los próximos años de tu carrera profesional en consultoría.",
    "analisis_negativo": "Sin embargo, el hecho de no haber generado un crecimiento real en tu utilidad acumulada neta significa que has pasado el año 'empatando' con tus costos y gastos administrativos mensuales. Seguir en cero beneficios retenidos te deja sin la capacidad de invertir en proyectos propios de innovación o de retirar dividendos significativos para compensar tu enorme esfuerzo de gestión e intelecto diario.",
    "recomendacion": "Urge que realices una revisión de tus servicios actuales y elimines aquellos contratos que consumen mucho tiempo de consultoría pero aportan poco o nada a la utilidad final neta. Debes enfocarte obsesivamente en la rentabilidad por cliente y por proyecto para que el próximo año la utilidad acumulada sea positiva y robusta, permitiéndote finalmente respirar con alivio financiero real.",
    "metodologia": "Bloque B - Auditoría Anual 2024"
})

# --- 2025 (Annual) ---
# ebitda: 0.14%, neto: 10.05%, operativo: -10.02%, bruto: 100%, patrimonio: 122.8M, roa: -4.35%, roe: -6.01%, utilidad: -754k
insights.append({
    "empresa_id": 3104, "indicador_key": "ebitda", "year": 2025, "periodo_ano": 2025, "period_key": "Annual", "tipo": "warning",
    "analisis_positivo": "Has logrado recuperar tu margen EBITDA para que sea positivo nuevamente al cierre de 2025, aunque sea por un margen estrecho del 0.14%. Esto marca un punto de inflexión crítico donde has detenido la hemorragia operativa de años anteriores y has recuperado la capacidad básica de que tu operación técnica cubra al menos sus propios costos directos de nómina y ejecución intelectual.",
    "analisis_negativo": "Estar en un margen EBITDA del 0.14% es como caminar sobre la cuerda floja sin red de seguridad debajo. Cualquier pequeño retraso en un contrato o un leve aumento en tus gastos fijos mensuales te devolverá instantáneamente al terreno de las pérdidas operativas brutas, dejando a la empresa en una situación de vulnerabilidad extrema ante los cambios económicos del entorno nacional.",
    "recomendacion": "Debes ser implacable con la eficiencia de tus procesos internos a partir de este instante si deseas sobrevivir. Identifica y elimina cualquier gasto administrativo que no sea estrictamente necesario para generar valor directo al cliente corporativo final. Necesitas elevar este margen EBITDA al menos al quince por ciento para tener un colchon de seguridad razonable que proteja tu tranquilidad financiera.",
    "metodologia": "Bloque B - Auditoría Anual 2025"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "neto", "year": 2025, "periodo_ano": 2025, "period_key": "Annual", "tipo": "warning",
    "analisis_positivo": "Has logrado estabilizar tu margen neto en un 10.05% al finalizar el ejercicio fiscal de 2025, lo cual es una señal de recuperación esperanzadora frente a los números rojos del ejercicio anterior. Estás finalmente logrando que tu esfuerzo de consultoría estratégica deje una rentabilidad neta positiva después de cubrir absolutamente todos tus compromisos legales y administrativos internos.",
    "analisis_negativo": "Aunque es positivo, un margen neto del 10% está justo en el umbral mínimo aceptable para una firma de consultoría de tu alto nivel técnico y especialización. Estás operando con un margen de seguridad muy estrecho donde cualquier imprevisto fiscal o una caída en la facturación mensual podría borrar rápidamente tu ganancia neta, dejándote sin liquidez propia para el futuro mediato.",
    "recomendacion": "Enfoca tus esfuerzos comerciales en capturar contratos de mayor valor agregado que te permitan subir este margen neto hasta el quince o veinte por ciento anual. Debes analizar la rentabilidad específica de cada uno de tus consultores senior para asegurarte de que cada hora que ellos invierten en los clientes esté maximizando tu beneficio neto final y garantizando tu estabilidad financiera.",
    "metodologia": "Bloque B - Auditoría Anual 2025"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "operativo", "year": 2025, "periodo_ano": 2025, "period_key": "Annual", "tipo": "danger",
    "analisis_positivo": "A pesar de que el margen operativo sigue siendo negativo con un -10.02%, has logrado una mejora sustancial frente a la situación de crisis anterior, reduciendo drásticamente la brecha de ineficiencia administrativa acumulada. Tu resiliencia como dueño de negocio te ha permitido mantener el timón firme mientras ajustas los costos internos necesarios para sanear tu operación consultiva.",
    "analisis_negativo": "Seguir operando con un margen operativo negativo del -10% significa que tu estructura administrativa sigue siendo pesada e ineficiente para el nivel actual de tus ingresos por servicios. Estás perdiendo dinero en la gestión interna de tu oficina y soporte por cada contrato que firmas, lo que erosiona tu capacidad de generar riqueza neta real y pone en riesgo tu liquidez a largo plazo.",
    "recomendacion": "Debes realizar un corte profundo en tu estructura de gastos fijos administrativos hoy mismo de forma definitiva. Elimina duplicidades en tareas de soporte y utiliza herramientas de gestión ágil para que los consultores directos asuman mas control administrativo sin degradar su calidad técnica. Tu objetivo inmediato debe ser alcanzar un margen operativo positivo del doce por ciento para garantizar tu viabilidad.",
    "metodologia": "Bloque B - Auditoría Anual 2025"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "bruto", "year": 2025, "periodo_ano": 2025, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Tu margen bruto del 100% se mantiene intacto al cierre de 2025, reafirmando que tu modelo de consultoría estratégica es una verdadera maquinaria de generación de valor intelectual bruto sin depender de insumos físicos externos volátiles. Tienes en tus manos el control absoluto de tu rentabilidad inicial por cada peso facturado a tus socios y clientes corporativos actuales.",
    "analisis_negativo": "El riesgo de un margen bruto total del 100% es que puede crear una falsa sensación de seguridad financiera si no se acompaña de una disciplina absoluta en la gestión de tiempos operativos en cada entrega técnica. Si tus especialistas de consultoría no están cerrando hitos comerciales con la rapidez debida, ese margen se queda atrapado en el balance y no se convierte en billetes reales líquidos para tí.",
    "recomendacion": "Te recomiendo implantar una cultura de facturación por metas semanales en todo tu equipo líder a partir de este instante. Asegúrate de capturar cada hito de servicio y transformarlo en una cuenta por cobrar inmediata. Tu margen bruto del 100% es tu mayor activo estratégico; no permitas que la burocracia interna impida que esos ingresos se transformen en la gasolina operativa que necesitas.",
    "metodologia": "Bloque B - Auditoría Anual 2025"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "patrimonio", "year": 2025, "periodo_ano": 2025, "period_key": "Annual", "tipo": "success",
    "analisis_positivo": "Has logrado que tu patrimonio alcance la cifra histórica de 122.8 millones de pesos al cierre de 2025, lo cual es un salto espectacular en la valoración intrínseca de tu empresa consultora. Este fortalecimiento de tu capital propio te otorga una solidez institucional y una solvencia absoluta que te permite encarar negociaciones de gran escala con una posición de fuerza financiera.",
    "analisis_negativo": "Debes vigilar que este astronómico crecimiento patrimonial esté respaldado por activos de alta calidad y liquidez real para la operación diaria. Un patrimonio contable muy elevado puede a veces distraer de los problemas de flujo de caja operativo de corto plazo. Asegúrate de que el dinero esté disponible para trabajar y no atrapado únicamente en valoraciones de activos fijos que difícilmente se pueden vender mañana.",
    "recomendacion": "Utiliza este patrimonio consolidado como tu principal carta de presentación ante nuevos inversionistas estratégicos o para expandir tu alcance geográfico fuera de Colombia. Tienes ahora una base de solvencia robusta que te permite soñar en grande. Sigue reinvirtiendo una porción estratégica de tus ganancias anuales para que tu patrimonio sea el pilar inamovible que garantice el legado de tu firma consultora.",
    "metodologia": "Bloque B - Auditoría Anual 2025"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "roa", "year": 2025, "periodo_ano": 2025, "period_key": "Annual", "tipo": "danger",
    "analisis_positivo": "A pesar de la caída registrada en el ROA, tu empresa sigue operando con una estructura liviana de activos intangibles y talento humano que te otorga una flexibilidad inigualable frente a competidores mas pesados y burocráticos. Tu capacidad de maniobra sigue intacta, lo que constituye la base fundamental para cualquier estrategia de recuperación de la eficiencia operativa sobre tus recursos invertidos.",
    "analisis_negativo": "Haber caído a un ROA negativo del -4.35% en 2025 indica que tus activos (especialmente tu caja y tus deudores comerciales) están siendo gestionados con ineficiencia frente al rendimiento neto que se espera de ellos mensualmente. Estás permitiendo que la productividad global de tu inversión caiga, lo que significa que el dinero inmovilizado en la empresa te está costando mas de lo que te rinde.",
    "recomendacion": "Debes optimizar el uso de tus activos corrientes de manera agresiva a partir de este cierre fiscal. Liquida activos ociosos y acelera el recaudo de todas tus facturas pendientes para inyectar dinamismo a tus estados financieros inmediatos. Al elevar tu volumen de ventas sobre la misma base de infraestructura que ya posees, lograrás que tu ROA vuelva rápidamente a niveles positivos rentables.",
    "metodologia": "Bloque B - Auditoría Anual 2025"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "roe", "year": 2025, "periodo_ano": 2025, "period_key": "Annual", "tipo": "danger",
    "analisis_positivo": "Tu empresa posee un capital propio fortalecido y una reputación sólida que te permiten seguir siendo un jugador clave en el sector de la consultoría estratégica de alto nivel en Colombia. Tienes los recursos y el conocimiento necesarios para revertir este indicador negativo y volver a entregar los rendimientos extraordinarios que tus socios y tú mismo lograron alcanzar en el pasado reciente.",
    "analisis_negativo": "Un ROE negativo del -6.01% al cierre de 2025 es una noticia dolorosa para los socios fundadores, ya que significa que la inversión propia está perdiendo valor neto en lugar de multiplicarse. Cada peso que has dejado dentro de la empresa para capitalizarla hoy rinde menos que si estuviera en un ahorro básico, lo cual destruye el valor del patrimonio que con tanto esfuerzo has construido estos años.",
    "recomendacion": "Urge que recuperes la rentabilidad neta final enfocándote en la eficiencia de costos administrativos para el próximo año fiscal sin demora alguna. Necesitas que la utilidad neta vuelva a ser positiva y robusta para que tu ROE sea nuevamente motivo de orgullo y crecimiento patrimonial. No permitas que la inercia negativa consuma el capital propio que es la herencia de tu esfuerzo personal en la consultoría.",
    "metodologia": "Bloque B - Auditoría Anual 2025"
})
insights.append({
    "empresa_id": 3104, "indicador_key": "utilidad", "year": 2025, "periodo_ano": 2025, "period_key": "Annual", "tipo": "danger",
    "analisis_positivo": "A pesar de la pérdida acumulada que arroja el balance de 2025, tu empresa mantiene una operación comercial activa y una facturación recurrente con clientes de primer nivel nacional. Esta vitalidad del negocio es la que te permitirá reabsorber este saldo negativo en los próximos periodos operativos si logras inyectar utilidades consistentes mediante una nueva estrategia de rentabilidad.",
    "analisis_negativo": "Cerrar con una utilidad acumulada negativa de -754.572 pesos es una señal de estrés financiero crítica que no puedes ignorar en tu plan de negocios para el próximo año. Significa que los ingresos del año no fueron suficientes para cubrir la totalidad de tu estructura, obligándote a 'consumir' parte de la reserva o a apoyarte excesivamente en pasivos para mantenerte a flote mensualmente.",
    "recomendacion": "Debes enfocarte obsesivamente en alcanzar el punto de equilibrio y superarlo mediante una política de austeridad total en gastos no operativos a partir de ahora. Prioriza los cobros en efectivo y evita embarcarte en proyectos largos que no te den anticipos suficientes para financiar la ejecución. Debes borrar este signo negativo del balance con ganancias reales en los primeros dos trimestres del próximo año.",
    "metodologia": "Bloque B - Auditoría Anual 2025"
})

# --- VALIDATION AND SQL GENERATION ---
sql_statements = [
    "-- Script de Generacion Masiva de Insights - Modulo RENTABILIDAD (Bloque B: Auditoría Anual 2023-2025)",
    "-- Generado por Antigravity AI para Empresa ID: 3104",
    f"-- Fecha de Creacion: {os.path.basename(output_file)}",
    "BEGIN;",
    ""
]

for insight in insights:
    # Validate word count rule
    validate_insight(insight)
    
    # Construct UPSERT SQL
    stmt = f"""INSERT INTO {TABLE_NAME} (
    empresa_id, indicador_key, periodo_ano, year, period_key, tipo, 
    analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por, created_at
) VALUES (
    {insight['empresa_id']}, 
    '{insight['indicador_key']}', 
    {insight['periodo_ano']}, 
    {insight['year']}, 
    '{insight['period_key']}', 
    '{insight['tipo']}', 
    '{escape_sql(insight['analisis_positivo'])}', 
    '{escape_sql(insight['analisis_negativo'])}', 
    '{escape_sql(insight['recomendacion'])}', 
    '{insight['metodologia']}', 
    'antigravity', 
    NOW()
) ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    created_at = NOW();"""
    
    sql_statements.append(stmt)
    sql_statements.append("")

sql_statements.append("COMMIT;")

# Write to file
with open(output_file, 'w', encoding='utf-8') as f:
    f.write("\n".join(sql_statements))

print(f"SUCCESS: Generated {len(insights)} insights in {output_file}")
