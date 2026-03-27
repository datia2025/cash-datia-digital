# 📑 PROTOCOLO MASTER: Resumen Ejecutivo ("Cómo va tu empresa")

Este documento detalla el mapeo técnico entre la Interfaz de Usuario (UI) y la Inteligencia Artificial para la pestaña maestra del Dashboard. Es de **uso obligatorio** para el analista antes de generar cualquier inyección SQL para los IDs 3099 y superiores.

---

## 1. Capa de Identidad y Entorno (Header)

| Elemento UI (ID) | Fuente de Datos (BD) | Lógica / Formato | Requisito de IA |
| :--- | :--- | :--- | :--- |
| `company-name` | `empresas.nombre` | Título Principal | Automático. |
| `company-sector` | `empresas.sector` | Subtítulo | Automático. |
| `perfil-operativo` | `insight_ai.indicador_key = 'perfil-operativo'` | Párrafo (2-3 líneas) | **Análisis Forense**: Describir el sector y modelo de negocio deducido de los gastos (ej. "Estructura ligera en activos fijos"). |
| `macro-inflacion` | `insight_ai.indicador_key = 'macro-inflacion'` | Porcentaje (ej: 7.2%) | Bloque `analisis_positivo` de este key. |
| `macro-banrep` | `insight_ai.indicador_key = 'macro-banrep'` | Porcentaje (ej: 12.0%) | Bloque `analisis_positivo` de este key. |
| `macro-costo` | `insight_ai.indicador_key = 'macro-costo'` | Porcentaje (ej: 18%) | Bloque `analisis_positivo` de este key. |

---

## 2. PILAR 1: Liquidez (El Hoy)

| Elemento UI (ID) | Indicador Core (Slug) | Lógica / Benchmark | Registro Insight |
| :--- | :--- | :--- | :--- |
| `kpi-cash-runway` | `efectivo` (ratio) | `Round(efectivo * 30)` | - |
| `kpi-cash-trend` | `efectivo` | Delta vs mes anterior | - |
| `kpi-cash-bar` | `kpi-cash-runway` | 90 días = 100% | - |
| `kpi-ct-text` | `capital_trabajo` | Moneda (Millones) | - |
| `insight-liquidez-ai` | `insight-liquidez-ai` | Narrativa Gerencial | Bloque `analisis_positivo`. |
| `contexto-liquidez-ai`| `contexto-liquidez-ai`| Análisis de Mercado | Bloque `analisis_positivo`. |
| `action-liquidez` | `insight-liquidez-ai` | Qué hacer hoy | Bloque `recomendacion` (Máx 40 palabras). |

---

## 3. PILAR 2: Actividad (La Eficiencia)

| Elemento UI (ID) | Indicador Core (Slug) | Lógica / Benchmark | Registro Insight |
| :--- | :--- | :--- | :--- |
| `kpi-dso` | `dso` | Días de cobro | - |
| `kpi-dso-desfase` | `dso` | Meta: 45 días. | - |
| `kpi-dpo` | `dpo` | Días de pago | - |
| `kpi-dpo-status` | `dpo` | Benchmark: 30-60 días. | - |
| `insight-actividad-ai` | `insight-actividad-ai` | Narrativa Gerencial | Bloque `analisis_positivo`. |
| `impacto-cartera-ai` | `impacto-cartera-ai` | Detalle Cartera | Bloque `analisis_positivo`. |
| `action-actividad` | `insight-actividad-ai` | Qué hacer hoy | Bloque `recomendacion`. |

---

## 4. PILAR 3: Rentabilidad (El Negocio Real)

| Elemento UI (ID) | Indicador Core (Slug) | Lógica / Benchmark | Registro Insight |
| :--- | :--- | :--- | :--- |
| `kpi-margen-oper` | `margen_operacional` | Porcentaje | - |
| `val-inflacion` | Benchmark Externo | Fijo: 5.8% (IPC 2025) | - |
| `kpi-roe-dupont` | `roe` | Retorno Socio | - |
| `val-margen-neto` | `margen_neto` | DuPont 1 | - |
| `val-rotacion` | `rotacion_activos` | DuPont 2 (2.0x = 100%) | - |
| `val-apalanca` | `multiplicador_capital`| DuPont 3 (5.0x = 100%) | - |
| `insight-rentabilidad-ai` | `insight-rentabilidad-ai` | Narrativa Gerencial | Bloque `analisis_positivo`. |
| `diagnostico-roe-ai` | `diagnostico-roe-ai` | Desglose DuPont | Bloque `analisis_positivo`. |
| `action-rentabilidad` | `insight-rentabilidad-ai` | Qué hacer hoy | Bloque `recomendacion`. |

---

## 5. PILAR 4: Solvencia (El Mañana)

| Elemento UI (ID) | Indicador Core (Slug) | Lógica / Benchmark | Registro Insight |
| :--- | :--- | :--- | :--- |
| `kpi-cobertura` | `cobertura_intereses`| > 5.0x = Blindado | - |
| `kpi-deuda-ebitda` | `deuda_ebitda` | Meta < 3.0 años | - |
| `insight-solvencia-ai` | `insight-solvencia-ai` | Narrativa Gerencial | Bloque `analisis_positivo`. |
| `action-solvencia` | `insight-solvencia-ai` | Qué hacer hoy | Bloque `recomendacion`. |

---

## 6. PILAR 5: Estructura (La Inversión)

| Elemento UI (ID) | Indicador Core (Slug) | Lógica / Benchmark | Registro Insight |
| :--- | :--- | :--- | :--- |
| `val-terceros` | `endeudamiento_total` | % Pasivos | - |
| `val-propio` | `(1 - end_total)` | % Patrimonio | - |
| `bar-fondeo-*` | `estructura_deuda` | Bancos vs Proveed | - |
| `insight-estructura-ai` | `insight-estructura-ai` | Narrativa Gerencial | Bloque `analisis_positivo`. |
| `action-estructura` | `insight-estructura-ai` | Qué hacer hoy | Bloque `recomendacion`. |

---

## 7. Panel Lateral (Resumen Ejecutivo Rápido)

| Elemento UI (ID) | Fuente de Registro | Uso Visual |
| :--- | :--- | :--- |
| `posicion-financiera-status`| `insight_ai.indicador_key` | Etiqueta (SALUDABLE / ALERTA) |
| `bolsillo-status` | `insight_ai.indicador_key` | Etiqueta (EN CONTROL / TENSIÓN) |
| `right-kpi-*` | Espejo de Pilares | Resumen de Posición |

---

## 🎯 Reglas de Generación para 3099

1.  **Cero Jargon**: Está prohibido el uso de siglas como DSO, DPO o ROE en los textos. Usar: "Dios de cartera", "Días de pago" o "Retorno del bolsillo del dueño".
2.  **Mínimo de Palabras**: Cada bloque (`analisis_positivo`, `analisis_negativo`, `recomendacion`) debe tener al menos **40 palabras**.
3.  **Tuteo Mandatorio**: Hablar siempre de "Tu empresa", "Tus finanzas", "Tu caja".
4.  **Fecha de Referencia**: Los insights deben inyectarse para el periodo `periodo_ano = 2025` y `period_key = 'Annual'` o el mes correspondiente.
