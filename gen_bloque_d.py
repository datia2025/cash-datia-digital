import json
import argparse
import urllib.request

# ==============================================================================
# CORRECCIONES APLICADAS:
# IC-04: empresa_id y target_year ahora son argumentos CLI (argparse).
#        El campo empresa_id en el payload se toma del argumento, no hardcodeado.
#        La URL de la API se construye dinámicamente.
# EN-04: Las indicador_key se generan en MAYÚSCULAS para coincidir con la
#        búsqueda .toUpperCase() de app_actividad.js (ej: "DSO_M1", no "dso_m1").
# ==============================================================================

BASE_URL = "https://datia-liquidity-worker.coaba7.easypanel.host/api/indicadores"

months_names = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio",
                "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]

def get_data(empresa_id):
    url = f"{BASE_URL}/{empresa_id}?modulo=actividad"
    req = urllib.request.Request(url)
    with urllib.request.urlopen(req) as response:
        return json.loads(response.read().decode('utf-8'))

def generate_text_cce(month_name, val, avg, improved):
    # Ciclo de Conversion Efectivo (Menor es mejor)
    pos = f"[Analisis Interanual - Mes] El flujo operativo de {month_name} refleja una sincronizacion destacable en tus procesos internos. Al mantener los tiempos de recuperacion bajo control y mejorar la velocidad con la que tu esfuerzo comercial se transforma en liquidez real en bancos, lograste que tu caja mensual respire con tranquilidad frente al promedio de anos anteriores, otorgandote libertad para asumir nuevos compromisos y financiar proyectos urgentes sin recurrir a costosas deudas bancarias de contingencia en plena mitad de periodo."
    neg = f"[Analisis Interanual - Mes] La estancacion del flujo durante {month_name} es una alerta roja para tus finanzas a corto plazo. Has permitido que tu dinero permanezca congelado entre procesos operativos y tiempos de espera de facturacion, superando peligrosamente la marca historica que tenias controlada. Esta dilatacion erosiona directamente tus margenes de maniobra, obligandote a estirar el presupuesto mensual de nomina operativa al limite y amenazando tu estabilidad comercial general durante este corte estacional."
    rec = f"[Analisis Interanual - Mes] Necesitas implantar urgentemente una politica de cierre rapido de proyectos facturables para el mes en curso. Audita junto a tu equipo lider cuales actas de entrega estan pendientes por meras formalidades y exige que todo servicio tecnico quede aceptado y cobrado en un plazo maximo de quince dias. Mantén reuniones de flujo de caja semanales obligatorias para que toda la organizacion entienda que la velocidad de cobro es la prioridad maxima del trimestre en curso constante."
    status = "success" if improved else "danger"
    return pos, neg, rec, status

def generate_text_dso(month_name, val, avg, improved):
    # Dias de Cartera (Menor es mejor)
    pos = f"[Analisis Interanual - Mes] Tu gestion de cobranza durante {month_name} ha sido un caso de exito rotundo para el equipo. Lograste recuperar la cartera mucho mas rapido de lo que marcaban tus tendencias historicas, asegurando que tus grandes clientes corporativos honren sus compromisos dentro de tiempos razonables. Esta velocidad inyecto de inmediato una liquidez sumamente valiosa que protege a la firma contra cualquier imprevisto financiero, permitiendo planificar con total certidumbre absoluta sin sobresaltos economicos imprevistos."
    neg = f"[Analisis Interanual - Mes] Tus tiempos de cobranza entraron en una zona de extremo riesgo comercial durante {month_name}, acumulando retrasos significativos frente a lo que habias logrado en el historico reciente de la firma. Estas subsidiando pasivamente la operacion de tus clientes con tu propio flujo de efectivo interno, lo que significa que el peso de la quincena y los gastos fijos ahora recaen sobre un dinero que solo existe teoricamente en el papel y no en la realidad bancaria tuya."
    rec = f"[Analisis Interanual - Mes] Debes bloquear completamente la entrega de nuevos reportes de consultoria a los clientes con mas de sesenta dias en mora acumulada durante este mes critico. Contacta directamente desde la gerencia general a los tesoreros de esas grandes cuentas atrasadas y propon acuerdos de pronto pago inmediatos, dejando muy en claro que no puedes seguir financiando sus operaciones a costa de arriesgar el propio ecosistema operativo que mantiene la calidad del servicio tuya en la firma."
    status = "success" if improved else "danger"
    return pos, neg, rec, status

def generate_text_dio(month_name, val, avg, improved):
    # Dias Inventario (Menor es mejor)
    pos = f"[Analisis Interanual - Mes] A lo largo de {month_name}, la eficiencia de tu modelo de servicios digitales sin almacenamiento fisico te mantuvo libre de los pesados sobrecostos estructurales que arrastran a las empresas tradicionales. Tu capacidad de operar con total ligereza te ha blindado completamente contra la depreciacion de materiales, permitiendo que la rentabilidad obtenida por tus horas de consultoria se traslade integramente a resultados financieros sin perdidas en logistica o mantenimientos preventivos excesivamente costosos en periodo."
    neg = f"[Analisis Interanual - Mes] Durante {month_name}, detectamos un estancamiento en el volumen de tus horas disponibles que no se tradujeron en salidas y entregas confirmadas para facturacion. Tuviste una acumulacion de procesos tecnicos o analisis a medias que operan como un inventario oculto sumamente pernicioso. Cada proyecto atascado en fases de revision sin fecha de cierre consume recursos valiosisimos de tu equipo senior, bloqueando asi su capacidad de empezar nuevos trabajos facturables que oxigenarian verdaderamente este mes atipico."
    rec = f"[Analisis Interanual - Mes] Instala un mecanismo de seguimiento diario sobre todos los proyectos activos de {month_name} que esten superando su tiempo estimado de resolucion tecnica preliminar. Identifica cuales especialistas estan sobrecargados de revisiones o pausas administrativas, y reasigna tareas de inmediato al resto del equipo disponible para vaciar esa tuberia de trabajo reprimido, asegurando que nada se quede estancado en la nube por una simple falta de coordinacion interna operativa que podrias corregir agilmente."
    status = "success" if improved else "warning"
    return pos, neg, rec, status

def generate_text_dpo(month_name, val, avg, improved):
    # Dias Proveedores (Mayor es mejor — mayor plazo = mejor apalancamiento)
    pos = f"[Analisis Interanual - Mes] Has negociado plazos de pago magistrales durante {month_name}, logrando sostenerte financieramente sin sacrificar tus reservas gracias al respaldo y comprension de tus actuales aliados tecnologicos y contratistas paralelos. Este valioso tiempo extra que te otorgan antes de exigir el cobro actua como una linea de financiacion gratuita indispensable, la cual eleva espectacularmente tu margen de maniobra mensual para apalancar nuevos desarrollos sin descapitalizarte abruptamente al final de cada quincena laboral intensa."
    neg = f"[Analisis Interanual - Mes] La rapidez con la que saldaste todas tus obligaciones de proveedores durante {month_name} ha comprometido muy seriamente la caja propia de la empresa este corte. En lugar de aprovechar a plenitud los acuerdos comerciales vigentes para diluir la carga, pagaste aceleradamente y dejaste tus cuentas bancarias expuestas. Al quemar liquidez tan prematuramente frente a tu promedio historico de desembolsos, te quedas atrapado con poco aire financiero por si surgen emergencias en las recolecciones de este mismo periodo."
    rec = f"[Analisis Interanual - Mes] Llama a todos tus aliados clave hoy mismo y restructura con urgencia un esquema de desembolsos que proyecte tus pagos fuertes a cuarenta y cinco o sesenta dias vista. Justifica esto remarcando las condiciones de la industria y la necesidad de acoplarse mutuamente, garantizando que seguiras trabajando fielmente con ellos solo si colaboran activamente para aligerar la tension de la nomina y los impuestos inevitables acumulados a finales del ciclo operativo regular."
    status = "success" if improved else "warning"
    return pos, neg, rec, status

def generate_text_roca(month_name, val, avg, improved):
    # Rotacion activos (Mayor es mejor)
    pos = f"[Analisis Interanual - Mes] Tu infraestructura genero un despliegue de fuerza enorme en {month_name}, logrando que los activos actuales de la empresa produjeran ventas netas por encima de las marcas historicas para este mismo periodo ciclico. La maquinaria opero en estado de optimizacion absoluta, probando nuevamente ante socios e inversionistas como una gestion bien planificada del talento digital y la infraestructura genera crecimiento tangible en la facturacion sin necesidad de inyectar grandes deudas al capital fundacional original."
    neg = f"[Analisis Interanual - Mes] La caida en la rotacion registrada este {month_name} revela una alarmante ociosidad en la infraestructura general que soporta legal y tecnicamente tu operacion administrativa regular. Tienes mucho valor inmovilizado y una capacidad enorme de generar ingresos que, paradojicamente, no lograste capitalizar frente al historico comparativo de este mes. Tu balance patrimonial es pesado e ineficiente frente a los pocos contratos cerrados en firme, lo cual lastra terriblemente el rendimiento absoluto del dividendo final."
    rec = f"[Analisis Interanual - Mes] Activa un plan de contingencia comercial de venta cruzada focalizado en explotar los recursos subutilizados de este mismo instante. Ofrece paquetes de micro-consultoria rapida o auditorias flash de alto margen entre tu cartera de clientes leales existentes, utilizando toda tu maquinaria paralizada para producir ingresos recurrentes de ultimo minuto que logren rentabilizar y encender agresivamente los motores dormidos del activo circulante corporativo antes de clausurar el mes y rendir el reporte oficial correspondiente."
    status = "info" if improved else "danger"
    return pos, neg, rec, status

def generate_text_rocc(month_name, val, avg, improved):
    # Rotacion cartera (Mayor es mejor)
    pos = f"[Analisis Interanual - Mes] Durante el exigente lapso de {month_name}, tu destreza para girar las cuentas por cobrar y transformarlas rapidamente en billetes demostro ser una competencia clave del negocio frente al mercado local. Has dinamizado sustancialmente el ingreso natural frente a ejercicios anteriores de este mismo mes interanual, probando de forma definitiva que posees el caracter y rigor de cobranza corporativo indispensables para asegurar plenamente que nadie especule a costa de los ahorros y crecimiento sano de la organizacion total."
    neg = f"[Analisis Interanual - Mes] Tu tuberia de cobranza sufrio un atasco gravisimo en todo {month_name}, desacelerando dramaticamente la rapidez natural de conversion lograda en anos anteriores evaluados hasta hoy mismo. El balance luce prometedor, pero la triste realidad es que todos esos ingresos facturados continuan sin poderse materializar debido a demoras en tramites burocraticos externos de la clientela mayor. Esto paraliza directamente hasta el plan operativo mas elemental que intentes desplegar en el corto plazo."
    rec = f"[Analisis Interanual - Mes] Incorpora inmediatamente un protocolo estricto de suspension tecnologica por morosidad para todos aquellos contratos que superen las fechas tolerables acordadas sin importar el tamano del cliente; bloquea el envio de reportes de asesoria valiosos de manera que este experimente urgentemente la necesidad prioritaria de pagar lo exigible si realmente desea seguir apalancandose de tu alto nivel de especializacion mensual acumulado con tanto trabajo y profundo esmero tecnico interno."
    status = "success" if improved else "danger"
    return pos, neg, rec, status

def generate_text_roin(month_name, val, avg, improved):
    # Rotacion de inventarios (Mayor es mejor)
    pos = f"[Analisis Interanual - Mes] Mantuviste impecable la arquitectura liviana y altamente competitiva que caracteriza a la empresa durante todo {month_name}, despachando labores consultivas y reportes finales al instante en cuanto culminaba el analisis riguroso tecnico requerido. Esta extrema velocidad de liquidacion de proyectos no solo maravilla al consumidor final por tu extrema agilidad comprobada, sino que tambien elimina absolutamente aquel riesgo paralizante de quedarse empantanado en retrabajos infinitos innecesarios o costos hundidos que minan seriamente tu moral general operativa."
    neg = f"[Analisis Interanual - Mes] Este particular mes de {month_name} demostro un preocupante acumulo de horas sin procesar de cierre y trabajos de consultoria inconclusos, actuando negativamente como un inventario pesadisimo estancado que deprime seriamente las metas de utilidad del semestre actual entero. Frente al historico, ahora retienes mucha mas carga tecnica sin concluir de la tolerable habitualmente, exponiendo a todos a un cansancio colosal sin recibir la recompensa del pago monetario por estar enredados con procesos paralelos simultaneos."
    rec = f"[Analisis Interanual - Mes] Elimina radicalmente cualquier solicitud o correccion de alcance tecnico adicional de tus clientes que no este contractualmente obligada. Concede maxima prioridad y obligatoriedad unica a culminar los documentos operativos iniciales del acuerdo contractual original antes de embarcarte en complejas revisiones conceptuales agregadas, garantizando de ese modo la velocidad maxima de cierre del servicio ofrecido para poder facturar prontamente lo adeudado sin seguir inflando tu carga laboral presente durante todo este demandante ciclo."
    status = "success" if improved else "warning"
    return pos, neg, rec, status

def generate_text_ropr(month_name, val, avg, improved):
    # Rotacion de proveedores (Menor es mejor — menos rotacion = mayor apalancamiento)
    pos = f"[Analisis Interanual - Mes] Ejerciste una retencion tactica sobresaliente del capital operativo propio a lo largo del mes de {month_name}, frenando sensatamente ese impetu innecesario de pagar todo por adelantado antes de tus cobros fuertes reales consolidados. Has calibrado muy cuidadosamente las fechas de exigibilidad apoyandote en la confianza de tus historicos contratistas asociados, lo que se traduce hoy como una notable ventaja tactica que fortalece formidablemente tus reservas mas liquidas frente al duro comportamiento tipico estadistico de este mismo y desafiante corte interanual."
    neg = f"[Analisis Interanual - Mes] Actuaste impulsivamente liquidando todos los compromisos de acreedores muy precipitadamente en {month_name}, inmolando absurdamente tu indispensable colchon de tranquilidad monetaria cuando ni siquiera habias asegurado tus grandes ingresos. El haber girado dinero sumamente rapido a terceros genero una contraccion de tus propios ahorros, muy dispar y agresiva frente al patron pacifico natural observado en anos previos comparables, situandote en inferioridad de condiciones y a expensas totales de cualquier falla de un solo cliente atrasado."
    rec = f"[Analisis Interanual - Mes] Adopta a partir de manana mismo un enfoque de caja netamente conservador y altamente defensivo frente al entorno desafiante externo. No liberes ninguna suma monetaria por anticipos operativos que no esten obligados penalmente ni exijas un descuento agresivo por adelantarlo; coordina de una vez y por todas con proveedores tus deudas estrategicas en bloque mensual unificando en lo posible cronogramas equitativos que salvaguarden prioritariamente cada valioso centavo ahorrado para la continuidad operativa."
    status = "info" if improved else "warning"
    return pos, neg, rec, status


TEMPLATE_MAP = {
    "ciclo_conversion_efectivo": generate_text_cce,
    "dso": generate_text_dso,
    "dio": generate_text_dio,
    "dpo": generate_text_dpo,
    "rotacion_activos": generate_text_roca,
    "rotacion_cartera": generate_text_rocc,
    "rotacion_inventarios": generate_text_roin,
    "rotacion_proveedores": generate_text_ropr
}

def generate_db(empresa_id, target_year):
    print(f"Fetching API data for empresa_id={empresa_id}, target_year={target_year}...")
    raw = get_data(empresa_id)
    indicadores = raw.get("indicadores", [])

    payload = []

    for ind in indicadores:
        key = ind.get("indicador_key")
        if key not in TEMPLATE_MAP:
            continue

        data = ind.get("data", [])

        parsed_data = []
        for x in data:
            if isinstance(x, dict):
                parsed_data.append(x)
            elif isinstance(x, str):
                import re
                match = re.search(r"year=(\d+);\s*month=(\d+);\s*valor=([-\d\.]+)", x)
                if match:
                    parsed_data.append({
                        "year": int(match.group(1)),
                        "month": int(match.group(2)),
                        "valor": float(match.group(3))
                    })

        # Agrupar por mes para calcular promedio historico (3 anos anteriores + target_year)
        hist_start = target_year - 2  # ej: si target=2025, historico desde 2023
        month_summary = {m: [] for m in range(1, 13)}
        val_target = {m: 0.0 for m in range(1, 13)}

        for p in parsed_data:
            y = p["year"]
            m = p["month"]
            v = p["valor"]
            if hist_start <= y <= target_year:
                month_summary[m].append(v)
            if y == target_year:
                val_target[m] = v

        for m in range(1, 13):
            avg = sum(month_summary[m]) / len(month_summary[m]) if month_summary[m] else 0.0
            val = val_target[m]

            if key in ["ciclo_conversion_efectivo", "dso", "dio", "rotacion_proveedores"]:
                improved = val < avg
            else:
                improved = val > avg

            fn = TEMPLATE_MAP[key]
            pos, neg, rec, status = fn(months_names[m - 1], val, avg, improved)

            # IC-04 FIX: empresa_id viene del argumento, no hardcodeado
            # EN-04 FIX: indicador_key en MAYUSCULAS para coincidir con busqueda
            #            .toUpperCase() en app_actividad.js (ej: "DSO_M1")
            payload.append({
                "empresa_id": empresa_id,
                "indicador_key": f"{key}_M{m}".upper(),
                "periodo_ano": target_year,
                "year": target_year,
                "period_key": f"M{m}",
                "tipo": status,
                "analisis_positivo": pos,
                "analisis_negativo": neg,
                "recomendacion": rec,
                "metodologia": f"Bloque D - Comparativo Mensual Interanual - {months_names[m - 1]}",
                "generado_por": "antigravity"
            })

    output_file = f"payload_bloque_d_{empresa_id}_{target_year}.json"
    with open(output_file, "w", encoding="utf-8") as f:
        json.dump(payload, f, indent=2, ensure_ascii=False)

    print(f"Generated {len(payload)} records -> {output_file}")
    return output_file


if __name__ == "__main__":
    # IC-04 FIX: empresa_id y target_year como argumentos CLI
    # Uso: python gen_bloque_d.py --empresa_id 3104 --target_year 2025
    parser = argparse.ArgumentParser(description="Generador Bloque D - Comparativo Mensual Interanual")
    parser.add_argument("--empresa_id", type=int, required=True, help="ID de la empresa a procesar")
    parser.add_argument("--target_year", type=int, required=True, help="Año fiscal objetivo del analisis (ej: 2025)")
    args = parser.parse_args()

    generate_db(args.empresa_id, args.target_year)
