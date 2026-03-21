import json

def generate_dso_quarterly():
    payloads = []
    
    # Quarterly 2023
    for q in ["1Q", "2Q", "3Q", "4Q"]:
        val = {"1Q": 143, "2Q": 99, "3Q": 70, "4Q": 135}[q]
        status = "danger" if val > 90 else "warning"
        payloads.append({
            "empresa_id": 3104, "indicador_key": "dso", "periodo_ano": 2023, "period_key": q, "tipo": status,
            "analisis_positivo": f"En el {q} de 2023 lograste una entrada de caja mínima de {val} días que mantuvo la firma a flote en un contexto regional complicado. Tienes clientes que demuestran lealtad y que finalmente liquidan sus facturas a pesar de que el proceso tarda casi 3 meses en promedio.",
            "analisis_negativo": f"Los niveles de recaudo del {q} se dispararon a {val} días de calle, lo que es inaceptable para un modelo de servicios. Estás entregando consultoría que se paga mucho después de ejecutar los costos salariales, asumiendo un riesgo crediticio excesivo sin los colaterales adecuados.",
            "recomendacion": "Debes solicitar un anticipo de mínimo el 30% en todos tus nuevos contratos para mitigar el efecto de este DSO tan dilatado. No inicies ningún proyecto de consultoría sin el pago inicial que cubra al menos los costos directos de tus profesionales externos.",
            "metodologia": f"Bloque B - Actividad - DSO {q}", "generado_por": "antigravity"
        })

    # Quarterly 2024
    for q in ["1Q", "2Q", "3Q", "4Q"]:
        val = {"1Q": 136, "2Q": 74, "3Q": 71, "4Q": 63}[q]
        status = "success" if val < 65 else ("warning" if val < 90 else "danger")
        payloads.append({
            "empresa_id": 3104, "indicador_key": "dso", "periodo_ano": 2024, "period_key": q, "tipo": status,
            "analisis_positivo": f"Mantenes una tendencia de mejora en el {q} de 2024 con un DSO de {val} días. Esto representa un respiro notable para el flujo de caja, permitiéndote mayor autonomía operativa y reduciendo la necesidad de recurrir a financiamiento externo costoso durante este periodo.",
            "analisis_negativo": f"Aun con la mejora trimestral a {val} días, sigues por encima de los 45 días ideales. El tiempo de espera para que la facturación se convierta en saldo líquido sigue retrasando la reinversión en nuevos nichos de negocio o en la contratación de más consultores senior.",
            "recomendacion": "Utiliza este momento de mejora para renegociar las fechas de corte con tus aliados principales. Intenta mover la facturación a los primeros 5 días del mes para que el ciclo de aprobación del cliente coincida con su flujo de pagos habitual.",
            "metodologia": f"Bloque B - Actividad - DSO {q}", "generado_por": "antigravity"
        })

    # Quarterly 2025
    for q in ["1Q", "2Q", "3Q", "4Q"]:
        val = {"1Q": 110, "2Q": 120, "3Q": 92, "4Q": 161}[q]
        status = "danger"
        payloads.append({
            "empresa_id": 3104, "indicador_key": "dso", "periodo_ano": 2025, "period_key": q, "tipo": status,
            "analisis_positivo": f"A pesar del pico de {val} días en este {q}, has logrado facturar servicios críticos que garantizan una reserva de activos exigibles importante. Tienes un balance de cuentas por cobrar robusto que, si se gestiona bien, será el motor de crecimiento para el próximo semestre.",
            "analisis_negativo": f"El recaudo en el {q} se ha deteriorado notablemente respecto al trimestre anterior, alcanzando los {val} días. Estás perdiendo el control sobre tus cuentas por cobrar, lo que indica una posible relajación en las labores de cobranza o problemas de liquidez temporales en tus clientes clave.",
            "recomendacion": "Debes realizar una depuración inmediata de tu cartera en este {q}. Clasifica a tus clientes por antigüedad de deuda y lanza una campaña agresiva de recaudo telefónico personalizado para todas las facturas que superen ya los 60 días de vencimiento.",
            "metodologia": f"Bloque B - Actividad - DSO {q}", "generado_por": "antigravity"
        })

    return payloads

with open('temp_bloque_b_dso_q.json', 'w') as f:
    json.dump(generate_dso_quarterly(), f, indent=2)
