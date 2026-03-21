import json

def generate_dpo_all():
    payloads = []
    
    # ANNUAL
    dpo_annual = {2023: 25, 2024: 79, 2025: 68}
    for year, val in dpo_annual.items():
        status = "success" if val > 45 else ("warning" if val > 20 else "danger")
        payloads.append({
            "empresa_id": 3104, "indicador_key": "dpo", "periodo_ano": year, "period_key": "Annual", "tipo": status,
            "analisis_positivo": f"Mantenes un promedio anual de {val} días de pagos a proveedores, lo que en el cierre de {year} es una excelente fuente de apalancamiento gratuito para la firma de consultoría. Estás logrando que tus aliados estratégicos financien tu operación durante más de dos meses en promedio.",
            "analisis_negativo": f"A pesar del alivio en la caja con un DPO de {val} días, el riesgo latente es la concentración de deuda en un solo gran proveedor que podría recortar plazos de pago abruptamente, afectando tu flujo operativo neto para el inicio de la próxima vigencia fiscal sin previo aviso.",
            "recomendacion": f"Trata de diversificar tu base de especialistas en el mercado para mantener plazos de pago constantes cercanos a los 45 días sin desgastar tus relaciones comerciales críticas durante {year+1}. Mantén un fondo de reserva para saldar deudas comerciales estratégicas de manera inmediata si el DSO de tus clientes falla.",
            "metodologia": f"Bloque B - Actividad - DPO Annual", "generado_por": "antigravity"
        })

    # QUARTERLY - I'll iterate through for 2023, 2024 and 2025
    v_data = {
        2023: {"1Q": 24, "2Q": 21, "3Q": 15, "4Q": 25},
        2024: {"1Q": 59, "2Q": 12, "3Q": 77, "4Q": 173},
        2025: {"1Q": 109, "2Q": 56, "3Q": 43, "4Q": 46}
    }
    for year in [2023, 2024, 2025]:
        for q in ["1Q", "2Q", "3Q", "4Q"]:
            val = v_data[year][q]
            status = "success" if val > 45 else ("warning" if val > 20 else "danger")
            payloads.append({
                "empresa_id": 3104, "indicador_key": "dpo", "periodo_ano": year, "period_key": q, "tipo": status,
                "analisis_positivo": f"En el {q} de {year} has logrado que los proveedores mantengan un crédito comercial abierto hasta por {val} días. Tienes una capacidad de negociación respetable que debe ser explotada al máximo para mitigar el efecto de la recesión estacional en la caja operativa del trimestre.",
                "analisis_negativo": f"Detectamos una caída en el tiempo de financiamiento en el {q} llegando a solo {val} días de calle. Tu ciclo de caja se está viendo presionado por obligaciones de pago muy tempranas respecto a lo que tardan tus clientes en pagarte la consultoría facturada durante este periodo.",
                "recomendacion": "Urge renegociar las fechas de pago con tus proveedores y consultores externos para el próximo trimestre. Debes alinear tu DPO con tu DSO para que la operación se auto-financie y no tengas que incurrir en sobregiros bancarios para cubrir los costos fijos de este periodo en curso.",
                "metodologia": f"Bloque B - Actividad - DPO {q}", "generado_por": "antigravity"
            })

    # MONTHLY INTERANNUAL (M1-M12)
    # 2025 values as reference: [47, 178, 100, 72, 51, 45, 73, 56, 0.0, 38, 100, 0.0]
    months = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
    v25 = [47, 178, 100, 72, 51, 45, 73, 56, 0.0, 38, 100, 0.0]
    for i, m in enumerate(months):
        m_idx = i + 1
        val = v25[i]
        payloads.append({
            "empresa_id": 3104, "indicador_key": f"DPO_M{m_idx}", "periodo_ano": 2025, "period_key": "Annual", "tipo": "info",
            "analisis_positivo": "Has mantenido una relación comercial sólida que te permite apalancarte de manera efectiva durante este mes histórico. La confianza depositada por tus consultores permite una planificación de tesorería mucho más holgada para las inversiones programadas en capacitación o en tecnología operativa para el semestre venidero.",
            "analisis_negativo": f"Observamos que para este mes de {m} el financiamiento comercial ha caído a {val} días, lo que asume una presión extrema sobre tu saldo en bancos. Al pagar más rápido lo que debes, pierdes la oportunidad de usar ese flujo para otras contingencias corporativas que podrían surgir inesperadamente durante este mes.",
            "recomendacion": f"Para el próximo mes de {m} debes priorizar los pagos a proveedores que te otorguen descuentos por pronto pago o aquellos que sean críticos para la operación. No pagues facturas comerciales prematuramente si no existe un beneficio real financiero que compense la pérdida inmediata de liquidez en tu caja.",
            "metodologia": f"Bloque B - Actividad - DPO Comparativo M{m_idx}", "generado_por": "antigravity"
        })

    return payloads

with open('temp_bloque_b_dpo.json', 'w') as f:
    json.dump(generate_dpo_all(), f, indent=2)
