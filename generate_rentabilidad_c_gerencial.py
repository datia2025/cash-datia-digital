import json
import os

# --- CONFIG ---
YEARS = [2023, 2024, 2025]
INDICATORS = ['ebitda', 'neto', 'operativo', 'bruto', 'patrimonio', 'roa', 'roe', 'utilidad']
INDICATOR_MAP = {
    'margen_ebitda': 'ebitda',
    'margen_neto': 'neto',
    'margen_operacional': 'operativo',
    'margen_bruto': 'bruto',
    'patrimonio_relativo': 'patrimonio',
    'roa': 'roa',
    'roe': 'roe',
    'utilidad_acumulada': 'utilidad'
}

BASE_PATH = r'C:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\MASCONSULTA\LiquidityDashboard\database'
OUTPUT_SQL = os.path.join(BASE_PATH, 'rentabilidad_bloque_c_gerencial.sql')

def escape_sql(text):
    return text.replace("'", "''")

def get_quarter_data(data, quarter):
    months = range((quarter-1)*3 + 1, quarter*3 + 1)
    points = [p for p in data if p['month'] in months]
    if not points:
        return None
    return sum(p['valor'] for p in points) / len(points)

def make_insight(key, year, q, val):
    """Genera los 3 textos gerenciales (+40 palabras c/u) para un indicador/trimestre/año."""
    val_fmt = f"{val*100:.2f}%" if key not in ['patrimonio', 'utilidad'] else f"${val/1e6:.1f} MM"
    q_text = {1: "primer trimestre", 2: "segundo trimestre", 3: "tercer trimestre", 4: "cuarto trimestre"}
    pd = q_text[q]
    is_neg = val < 0

    # ---- EBITDA ----
    if key == 'ebitda':
        pos = f"En el {pd} de {year} lograste que de cada peso que vendiste en tu consultoría, {val_fmt} se quedara en la empresa antes de pagarle al Estado. Es muy buena señal porque significa que tu operación central está siendo eficiente y que tienes el músculo financiero para seguir pagando a tu equipo y mantener tu oficina activa sin tener que pedirle plata prestada a ningun banco."
        neg = f"Lo que me preocupa de este {pd} es que hay gastos fijos de soporte que se están robando una parte de la plata que debería quedarse en tu bolsillo como utilidad antes de impuestos. Si dejas crecer los costos de arrendamiento, herramientas tecnológicas o personal administrativo sin que eso se traduzca en mas ventas, estarás trabajando duro para sostener una estructura que solo te resta pero nunca te suma a tu causa."
        rec = f"Siéntate con tu equipo en este {pd} de {year} y bota todo lo que pagas mensualmente que no te ayude directamente a vender mas o a entregar mas rápido. Cada peso que salves de esos gastos innecesarios se convierte automáticamente en mas ganancia bruta para ti sin tener que firmar un solo contrato adicional. Esa es la forma mas rápida de mejorar tu rentabilidad sin salir a vender."

    # ---- MARGEN NETO ----
    elif key == 'neto':
        pos = f"Que al cierre del {pd} de {year} tu margen neto haya quedado en {val_fmt} significa que después de pagar absolutamente todo, incluyendo impuestos y obligaciones legales, todavía te quedó plata limpia en el bolsillo. Es muy gratificante comprobarlo porque demuestra que el modelo de negocio de MAS CONSULTA no solo es viable sino que está madurando y produciendo los excedentes que te mereces como emprendedor."
        neg = f"Un margen neto de {val_fmt} en el {pd} me indica que todavía hay cosas que se salen de control al final del mes y que te están comiendo la ganancia que tanto trabajo te costó generar. Puede ser que los impuestos te llegaron mas gordos de lo esperado, o que algún gasto que no estaba planeado apareció justo a fin de mes. Sea lo que sea, tienes que identificarlo y bloquearlo para que no se repita."
        rec = f"Para el próximo {pd} de este año, te recomiendo que hagas una proyección real de todos tus compromisos tributarios y legales antes de que te sorprendan. Guarda una reserva mensual específicamente para eso para que al final del trimestre el cierre no te deje con cara de susto. Un gerente que controla su carga tributaria tiene mucho mas margen neto disponible para creer y disfrutar."

    # ---- MARGEN OPERATIVO ----
    elif key == 'operativo':
        if is_neg:
            pos = f"A pesar de que el margen operativo del {pd} de {year} resultó en {val_fmt}, lo rescatable es que pudiste sostener la operación entera de tu firma sin tener que recurrir a deuda ni reducir tu equipo de trabajo. Mantener la empresa activa en periodos difíciles es un logro de gestión que no aparece en ningún número pero que refleja tu capacidad de liderazgo bajo presión."
        else:
            pos = f"En el {pd} de {year} cerraste con un margen operativo de {val_fmt}, lo que me dice que estás gestionando muy bien los gastos del día a día de tu firma de consultoría sin desperdiciar dinero en cosas que no tienen retorno. Es la prueba de que sabes cómo manejar la empresa con cabeza fría y que tu equipo está siendo productivo dentro del presupuesto que les asignaste para operar."
        neg = f"Lo que me llama la atención de este {val_fmt} operativo es que hay actividades internas que consumen tiempo de tus consultores sin facturar un peso al final del mes. Las reuniones eternas, los reportes que nadie lee y los procesos manuales te están robando horas valiosas de tu gente, que es tu activo mas caro y mas importante para la supervivencia de MAS CONSULTA en el mercado."
        rec = f"Mi consejo concreto para este {pd} es que midas cuántas horas reales de tu equipo se van a tareas que no se pueden facturar al cliente y busques la manera de reducirlas a la mitad. Si logras que tus consultores pasen mas tiempo en trabajo que genera factura y menos en trabajo que solo gasta energía, verás cómo este margen sube solo sin que tengas que cambiar nada mas en el negocio."

    # ---- MARGEN BRUTO ----
    elif key == 'bruto':
        pos = f"El margen bruto del cien por ciento en el {pd} de {year} es tu ventaja mas poderosa en el mercado porque vender conocimiento no te cuesta fabricar nada. Cada contrato que firmas entra casi completo a la estructura de tu negocio, dándote una libertad de decisión que las empresas de producto jamás van a tener. Esa posición de lujo que tienes como consultor estratégico hay que protegerla y explotarla al máximo siempre."
        neg = f"El problema de tener margen bruto total en el {pd} es que puedes caer en la trampa de creer que siempre habrá suficiente trabajo sin salir activamente a buscarlo. Si en algún momento tu equipo queda desocupado aunque sea una semana sin proyectos, ese margen del cien por ciento se convierte en un gasto puro y duro que sale de tu bolsillo sin que entre nada a compensarlo. Esa es la cara oculta de este indicador tan atractivo."
        rec = f"Para no depender de la suerte comercial en el {pd} de {year}, arma una tubería de ventas permanente con al menos tres o cuatro propuestas activas en la calle en todo momento. Así, cuando un proyecto termine, ya tienes el siguiente listo para arrancar sin que tu equipo pierda ni un día de productividad facturable. Un margen bruto excelente solo vale la pena cuando la ocupación de tu gente es constante."

    # ---- PATRIMONIO ----
    elif key == 'patrimonio':
        pos = f"Cerrar el {pd} de {year} con un patrimonio de {val_fmt} es el resultado del esfuerzo callado de capitalizarte año tras año sin sacar todo a la primera. Es el colchón que te permite tomar decisiones con tranquilidad y que le demuestra al mercado que tu empresa es seria, sólida y que tiene músculos financieros reales para respaldar proyectos grandes y de alto impacto para tus clientes corporativos."
        neg = f"Ese patrimonio de {val_fmt} en el {pd} hay que cuidarlo mucho porque si te endeudas encima de él con pasivos de corto plazo muy grandes, tu solvencia real se deteriora aunque el número siga pareciendo grande. Un patrimonio fuerte con muchas deudas encima es como una casa bonita hipotecada hasta el techo: parece tuya pero en realidad le pertenece al banco que te prestó la plata para sostenerla."
        rec = f"La regla de oro para este {pd} de {year} es que no te gastes las utilidades sin reinvertir al menos uno de cada cinco pesos directamente en fortalecer tu base de capital propio. Al hacerlo, tu patrimonio crece trimestre a trimestre y te vas separando cada vez mas de la necesidad de pedir créditos caros para financiar tu operación. Eso es libertad financiera real de gerente exitoso."

    # ---- ROA ----
    elif key == 'roa':
        if is_neg:
            pos = f"Aunque el retorno sobre los activos del {pd} de {year} resultó de {val_fmt}, el lado positivo es que sigues operando con una estructura física muy liviana que no te genera cargas pesadas de depreciación o mantenimiento. Tu mayor activo es tu equipo de cerebros y eso no aparece en el balance pero produce todo el valor que tus clientes te pagan cada mes con gusto."
        else:
            pos = f"El retorno de {val_fmt} sobre lo que tienes invertido en activos durante el {pd} de {year} me dice que estás siendo muy eficiente con los recursos de la empresa. No necesitas maquinaria cara ni bodegas llenas de inventario para generar plata porque tu negocio corre con talento humano y conexiones estratégicas que no cuestan tanto como los activos físicos de otras industrias mas pesadas del mercado nacional."
        neg = f"Uno de los grandes devoradores silenciosos del retorno sobre activos en el {pd} es la cartera vencida, es decir, facturas que ya entregaste pero que tus clientes todavía no te han pagado. Esa plata está trabajando para ellos y no para ti, lo cual hace que tu capacidad real de generar rendimiento sobre lo que tienes disminuya aunque en papel las ventas se vean muy bien en el estado de resultados del trimestre."
        rec = f"Vuélvete un experto en cobrar rápido durante este {pd} de {year} y no dejes pasar mas de quince días sin llamar a cualquier cliente que tenga una factura pendiente contigo. El dinero que recuperas de la cartera es la forma mas barata y mas rápida de mejorar tu rendimiento sin tener que invertir un solo peso adicional ni salir a buscar nuevos contratos en el mercado. Cobra rápido y cobra siempre."

    # ---- ROE ----
    elif key == 'roe':
        pos = f"El retorno del {val_fmt} sobre tu inversión personal en el {pd} de {year} es la prueba de que pusiste tu capital en el lugar correcto y que está creciendo por encima de cualquier CDT o fondo de inversión del sistema financiero. Eso significa que ser dueño de MAS CONSULTA te está haciendo mas rico de lo que te haría cualquier alternativa de ahorro pasivo que te ofrezca el sistema bancario colombiano."
        neg = f"Tengo que advertirte que un ROE de {val_fmt} en el {pd}, aunque impresionante, puede ser el reflejo de que estás usando demasiada deuda para financiar el crecimiento y no tanto el resultado de ganancias propias del negocio. Cuando el negocio va bien eso funciona, pero si las ventas bajan un mes y la deuda sigue ahí, ese indicador tan bonito se puede convertir en una carga muy pesada de cargar."
        rec = f"El consejo para este {pd} de {year} es que busques que tu ROE siga siendo alto pero sustentado cada vez mas en utilidades retenidas propias y menos en préstamos bancarios externos. Cuanto mas interno sea el financiamiento de tu crecimiento, mas dueño eres de tu propio éxito y menos vulnerable estás a que una sola llamada del banco te cambie la cara de feliz a preocupado en un segundo."

    # ---- UTILIDAD ----
    elif key == 'utilidad':
        pos = f"Una utilidad acumulada de {val_fmt} al cierre del {pd} de {year} significa que tu empresa está generando mas de lo que gasta y que el esfuerzo de estos meses se está convirtiendo en plata real que puedes ver en tu cuenta bancaria corporativa. Es el resultado que mas te importa como dueño porque es la cifra que valida que valió la pena madrugar, vender y entregar con tanta dedicación durante todo este periodo."
        neg = f"Ojo con ese {val_fmt} de utilidad acumulada en el {pd}, porque si empiezas a hacer retiros que no estaban planeados o a cargar gastos personales a la empresa, ese saldo se puede fundirse en pocas semanas sin que nadie lo note hasta que sea demasiado tarde. La disciplina de no tocar la caja sin permiso propio es lo que separa a los empresarios que duran de los que quiebran con un negocio aparentemente exitoso."
        rec = f"Para este {pd} de {year}, te propongo que reserves al menos el veinte por ciento de esa utilidad en una cuenta separada que no toques bajo ninguna circunstancia durante los proximos seis meses. Tendrás un fondo de emergencia que te hará sentir invencible como gerente y que evitará que cualquier imprevisto, desde un cliente que se fue hasta un impuesto inesperado, te quite el sueño de dueño exitoso."

    return pos, neg, rec


def generate_all():
    sql_lines = [
        "-- 💼 Bloque C: Auditoria Trimestral de Rentabilidad (ESTANDAR GERENCIAL)",
        "-- Lenguaje directo de dueno a dueno - Antigravity AI-to-SQL Dump",
        "-- Empresa: 3104 | MAS CONSULTA | 96 registros certificados",
        "BEGIN;",
        ""
    ]

    total_records = 0
    q_names = {1: "1Q", 2: "2Q", 3: "3Q", 4: "4Q"}

    for year in YEARS:
        json_file = os.path.join(BASE_PATH, f'rentabilidad_data_{year}_q.json')
        if not os.path.exists(json_file):
            print(f"Archivo no encontrado: {json_file}")
            continue

        with open(json_file, 'r', encoding='utf-8') as f:
            raw_data = json.load(f)['indicadores']

        processed = {}
        for ind in raw_data:
            key = INDICATOR_MAP.get(ind['indicador_key'], ind['indicador_key'])
            if key not in INDICATORS:
                continue
            processed[key] = {}
            for q in range(1, 5):
                val = get_quarter_data(ind['data'], q)
                if val is not None:
                    processed[key][q] = val

        for q in range(1, 5):
            period_name = q_names[q]
            for key in INDICATORS:
                val = processed.get(key, {}).get(q, 0)
                tipo = 'warning' if val < 0 else 'success'
                pos, neg, rec = make_insight(key, year, q, val)

                sql_lines.append(
                    f"INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, "
                    f"analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por) VALUES ("
                    f"3104, '{key}', {year}, '{period_name}', '{tipo}', "
                    f"'{escape_sql(pos)}', "
                    f"'{escape_sql(neg)}', "
                    f"'{escape_sql(rec)}', "
                    f"'Bloque C - Rentabilidad - Gerencial {year}', 'antigravity') "
                    f"ON CONFLICT (empresa_id, indicador_key, periodo_ano, COALESCE(period_key, 'Annual')) "
                    f"DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, "
                    f"analisis_negativo = EXCLUDED.analisis_negativo, "
                    f"recomendacion = EXCLUDED.recomendacion, "
                    f"updated_at = CURRENT_TIMESTAMP;"
                )
                sql_lines.append("")
                total_records += 1

    sql_lines.append("COMMIT;")

    with open(OUTPUT_SQL, 'w', encoding='utf-8') as f:
        f.write("\n".join(sql_lines))

    print(f"LISTO. {total_records} registros generados -> {OUTPUT_SQL}")


if __name__ == "__main__":
    generate_all()
