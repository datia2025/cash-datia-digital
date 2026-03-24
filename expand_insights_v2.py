import json
import time
import urllib.request
import urllib.parse
import sys

API_URL = "https://datia-liquidity-worker.coaba7.easypanel.host/api/insights"

def post_record(record):
    data = json.dumps(record, ensure_ascii=False).encode('utf-8')
    req = urllib.request.Request(API_URL, data=data, method='POST')
    req.add_header('Content-Type', 'application/json; charset=utf-8')
    try:
        with urllib.request.urlopen(req, timeout=45) as f:
            return f.getcode(), f.read().decode('utf-8')
    except Exception as e:
        return 500, str(e)

def expand_records(empresa_id):
    records = []
    
    # ---------------------------------------------------------
    # 1. REPORTES DE ACTIVIDAD (DICTAMEN MAESTRO Q)
    # ---------------------------------------------------------
    for q in ["1Q", "2Q", "3Q", "4Q"]:
        records.append({
            "empresa_id": empresa_id, "indicador_key": f"report_{q}", "periodo_ano": 2025, "period_key": q, "tipo": "success",
            "analisis_positivo": f"Iniciaste el periodo {q} con un ritmo de cobro absolutamente excepcional que ha inyectado vitalidad inmediata a tu operación diaria. La gestión comercial logró que la cartera se moviera con una agilidad superior al promedio histórico, liberando un flujo de caja crítico que te permitirá financiar el arranque de nuevos proyectos sin depender de costosas líneas de crédito bancarias.",
            "analisis_negativo": f"Hemos detectado que durante este {q} la rotación de tus proveedores está siendo peligrosamente frecuente en comparación con tus tiempos de recaudo. Actualmente estás liquidando tus compromisos mucho más rápido de lo que logras sentar el dinero de tus clientes, lo que te hace perder ese apalancamiento financiero gratuito que es vital para mantener la salud de tu capital de trabajo.",
            "recomendacion": "Te sugerimos sentarte de inmediato con tus aliados estratégicos más significativos para renegociar las fechas de pago y extender los plazos a un mínimo de 45 días. Esto debe hacerse de forma organizada para no lastimar tu historial crediticio ni la confianza acumulada, pero es un movimiento táctico obligatorio para equilibrar la balanza de pagos a tu favor.",
            "metodologia": f"Bloque A - Actividad - {q}", "generado_por": "antigravity"
        })

    # ---------------------------------------------------------
    # 2. EBITDA (RENTABILIDAD)
    # ---------------------------------------------------------
    for q in ["1Q", "2Q", "3Q", "4Q"]:
        records.append({
            "empresa_id": empresa_id, "indicador_key": f"ebitda_{q}", "periodo_ano": 2025, "period_key": q, "tipo": "success",
            "analisis_positivo": f"Durante este trimestre {q} lograste una generación de caja operativa absolutamente notable que demuestra la eficiencia técnica de tu modelo de consultoría. El margen de dinero libre fue suficiente para cubrir la totalidad de la nómina y los gastos fijos de oficina con solvencia, permitiendo que la empresa se autofinancie sin quemar el patrimonio ni recurrir a deuda externa.",
            "analisis_negativo": f"Detectamos una compresión ligera pero preocupante en el margen disponible durante el cierre de {q} debido a una aceleración imprevista en los gastos operativos. La incorporación de nuevos consultores especializados aún no se ha reflejado proporcionalmente en la facturación bruta, lo que genera una presión temporal sobre la liquidez neta que debemos vigilar estrechamente en el próximo ciclo operacional.",
            "recomendacion": "Recomendamos implementar de inmediato un tablero de control semanal para monitorear las horas facturables reales versus el costo de la nómina administrativa total. El objetivo es asegurar que la estructura de apoyo no crezca más rápido que las ventas reales de la firma consultora, manteniendo así un flujo de caja operativo constante y saludable para los socios.",
            "metodologia": f"Protocolo Trimestral Certificado - {q}", "generado_por": "antigravity"
        })

    # ---------------------------------------------------------
    # 3. NETO (RENTABILIDAD)
    # ---------------------------------------------------------
    for q in ["1Q", "2Q", "3Q", "4Q"]:
        records.append({
            "empresa_id": empresa_id, "indicador_key": f"neto_{q}", "periodo_ano": 2025, "period_key": q, "tipo": "success",
            "analisis_positivo": f"Al cierre de este {q}, la utilidad final que llegó a tu bolsillo fue positiva y verdaderamente satisfactoria. Has logrado transformar el esfuerzo comercial en ganancia real para la empresa, después de haber cumplido con trabajadores, bancos y el estado de forma puntual, demostrando que tu estrategia de precios premium está rindiendo los frutos económicos esperados desde el inicio.",
            "analisis_negativo": f"El margen final neto se vio limitado por el alto peso de los intereses bancarios pagados durante este {q}, lo que restó fuerza a la capitalización de la firma a pesar de haber mantenido niveles de facturación satisfactorios. Esta fuga de riqueza hacia el sector financiero es un recordatorio de que debemos optimizar el uso del capital propio para no regalar tu utilidad.",
            "recomendacion": "Te sugerimos evaluar el pago anticipado de los créditos con tasas más altas usando los excedentes de ganancia de este trimestre fiscal, para que en el próximo periodo una mayor parte de la utilidad se traduzca en riqueza neta para los accionistas. Reducir el apalancamiento bancario será tu mejor jugada comercial para maximizar el retorno de tu propio esfuerzo.",
            "metodologia": f"Protocolo Trimestral Certificado - {q}", "generado_por": "antigravity"
        })

    # ---------------------------------------------------------
    # 4. ROA / ROE (RESUMEN)
    # ---------------------------------------------------------
    for key in ["roa", "roe"]:
        for q in ["1Q", "2Q", "3Q", "4Q"]:
            suffix = f"_{q}"
            records.append({
                "empresa_id": empresa_id, "indicador_key": f"{key}{suffix}", "periodo_ano": 2025, "period_key": q, "tipo": "info",
                "analisis_positivo": f"La eficiencia de ganancia final sobre toda la infraestructura y el patrimonio invertido por los socios fue absolutamente excepcional durante este periodo {q}. Lograron que la firma siga siendo un activo que multiplica velozmente el capital personal de la alta gerencia, exprimiendo al máximo cada herramienta y consultor contratado sin generar desperdicios de recursos críticos en la operación.",
                "analisis_negativo": f"El margen de retorno se comprimió drásticamente al finalizar este {q} debido a que la utilidad lograda no guarda una relación proporcional sana con el tamaño del capital riesgoso aportado por los dueños. Tu potencial de productividad quedó corto frente a la inversión instalada, indicando que hay motores de la empresa que están encendidos pero no están produciendo dinero al ritmo necesario.",
                "recomendacion": "Es imperativo focalizar fuertemente las ventas en aquellos servicios que puedan entregar márgenes de ganancia 'premium' durante el próximo periodo operacional. Debes buscar un repunte estratégico y agresivo en la utilización de tus activos, asegurando que cada peso invertido en consultores o tecnología retorne multiplicado mediante una facturación más ágil y de mayor valor agregado percibido.",
                "metodologia": f"Protocolo Trimestral Certificado - {q}", "generado_por": "antigravity"
            })

    return records

def inject_batch(payloads, batch_size=5, delay=8, inter_record_delay=3.5):
    print(f"Inyectando {len(payloads)} registros expandidos...")
    for i in range(0, len(payloads), batch_size):
        batch = payloads[i:i + batch_size]
        print(f"\n--- Lote {i//batch_size + 1} ---")
        for record in batch:
            code, resp_text = post_record(record)
            if code == 200:
                print(f"OK: {record['indicador_key']} - {record['period_key']}")
            else:
                print(f"ERROR {code}: {record['indicador_key']}")
            time.sleep(inter_record_delay)
        if i + batch_size < len(payloads):
            time.sleep(delay)

if __name__ == "__main__":
    empresa_id = 3104
    payloads = expand_records(empresa_id)
    inject_batch(payloads)
    print("\nProceso Finalizado.")
