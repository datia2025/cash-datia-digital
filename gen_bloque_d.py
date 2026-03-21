import json
import urllib.request

API_URL = "https://datia-liquidity-worker.coaba7.easypanel.host/api/indicadores/3104?modulo=actividad"
TARGET_YEAR = 2025

months_names = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", 
                "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]

def get_data():
    req = urllib.request.Request(API_URL)
    with urllib.request.urlopen(req) as response:
        return json.loads(response.read().decode('utf-8'))

def generate_text_cce(month_name, val, avg, improved):
    # Ciclo de Conversion Efectivo (Menor es mejor)
    pos = f"[Analisis Interanual - Mes] El flujo operativo de {month_name} refleja una sincronización destacable en tus procesos internos. Al mantener los tiempos de recuperación bajo control y mejorar la velocidad con la que tu esfuerzo comercial se transforma en liquidez real en bancos, lograste que tu caja mensual respire con tranquilidad frente al promedio de años anteriores, otorgándote libertad para asumir nuevos compromisos y financiar proyectos urgentes sin recurrir a costosas deudas bancarias de contingencia en plena mitad de periodo."
    neg = f"[Analisis Interanual - Mes] La estancación del flujo durante {month_name} es una alerta roja para tus finanzas a corto plazo. Has permitido que tu dinero permanezca congelado entre procesos operativos y tiempos de espera de facturación, superando peligrosamente la marca histórica que tenías controlada. Esta dilatación erosiona directamente tus márgenes de maniobra, obligándote a estirar el presupuesto mensual de nómina operativa al límite y amenazando tu estabilidad comercial general durante este corte estacional."
    rec = f"[Analisis Interanual - Mes] Necesitas implantar urgentemente una política de cierre rápido de proyectos facturables para el mes en curso. Audita junto a tu equipo líder cuáles actas de entrega están pendientes por meras formalidades y exige que todo servicio técnico quede aceptado y cobrado en un plazo máximo de quince días. Mantén reuniones de flujo de caja semanales obligatorias para que toda la organización entienda que la velocidad de cobro es la prioridad máxima del trimestre en curso constante."
    status = "success" if improved else "danger"
    return pos, neg, rec, status

def generate_text_dso(month_name, val, avg, improved):
    # Dias de Cartera (Menor es mejor)
    pos = f"[Analisis Interanual - Mes] Tu gestión de cobranza durante {month_name} ha sido un caso de éxito rotundo para el equipo. Lograste recuperar la cartera mucho más rápido de lo que marcaban tus tendencias históricas, asegurando que tus grandes clientes corporativos honren sus compromisos dentro de tiempos razonables. Esta velocidad inyectó de inmediato una liquidez sumamente valiosa que protege a la firma contra cualquier imprevisto financiero, permitiendo planificar con total certidumbre absoluta sin sobresaltos económicos imprevistos."
    neg = f"[Analisis Interanual - Mes] Tus tiempos de cobranza entraron en una zona de extremo riesgo comercial durante {month_name}, acumulando retrasos significativos frente a lo que habías logrado en el histórico reciente de la firma. Estás subsidiando pasivamente la operación de tus clientes con tu propio flujo de efectivo interno, lo que significa que el peso de la quincena y los gastos fijos ahora recaen sobre un dinero que solo existe teóricamente en el papel y no en la realidad bancaria tuya."
    rec = f"[Analisis Interanual - Mes] Debes bloquear completamente la entrega de nuevos reportes de consultoría a los clientes con más de sesenta días en mora acumulada durante este mes crítico. Contacta directamente desde la gerencia general a los tesoreros de esas grandes cuentas atrasadas y propón acuerdos de pronto pago inmediatos, dejando muy en claro que no puedes seguir financiando sus operaciones a costa de arriesgar el propio ecosistema operativo que mantiene la calidad del servicio tuya en la firma."
    status = "success" if improved else "danger"
    return pos, neg, rec, status

def generate_text_dio(month_name, val, avg, improved):
    # Dias Inventario (Menor es mejor)
    pos = f"[Analisis Interanual - Mes] A lo largo de {month_name}, la eficiencia de tu modelo de servicios digitales sin almacenamiento físico te mantuvo libre de los pesados sobrecostos estructurales que arrastran a las empresas tradicionales. Tu capacidad de operar con total ligereza te ha blindado completamente contra la depreciación de materiales, permitiendo que la rentabilidad obtenida por tus horas de consultoría se traslade íntegramente a resultados financieros sin pérdidas en logística o mantenimientos preventivos excesivamente costosos en periodo."
    neg = f"[Analisis Interanual - Mes] Durante {month_name}, detectamos un estancamiento en el volumen de tus horas disponibles que no se tradujeron en salidas y entregas confirmadas para facturación. Tuviste una acumulación de procesos técnicos o análisis a medias que operan como un 'inventario oculto' sumamente pernicioso. Cada proyecto atascado en fases de revisión sin fecha de cierre consume recursos valiosísimos de tu equipo senior, bloqueando así su capacidad de empezar nuevos trabajos facturables que oxigenarían verdaderamente este mes atípico."
    rec = f"[Analisis Interanual - Mes] Instala un mecanismo de seguimiento diario sobre todos los proyectos activos de {month_name} que estén superando su tiempo estimado de resolución técnica preliminar. Identifica cuáles especialistas están sobrecargados de revisiones o pausas administrativas, y reasigna tareas de inmediato al resto del equipo disponible para vaciar esa tubería de trabajo reprimido, asegurando que nada se quede estancado en la nube por una simple falta de coordinación interna operativa que podrías corregir ágilmente."
    status = "success" if improved else "warning"
    return pos, neg, rec, status

def generate_text_dpo(month_name, val, avg, improved):
    # Dias Proveedores (Mayor es mejor, pero sin abusar. Asumiendo "mejor" si está por encima del promedio pero no mora total)
    # Actually if improved == higher, it's good apalancamiento
    pos = f"[Analisis Interanual - Mes] Has negociado plazos de pago magistrales durante {month_name}, logrando sostenerte financieramente sin sacrificar tus reservas gracias al respaldo y comprensión de tus actuales aliados tecnológicos y contratistas paralelos. Este valioso tiempo extra que te otorgan antes de exigir el cobro actúa como una línea de financiación gratuita indispensable, la cual eleva espectacularmente tu margen de maniobra mensual para apalancar nuevos desarrollos sin descapitalizarte abruptamente al final de cada quincena laboral intensa."
    neg = f"[Analisis Interanual - Mes] La rapidez con la que saldaste todas tus obligaciones de proveedores durante {month_name} ha comprometido muy seriamente la caja propia de la empresa este corte. En lugar de aprovechar a plenitud los acuerdos comerciales vigentes para diluir la carga, pagaste aceleradamente y dejaste tus cuentas bancarias expuestas. Al quemar liquidez tan prematuramente frente a tu promedio histórico de desembolsos, te quedas atrapado con poco aire financiero por si surgen emergencias en las recolecciones de este mismo periodo."
    rec = f"[Analisis Interanual - Mes] Llama a todos tus aliados clave hoy mismo y restructura con urgencia un esquema de desembolsos que proyecte tus pagos fuertes a cuarenta y cinco o sesenta días vista. Justifica esto remarcando las condiciones de la industria y la necesidad de acoplarse mutuamente, garantizando que seguirás trabajando fielmente con ellos solo si colaboran activamente para aligerar la tensión de la nómina y los impuestos inevitables acumulados a finales del ciclo operativo regular."
    status = "success" if improved else "warning"
    return pos, neg, rec, status

def generate_text_roca(month_name, val, avg, improved):
    # Rotacion activos (Mayor es mejor)
    pos = f"[Analisis Interanual - Mes] Tu infraestructura generó un despliegue de fuerza enorme en {month_name}, logrando que los activos actuales de la empresa produjeran ventas netas por encima de las marcas históricas para este mismo periodo cíclico. La maquinaria de MAS CONSULTA operó en estado de optimización absoluta, probando nuevamente ante socios e inversionistas cómo una gestión bien planificada del talento digital y la infraestructura genera crecimiento tangible en la facturación sin necesidad de inyectar grandes deudas al capital fundacional original."
    neg = f"[Analisis Interanual - Mes] La caída en la rotación registrada este {month_name} revela una alarmante ociosidad en la infraestructura general que soporta legal y técnicamente tu operación administrativa regular. Tienes mucho valor inmovilizado y una capacidad enorme de generar ingresos que, paradójicamente, no lograrte capitalizar frente al histórico comparativo de este mes. Tu balance patrimonial es pesado e ineficiente frente a los pocos contratos cerrados en firme, lo cual lastra terriblemente el rendimiento absoluto del dividendo final."
    rec = f"[Analisis Interanual - Mes] Activa un plan de contingencia comercial de venta cruzada focalizado en explotar los recursos inútiles de este mísmo instante. Ofrece paquetes de micro-consultoría rápida o auditorías flash de alto margen entre tu cartera de clientes leales existentes, utilizando toda  tu maquinaria paralizada para producir ingresos recurrentes de último minuto que logren rentabilizar y encender agresivamente los motores dormidos del activo circulante corporativo antes de clausurar el mes y rendir el reporte oficial correspondiente."
    status = "info" if improved else "danger"
    return pos, neg, rec, status

def generate_text_rocc(month_name, val, avg, improved):
    # Rotacion cartera (Mayor es mejor)
    pos = f"[Analisis Interanual - Mes] Durante el exigente lapso de {month_name}, tu destreza para girar las cuentas por cobrar y transformarlas rápidamente en billetes demostró ser una competencia clave del negocio frente al mercado local. Has dinamizado sustancialmente el ingreso natural frente a ejercicios anteriores de este mismo mes interanual, probando de forma definitiva que posees el carácter y rigor de cobranza corporativo indispensables para asegurar plenamente que nadie especule a costa de los ahorros y crecimiento sano de la organización total."
    neg = f"[Analisis Interanual - Mes] Tu tubería de cobranza sufrió un atasco gravísimo en todo {month_name}, desacelerando dramáticamente la rapidez natural de conversión lograda en añadas anteriores evaluadas hasta hoy mismo. El balance luce prometedor, pero la triste realidad es que todos esos ingresos facturados continúan sin poderse materializar debido a demoras estúpidas en trámites puramente burocráticos externos de la clientela mayor. Esto paraliza directamente hasta el plan operativo más elemental que intentes desplegar mañana muy por la mañana."
    rec = f"[Analisis Interanual - Mes] Incorpora inmediatamente un protocolo estricto de suspensión tecnológica por morosidad para todos aquellos contratos que superen las fechas tolerables acordadas sin importar nombres de clientes grandes; bloquea el envío o socialización final de reportes de asesoría valiosos para el cliente de manera que este experimente urgentemente la necesidad prioritaria de pagar lo exigible si realmente desea seguir apalancándose de tu altísimo nivel de especialización mensual acumulado con tanto trabajo y profundo esmero técnico interno."
    status = "success" if improved else "danger"
    return pos, neg, rec, status

def generate_text_roin(month_name, val, avg, improved):
    # Rotacion de inventarios (Mayor es mejor)
    pos = f"[Analisis Interanual - Mes] Mantuviste impecable la arquitectura liviana y altamente competitiva que caracteriza a la empresa durante todo {month_name}, despachando labores consultivas y reportes finales al instante en cuanto culminaba el análisis riguroso técnico requerido. Esta extrema velocidad de liquidación de proyectos no solo maravilla gratamente al consumidor final por tu extrema agilidad comprobada empíricamente, sino que también elimina absolutamente aquel riesgo paralizante de quedarse empantanado en retrabajos infinitos innecesarios o costos hundidos que minan seriamente tu moral general operativa."
    neg = f"[Analisis Interanual - Mes] Este particular mes de {month_name} demostró un preocupante acúmulo de horas sin procesar de cierre y trabajos de consultoría inconclusos, actuando negativamente como un inventario pesadísimo estancado que deprime seriamente las metas de utilidad del semestre actual entero. Frente al histórico, ahora retienes mucha más carga técnica sin concluir de la tolerable habitualmente por un estudio boutique, exponiendo a todos a un cansancio colosal sin recibir la recompensa del pago monetario por estar enredados absurdamente con procesos paralelos simultáneos."
    rec = f"[Analisis Interanual - Mes] Elimina radicalmente cualquier solicitud o corrección de alcance técnico adicional de tus clientes exigentes de forma paralela. Concédeles máxima prioridad y obligatoriedad única a culminar los documentos operativos iniciales del acuerdo contractual original antes de embarcarte inútilmente en complejas revisiones conceptuales agregadas, garantizando de ese modo la velocidad máxima de cierre del servicio ofrecido para poder facturar prontamente lo adeudado sin seguir inflando virtualmente tu estanqueidad laboral presente durante todo este demandante ciclo en evaluación perpetua."
    status = "success" if improved else "warning"
    return pos, neg, rec, status

def generate_text_ropr(month_name, val, avg, improved):
    # Rotacion de proveedores (Menor o mayor? Es discutible. Diremos mayor=malo para la caja, menor=bueno (pagas muy rapido = malo))
    # Para efectos generales, si rotacion es muy alta = estamos pagando muy rapido = perdiendo liquidez. So menor es improved (mas apalancamiento)
    pos = f"[Analisis Interanual - Mes] Ejercieste una retención táctica sobresaliente del capital operativo propio a lo largo del mes de {month_name}, frenando sensatamente ese ímpetu innecesario de pagar todo por adelantado antes de tus cobros fuertes reales consolidados. Has calibrado muy cuidadosamente las fechas de exigibilidad apoyándote en la confianza de tus históricos contratistas asociados, lo que se traduce hoy como una notable ventaja táctica que fortalece formidablemente tus reservas más líquidas frente al duro comportamiento típico estadístico de este mismo y desafiante corte interanual."
    neg = f"[Analisis Interanual - Mes] Actuaste impulsivamente liquidando todos los compromisos de acreedores muy precipitadamente en {month_name}, inmolando absurdamente tu indispensable colchón de tranquilidad monetaria cuando ni siquiera habías asegurado tus grandes ingresos. El haber girado dinero sumamente rápido a terceros generó una contracción de tus propios ahorros, muy dispar y agresiva frente al patrón pacífico natural observado en años previos comparables, situándote irreflexivamente en inferioridad de condiciones y a expensas totales de cualquier falla microscópica de un solo cliente atrasado."
    rec = f"[Analisis Interanual - Mes] Adopta ciegamente a partir de mañana mismo un enfoque de caja netamente conservador y altamente defensivo frente al entorno desafiante externo. No vayas a liberar a la ligera ninguna suma monetaria por anticipos operativos que no estén obligados penalmente ni exijas un descuento agresivo enorme por adelantarlo; coordina de una vez y por todas con proveedores tus deudas estratégicas en bloque mensual unificando en lo posible cronogramas equitativos que salvaguarden prioritariamente cada valioso centavo ahorrado."
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

def generate_db():
    print("Fetch API data...")
    raw = get_data()
    indicadores = raw.get("indicadores", [])
    
    payload = []
    
    for ind in indicadores:
        key = ind.get("indicador_key")
        if key not in TEMPLATE_MAP:
            continue
            
        data = ind.get("data", [])
        
        # Parse data strings like "@{year=2021; month=12; valor=0.0}"
        # wait! the API stringifies the dictionary? Let's parse securely.
        # Actually Python dicts from JSON are dicts. Let's see if it's string or dict.
        
        parsed_data = []
        for x in data:
            if isinstance(x, dict):
                parsed_data.append(x)
            elif isinstance(x, str):
                # parse pseudo string
                import re
                match = re.search(r"year=(\d+);\s*month=(\d+);\s*valor=([-\d\.]+)", x)
                if match:
                    parsed_data.append({"year": int(match.group(1)), "month": int(match.group(2)), "valor": float(match.group(3))})
        
        # groupBy month
        month_summary = {m: [] for m in range(1, 13)}
        val_2025 = {m: 0.0 for m in range(1, 13)}
        
        for p in parsed_data:
            y = p["year"]
            m = p["month"]
            v = p["valor"]
            if 2023 <= y <= 2025:
                # Add to Historical Avg calculation
                month_summary[m].append(v)
            if y == TARGET_YEAR:
                val_2025[m] = v
                
        # Generate 12 months records
        for m in range(1, 13):
            avg = sum(month_summary[m])/len(month_summary[m]) if month_summary[m] else 0.0
            val = val_2025[m]
            
            # evaluate improvement
            if key in ["ciclo_conversion_efectivo", "dso", "dio", "rotacion_proveedores"]:
                improved = val < avg
            else:
                improved = val > avg
                
            fn = TEMPLATE_MAP[key]
            pos, neg, rec, status = fn(months_names[m-1], val, avg, improved)
            
            payload.append({
                "empresa_id": 3104,
                "indicador_key": f"{key}_M{m}",
                "periodo_ano": TARGET_YEAR,
                "period_key": f"M{m}",
                "tipo": status,
                "analisis_positivo": pos,
                "analisis_negativo": neg,
                "recomendacion": rec,
                "metodologia": f"Bloque D - Comparativo Mensual Interanual - {months_names[m-1]}",
                "generado_por": "antigravity"
            })

    with open("payload_bloque_d.json", "w", encoding="utf-8") as f:
        json.dump(payload, f, indent=2, ensure_ascii=False)
        
    print(f"Generated {len(payload)} records in payload_bloque_d.json")

if __name__ == "__main__":
    generate_db()
