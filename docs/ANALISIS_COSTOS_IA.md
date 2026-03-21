# Análisis de Costos Operativos: IA Financiera (Audit Insights)

Este documento desglosa el impacto financiero de utilizar APIs de Modelos de Lenguaje (LLM) frente al protocolo **Zero-Cost AI** implementado en el Liquidity Dashboard.

---

## 1. Escenario A: Onboarding Histórico (Retrospectiva 3 Años)
Analizar la historia completa de una empresa (como **MAS CONSULTA**) para que el Dashboard sea 100% interactivo desde 2023 requiere procesar **51 periodos**.

### Parámetros de Consumo (Por Periodo):
*   **Input (Datos + Contexto Auditado)**: ~2,500 tokens (incluye benchmarks, tasas BanRep y datos contables).
*   **Output (33 Micro + 5 Macro Insights)**: ~150 palabras/micro * 33 indicadores = ~8,500 tokens.
*   **Total por Periodo**: ~11,000 tokens.

### Cálculo de Costo (Tarifa GPT-4o):
| Elemento | Consumo (Total 51 Per.) | Tarifa (1M Tokens) | Costo Est. |
| :--- | :--- | :--- | :--- |
| **Input Tokens** | 127,500 | $2.50 | $0.32 |
| **Output Tokens** | 433,500 | $10.00 | $4.34 |
| **TOTAL ONBOARDING** | | | **$4.66 USD** |

---

## 2. Escenario B: Mantenimiento Mensual (Cierre de Periodo)
Cada 30 días, el sistema analiza el último mes contable cargado.

| Elemento | Consumo (1 Periodo) | Tarifa (1M Tokens) | Costo Est. |
| :--- | :--- | :--- | :--- |
| **Input Tokens** | 2,500 | $2.50 | $0.01 |
| **Output Tokens** | 8,500 | $10.00 | $0.09 |
| **TOTAL MENSUAL** | | | **$0.10 USD** |

---

## 3. Comparativa de Niveles de Automatización

El mercado de IA ha evolucionado. Ya no solo comparamos contra GPT-4o, sino contra modelos de ultra-bajo costo.

| Modelo | Costo Onboarding (1 Empresa) | Costo 1,000 Empresas | Tiempo Humano Req. | Observación |
| :--- | :--- | :--- | :--- | :--- |
| **High-Tier (GPT-4o)** | ~$4.66 | $4,660.00 | Bajo (Automático) | Alta calidad, alto costo. |
| **Budget-Tier (DeepSeek-V3)** | **~$0.005** | **$5.00** | Bajo (Automático) | **Costo nulo**, alta calidad. |
| **Zero-Cost (Manual)** | $0.00 (Tokens) | $0.00 (Tokens) | **Muy Alto (166 hrs)** | **Costo oculto en salarios.** |

---

## 4. El Nuevo Paradigma: Eficiencia vs. Gratuidad

### 4.1 La Trampa del "Costo Zero" Manual
Históricamente, el modelo Zero-Cost evitaba facturas de $5,000 USD. Sin embargo, procesar 1,000 empresas manualmente (a 10 min/empresa) consume **166 horas hombre**. 
*   **Costo Laboral Est.** ($20/hr): **$3,320.00**.
*   **Costo DeepSeek-V3**: **$5.00**.

### 4.2 Evolución Hacia la "Soberanía Automatizada"
El protocolo debe pivotar:
- **Nivel 1 (Onboarding Masivo)**: Usar un "Budget-LLM" (DeepSeek/Flash) para el 100% de la historia. Inversión mínima ($5 USD) para liberar 160 horas de analista.
- **Nivel 2 (Auditoría Premium)**: Uso del protocolo Zero-Cost (Antigravity + Auditor) solo para el **mes actual** o casos complejos donde el juicio humano es insustituible.

> [!WARNING]
> **Dictamen de Eficiencia**: Mantener un proceso 100% manual para miles de registros históricos es financieramente ineficiente frente a los nuevos precios de mercado. La recomendación es **automatizar la carga masiva** con APIs Budget-Tier y reservar la inteligencia "Zero-Cost" para la **supervisión y refinamiento final.**
