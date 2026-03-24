import json
import os

# --- RULES & CONFIG ---
OUTPUT_FILE = r"C:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\MASCONSULTA\LiquidityDashboard\database\rentabilidad_bloque_a_2023_2025.sql"

def escape_sql(text):
    if text is None: return "NULL"
    return "'" + text.replace("'", "''") + "'"

def generate_sql(records):
    sql_lines = [
        "-- 📈 Bloque A: Rentabilidad (15 Insights Maestros: Annual + Quarterly)",
        "-- Generado por Antigravity - AI-to-SQL Dump Standard",
        "-- Fecha: 2026-03-24",
        "BEGIN;",
        ""
    ]
    
    for rec in records:
        # SQL with UPSERT (ON CONFLICT) matching (empresa_id, indicador_key, periodo_ano, period_key)
        # Note: The table has a composite unique index on these 4 fields.
        
        insert_stmt = f"""INSERT INTO insights_ai (
    empresa_id, indicador_key, periodo_ano, period_key, tipo, titulo, 
    analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por
) VALUES (
    {rec['empresa_id']}, 
    {escape_sql(rec['indicador_key'])}, 
    {rec['periodo_ano']}, 
    {escape_sql(rec['period_key'])}, 
    {escape_sql(rec['tipo'])}, 
    {escape_sql(rec.get('titulo', ''))}, 
    {escape_sql(rec['analisis_positivo'])}, 
    {escape_sql(rec['analisis_negativo'])}, 
    {escape_sql(rec['recomendacion'])}, 
    {escape_sql(rec['metodologia'])}, 
    {escape_sql(rec.get('generado_por', 'antigravity'))}
) ON CONFLICT (empresa_id, indicador_key, periodo_ano, COALESCE(period_key, 'Annual')) 
DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    titulo = EXCLUDED.titulo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    metodologia = EXCLUDED.metodologia,
    generado_por = EXCLUDED.generado_por,
    updated_at = CURRENT_TIMESTAMP;
"""
        sql_lines.append(insert_stmt)
    
    sql_lines.append("COMMIT;")
    
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        f.write("\n".join(sql_lines))
    print(f"Archivo SQL generado exitosamente: {OUTPUT_FILE}")

# --- RECORDS ---
# Reconstructed from inject_renta_block_a.py
records = []
emp_id = 3104

# (2025)
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai", "periodo_ano": 2025, "period_key": "Annual", "tipo": "success", "titulo": "Auditoría Anual de Rentabilidad 2025",
    "analisis_positivo": "Durante todo el año 2025 lograste mantener un margen asombroso en tu negocio de consultoría, cuidando al máximo la eficiencia de cada hora de trabajo de tu equipo. Al mantener los costos fijos muy controlados, pudiste pasar una gran parte de tus ingresos directamente a tu caja final, asegurando que tu inversión inicial en la empresa rinda frutos reales muy por encima de la meta del quince por ciento que te propusiste.",
    "analisis_negativo": "A pesar de terminar el año con buena ganancia, existieron algunos meses donde se nos escapó dinero en sobrecostos no planeados y viáticos innecesarios que le restaron fuerza a tu margen operativo. Tu negocio aún depende mucho de que los clientes más grandes no se atrasen en aceptar los proyectos; cuando eso pasa, la plata tardanza en entrar y se siente un bajón fuerte en tu tranquilidad financiera.",
    "recomendacion": "Para proteger la ganancia global de tu negocio el próximo año, te sugiero conseguir proyectos de soporte mensual que te aseguren ingresos fijos y constantes, aunque sean más pequeños. Además, debes ponerte muy estricto con la aprobación de gastos de tus asesores comerciales; cada peso que se gasta en la calle sin retorno claro es un peso menos en tu bolsillo al final del ejercicio.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Maestro 2025"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_1Q", "periodo_ano": 2025, "period_key": "1Q", "tipo": "success", "titulo": "Rentabilidad del Primer Trimestre 2025",
    "analisis_positivo": "En los primeros tres meses de 2025 arrancaste con toda la fuerza, sosteniendo un margen bruto muy alto gracias a los anticipos y al buen ritmo de entrega de tus consultorías principales. Esta agilidad te demostró que cuando tu equipo se enfoca en facturar rápido y entregar a tiempo, la ganancia se vuelve líquida sin tener que pedir plata prestada o buscar recursos externos caros.",
    "analisis_negativo": "Como es típico a principio de año, tuviste que sacar de tu caja para pagar los impuestos y compromisos legales que venían arrastrándose del año anterior, lo que frena un poco tu capacidad de inversión y tu retorno sobre activos (ROA). Ese golpe de salida en el primer trimestre siempre hace parecer que el negocio rinde menos, ya que la plata se va temporalmente en pagarle al Estado.",
    "recomendacion": "Te recomiendo que para los futuros inicios de año, exijas que tus clientes paguen un mayor anticipo al firmar los contratos entre enero y marzo para no desfondarte por los impuestos. Así mismo, trata de no comprar equipos nuevos ni hacer gastos grandes de tecnología durante estos primeros tres meses, guardando ese dinero hasta que el flujo normal del negocio vuelva a llenarte la cuenta.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_2Q", "periodo_ano": 2025, "period_key": "2Q", "tipo": "success", "titulo": "Rentabilidad del Segundo Trimestre 2025",
    "analisis_positivo": "El segundo trimestre fue un momento excelente donde viste cómo tus reportes de utilidad alcanzaban niveles ideales al empezar a cobrar los hitos intermedios de tus grandes proyectos. Ese cruce entre trabajar rápido y no inflar tu nómina te dejó un margen operativo impecable, comprobando que vender consultoría inteligente y sin tanta burocracia es el camino ideal para que te lleves más plata a casa.",
    "analisis_negativo": "Lo que sí afectó silenciosamente este segundo trimestre fueron las horas extra y los reprocesos que pidieron tus clientes más exigentes justo antes de darte el visto bueno para facturar. Esos ajustes interminables, que nadie te paga adicionalmente, actuaron como un hueco en tu bolsillo, consumiendo horas de tus mejores consultores y evitando que la ganancia de esos meses fuera perfecta.",
    "recomendacion": "Tienes que ser mucho más firme en cómo cierras los acuerdos, poniendo un límite claro a cuántas veces le puedes cambiar un documento al cliente sin cobrarle de más. Si alguien pide más revisiones de las acordadas, cóbraselas como horas extras de consultoría; así cuidas tu ganancia bruta y evitas que los clientes abusen del tiempo de tu equipo de expertos.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_3Q", "periodo_ano": 2025, "period_key": "3Q", "tipo": "info", "titulo": "Rentabilidad del Tercer Trimestre 2025",
    "analisis_positivo": "Entre julio y septiembre tu negocio operó a una velocidad increíble y conseguiste el momento de mejor equilibrio patrimonial de todo el año, lo cual significa que tu empresa vale más. Como pasaste los gastos pesados del comienzo de año, el margen neto se infló con naturalidad y pudiste aprovechar esa eficiencia para acumular caja real, demostrando que tu modelo funciona perfecto cuando no hay sobresaltos.",
    "analisis_negativo": "Aunque te fue bien, los números indican que no cambiaste tus precios a pesar de que la vida está más cara y tus contratistas externos te están cobrando un poco más por hora. Por miedo a perder ventas, absorbiste todos esos sobrecostos y terminaste sacrificando un pedazo importante de tu rentabilidad proyectada en lugar de trasladarle justamente ese aumento a los contratos.",
    "recomendacion": "No puedes seguir financiando la inflación de tu bolsillo; es el momento ideal para subirle el precio a todas tus nuevas cotizaciones del próximo trimestre, ajustándolas a la realidad económica del mercado. Háblalo claro con tus clientes, ellos saben que todo sube, pero si tú no defiendes tus tarifas, el único que termina ganando menos por el mismo esfuerzo vas a ser tú.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_4Q", "periodo_ano": 2025, "period_key": "4Q", "tipo": "warning", "titulo": "Rentabilidad del Cuarto Trimestre 2025",
    "analisis_positivo": "Al cerrar los últimos tres meses del año, lograste coronar un periodo muy disciplinado donde tu ganancia acumulada terminó siendo lo suficientemente fuerte como para que puedas disfrutar de la recompensa de tu negocio. Poner la casa en orden te permitió cerrar el año con tranquilidad, asegurándote que tienes el respaldo suficiente para retirar tus ganancias limpias sin desproteger las operaciones del año que viene.",
    "analisis_negativo": "Lo malo de este cierre fue que en tu afán por terminar y facturar todo antes del 31 de diciembre, corriste a contratar apoyo externo de urgencia pagando precios altísimos que castigaron tu margen. Esas contrataciones por apuro te salvaron la entrega del mes, pero le hicieron un roto a tu economía justo en el momento final donde más debías cuidar la caja.",
    "recomendacion": "Para la próxima recta final de año, tienes que planear desde septiembre a quién vas a necesitar para que no te toque contratar asesores caros de un día para otro en plenas fiestas. Distanciar las entregas clave entre noviembre y diciembre te quitará presión y evitará que por cumplir una fecha termines regalando la plata que con tanto esfuerzo cuidaste todo el año.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})

# (2024)
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai", "periodo_ano": 2024, "period_key": "Annual", "tipo": "success", "titulo": "Auditoría Anual de Rentabilidad 2024",
    "analisis_positivo": "Al evaluar todo tu 2024, resalta tu firmeza para sostener un Margen EBITDA que le dio mucha tranquilidad a tu bolsillo frente a las crisis que venías arrastrando de otros años. Lograste controlar tu nómina operativa y evitar que la rotación te subiera los precios; así aseguraste que al final de la línea tu negocio verdaderamente fuera rentable, demostrando que sabes gestionar en tiempos difíciles.",
    "analisis_negativo": "Sin embargo, revisando el año completo, se nota que dejaste demasiada plata acumulada en la calle porque no presionaste lo suficiente los cobros, haciendo que tu retorno sobre los activos reales cayera. Es decir, aunque en papel mostrabas ganancias, no tenías el dinero líquido en tus cuentas trabajando para ti, sino que tus clientes seguían apalancados financieramente con tus servicios durante meses.",
    "recomendacion": "Para el próximo año debes volverte imparable en la cobranza desde el día uno que emites la factura, porque de nada sirve presumir márgenes altos si el dinero no está en tu cuenta. Usa ese capital liberado de manera más rápida para reinvertir en alguna herramienta de software que le gane un poco más de margen bruto a cada hora que vende tu negocio.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Maestro 2024"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_1Q", "periodo_ano": 2024, "period_key": "1Q", "tipo": "info", "titulo": "Rentabilidad del Primer Trimestre 2024",
    "analisis_positivo": "Durante tu primer trimestre del 2024 fuiste sumamente certero en aprovechar la renovación de tus contratos grandes para cobrar buenos pagos de contado, inyectándole aire puro a tu rentabilidad inmediata. Diste el paso correcto al enfocar toda la capacidad de tus analistas directamente en esos clientes que pagaban bien y a tiempo, lo que elevó fuertemente el retorno sobre tus activos logrando un arranque triunfal.",
    "analisis_negativo": "El gran problema de este trimestre fue que asumiste todos los gastos y primas legales necesarias para arrancar los proyectos grandes sin tenerlos presupuestados claramente, golpeando con fuerza tu verdadera ganancia en este inicio. Esa falta de cálculo inicial hizo que la primera línea de utilidades pareciera más pequeña de lo esperado, retrasando tu capacidad de recoger beneficios reales de manera temprana.",
    "recomendacion": "Acostúmbrate siempre a integrar los gastos administrativos ocultos y notariales de arranque directamente en la propuesta comercial que le mandas a tus cuentas grandes o nuevos clientes, para que ellos lo asuman. Asegurarte de no regalar tu tiempo ni tus costos de papelería en las licitaciones protegerá fuertemente la cantidad real de dinero que vas a disfrutar al final de este crítico trimestre inicial.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_2Q", "periodo_ano": 2024, "period_key": "2Q", "tipo": "info", "titulo": "Rentabilidad del Segundo Trimestre 2024",
    "analisis_positivo": "En los meses de abril a junio manejaste las horas de tu gente con precisión milimétrica, facturando consultorías muy rentables que te dejaron márgenes fenomenales y sin quemar el presupuesto de nómina. Demostraste que entendiste perfectamente cómo exprimir al máximo el talento que ya tenías adentro, sacándole rentabilidad pura y dura a cada diagnóstico e implementando soluciones por las cuales tus clientes estuvieron dispuestos a pagar sin chistar.",
    "analisis_negativo": "Lamentablemente en este trimestre perdiste algo de tu ganancia al tener que lidiar con terceros o asesores temporales que renegociaron sus tarifas de improvisto justo cuando los proyectos estaban avanzando rápido. Esa pequeña sacudida te pegó directo en el margen bruto de esos meses específicos, y tuviste que conformarte con menos utilidad solo para no perder la relación con tu principal fuente de ingresos corporativos.",
    "recomendacion": "Firma contratos anualizados con todos tus proveedores estratégicos al comienzo del año para que no te sorprendan cambiando los precios en pleno desarrollo de este segundo trimestre. Protégete de antemano cerrando tarifas planas y estipulando castigos si te suben los honorarios en medio de un análisis, asegurándote de que los sobresaltos de ellos no se coman la plata que a ti te cuesta generar.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_3Q", "periodo_ano": 2024, "period_key": "3Q", "tipo": "info", "titulo": "Rentabilidad del Tercer Trimestre 2024",
    "analisis_positivo": "Este tercer trimestre consolidaste definitivamente la paz financiera de tu empresa generando un Retorno sobre el Patrimonio formidable, apalancado puramente en contratos que ya fluían por inercia positiva y con mínima fricción diaria. Este fue un periodo maduro y predecible donde no gastaste plata de más en ventas, sino que te sentaste a recibir y facturar los ciclos regulares que blindaron tus bolsillos ante la tormenta.",
    "analisis_negativo": "La parte negativa en estos meses es que tu rentabilidad pareció estancarse, no porque estuvieras haciendo mal el trabajo, sino porque de manera conservadora frenaste los aumentos naturales de precio. Como estabas tan cómodo cobrando, te dio temor pedir aumentos legítimos a los clientes que te gastaban más tiempo de servicio, dejándote un margen chato que se fue inflando despacito por culpa de tus propios costos fijos.",
    "recomendacion": "Aprovecha la lealtad que tienen hacia tus consultorías; tus clientes de este trimestre pueden y están dispuestos a tolerar una actualización justa de precios si se lo argumentas por la altísima calidad recibida. Mide exactamente cuántas horas adicionales te tomó atenderlos y diles que para el trimestre que viene las tarifas van a ajustarse comercialmente; es tu ganancia, defiéndela sin pena para no ahogarte lentamente.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_4Q", "periodo_ano": 2024, "period_key": "4Q", "tipo": "info", "titulo": "Rentabilidad del Cuarto Trimestre 2024",
    "analisis_positivo": "Tu gran éxito al finalizar 2024 fue asegurar que absolutamente toda entrega consultiva se cerrara y se cobrara, reventando positivamente los márgenes de fin de año para asegurarte una bonificación real en tu cuenta. Exigiste a fondo a tu equipo directo y respondiste impecablemente al afán desesperado de tus clientes por gastar su presupuesto, logrando monetizar exitosamente las relaciones que labraste con tanta paciencia en el transcurso anual.",
    "analisis_negativo": "Pero en tu carrera de velocidad para entregar antes del fin de año, cometiste el desliz de contratar asesorías urgentes de externos muy caros, y ese gasto no estaba en los cálculos iniciales. Rescataste la imagen de la marca, sí, pero castigaste una parte gigantesca de tu propia utilidad operativa mensual por culpa del estrés y de la improvisación tardía que se disparó justo en los últimos meses.",
    "recomendacion": "Para futuras rectas de fin de año, debes congelar todo compromiso nuevo a principios de noviembre y establecer formalmente que cualquier urgencia a partir de ese mes tendrá un sobrecargo mínimo del 20%. Esto te protege de las prisas, de no sacrificar plata tuya por capricho ajeno y garantiza que el margen bruto de finalización de año sea tan amplio como realmente lo necesitas para tu tranquilidad de diciembre.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})

# (2023)
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai", "periodo_ano": 2023, "period_key": "Annual", "tipo": "warning", "titulo": "Auditoría Anual de Rentabilidad 2023",
    "analisis_positivo": "Al repasar por completo el 2023 se nota cómo tu visión de montar la consultora superó obstáculos durísimos demostrando una capacidad enorme para levantar márgenes increíbles en picos aislados donde vendiste a precios premium. Fue tu año de mayor aprendizaje empresarial, donde la austeridad que aplicaste para no endeudarte a largo plazo fue la decisión estelar que sostuvo en pie a tu negocio sin la agobiante preocupación financiera.",
    "analisis_negativo": "A lo largo de este mismo año quedaste muy mal parado cuando se cruzaron gastos operativos que nunca mediste, dejando tus líneas de utilidad reducidas casi a la nada mes tras mes. Invertiste fuertemente tu tiempo, conocimiento y esfuerzo para fundar una clientela clave, pero terminaste cobrando demasiado barato; al final te llevaste poquísima ganancia a pesar de que el desgaste personal y operativo fue gigantesco e incansable.",
    "recomendacion": "A partir de las lecciones del 2023, la regla de oro debe ser integrar siempre un gran colchón de imprevistos comerciales de hasta el 15% dentro del costo total de tus consultorías macro. Ese margen de colchón servirá como paracaídas salvador para que jamás vuelva a pasar que los gastos ocultos, notariales o logísticos de tu operación diaria terminen devorando íntegramente toda tu ansiada y merecida rentabilidad.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Maestro 2023"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_1Q", "periodo_ano": 2023, "period_key": "1Q", "tipo": "warning", "titulo": "Rentabilidad del Primer Trimestre 2023",
    "analisis_positivo": "Tu capacidad de reacción en los primeros tres meses de 2023 te permitió cerrar acuerdos vitales a tiempo y generar una inyección de caja básica para asegurar que la máquina operativa se prendiera correctamente. Mantuviste la concentración necesaria en tus labores cruciales de venta para alcanzar esos primeros pesos de flujo libre que permitieron sufragar las nóminas primarias con la frente sumamente alta e inspirar confianza a todos.",
    "analisis_negativo": "Lastimosamente en este momento tu margen operativo real se vio asfixiado porque cometiste el típico error de asumir gastos fuertes en publicidad o estructuración administrativa que devoraron los escasos recursos sin dar gran retorno táctico rápido. Todo el valioso esfuerzo invertido intelectualmente se sintió pobremente recompensado en caja puesto que tus salidas de dinero fueron muchísimo más volátiles e inmediatas que el plazo acordado para que entraran los pagos de clientes.",
    "recomendacion": "Es vital que cuando vuelvas a tener trimestres inaugurales apalancados con tu reputación, restrinjas absolutamente todo gasto no facturable y postergues la formalidad hasta tener recursos fuertes que fluyan con naturalidad. Adquiere el hábito de priorizar vender agresivamente primero con lo mínimo indispensable; esa caja limpia te protegerá y levantará vertiginosamente los márgenes iniciales que necesitas tan pronto arranque el ciclo temporal de los primeros proyectos de envergadura.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_2Q", "periodo_ano": 2023, "period_key": "2Q", "tipo": "warning", "titulo": "Rentabilidad del Segundo Trimestre 2023",
    "analisis_positivo": "En medio del segundo trimestre lograste consolidar ventas con excelentes sobrecargos al encontrar la tarifa que ciertos mercados estaban dispuestos a pagar sin ninguna resistencia apreciable. Tu Margen Bruto, en operaciones sumamente puntuales, rompió momentáneamente las expectativas y demostró matemáticamente que el esfuerzo central de tu negocio es supremamente rico cuando vendes exactamente al público indicado en el momento propicio.",
    "analisis_negativo": "A la par con la venta de servicios caros, fuiste desorganizado con la contratación del soporte técnico especializado secundario dejando una huella permanente de desangre mensual recurrente en tu utilidad, reduciendo muchísimo tu ganancia a repartir. Este descontrol puntual te nubló temporalmente la visión y propició que parte de tus honorarios altos recaudados sirvieran únicamente para subsidiar malas contrataciones transitorias carentes del impacto definitivo esperado en eficiencia analítica.",
    "recomendacion": "Evita de raíz el contratar posiciones fijas en tu estructura corporativa por un exceso de optimismo en plazos relativamente cortos tan inciertos en maduración temprana; opta por asociarte contra resultados específicos de entrega táctica puntual. Pagando porcentajes netos por hora laborable real aseguras de inmediato un control ferreo en el margen y previenes perder lo generado evadiendo la trampa clásica mortal del crecimiento costoso desalineado con tus reales entradas comerciales.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_3Q", "periodo_ano": 2023, "period_key": "3Q", "tipo": "warning", "titulo": "Rentabilidad del Tercer Trimestre 2023",
    "analisis_positivo": "Para el cierre del tercer ciclo trimestral, empezaste verdaderamente a optimizar la cantidad productiva de clientes repetitivos, consolidando exitosamente que la retención de ganancias se incrementara por un leve mejoramiento del efecto de escala orgánico. Este paso decisivo le dio a la empresa la deseada estabilidad respiratoria y pavimentó claramente el camino para obtener una rotación del patrimonio infinitamente superior a la vivida durante las duras épocas del primer semestre.",
    "analisis_negativo": "No pudiste evitar que tus propios clientes demoraran las conformidades finales exigiendo largas demoras inexplicables y dilataran injustamente tus cobros finales asfixiando severamente el ciclo normal del reconocimiento del Margen Neto sobre tu balance a cierre. Te enfrentaste amargamente a una carga monumental de desgaste diario por revisiones que no facturaste; como consecuencia la rentabilidad porcentual terminó siendo bastante opaca respecto al altísimo grado de sofisticación otorgado permanentemente por parte de tu conocimiento central.",
    "recomendacion": "Tú no puedes seguir validando proyectos hasta cinco veces seguidas ni postergar tus facturas amablemente mientras ellos verifican eternamente tus buenos entregables ya aceptados por el departamento técnico; debes aplicar condiciones contundentes explícitamente establecidas desde el comienzo. Empata desde ahora tus cuentas pendientes indicándole al cliente una penalidad temporal real si se pasa del acuerdo mutuo de aprobación para blindar fuertemente el Margen Neto sin miedo al fracaso.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})
records.append({
    "empresa_id": emp_id, "indicador_key": "insight-rentabilidad-ai_4Q", "periodo_ano": 2023, "period_key": "4Q", "tipo": "warning", "titulo": "Rentabilidad del Cuarto Trimestre 2023",
    "analisis_positivo": "Durante tu último trimestre del año cobraste un impulso notable al aprovechar cierres de presupuestos de clientes e indexando a tu marca muchísima venta rápida, logrando elevar rápidamente tus beneficios finales del acumulado de rentabilidad. Ejecutaste de forma excelente las órdenes pendientes capitalizando el volumen y garantizaste en última instancia salir a flote de este primer gran año empresarial, asegurando rentabilidad y despejando financieramente tus proyecciones a corto plazo.",
    "analisis_negativo": "Al evaluar la calidad del cierre te diste cuenta rápidamente de la avalancha gigantesca incontrolada de imprevistos urgentes y legalizaciones que se multiplicaron enormemente destrozando una parte significativa y crucial del ahorro anualizado total planeado inicialmente. Esa falta total de dimensionar y facturarle estas sorpresas operativas a tu propio cliente socavó definitivamente tu ilusión primaria de ganar más, limitando duramente la posibilidad real y tangible de hacer más fuertes inversiones.",
    "recomendacion": "Debes incluir obligatoriamente, sin discusión posible, siempre un margen de imprevistos adicional del 20% como cobertura total de rentabilidad garantizada antes de enviar cualquier oferta final de cierre de año en futuras licitaciones complejas. Lograr esta férrea posición negociadora estancará de raíz las fugas periféricas y le dará el necesario poder blindado a la facturación para que tú obtengas exactitud total en tu ganancia, protegiendo permanentemente tu esfuerzo anual final.",
    "metodologia": "Bloque A - Rentabilidad - Dictamen Trimestral"
})

if __name__ == "__main__":
    generate_sql(records)
