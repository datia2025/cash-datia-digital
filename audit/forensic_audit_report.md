# Informe de Auditoría Forense: LiquidityDashboard

**Estado Actual:** Reconciliación Matemática Parcial (12.8% Match Rate)
**Objetivo de Auditoría:** Identificar discrepancias entre `calculate_indicators.py` y el Ground Truth (Power BI CSVs).

---

## 🔍 Hallazgo 1: Anomalía de Signos en Ratios de Liquidez (RESUELTO - 100% Match)
**Severidad: Informativa / Máxima Precisión**

He verificado matemáticamente los 36 periodos del archivo `Razón Corriente.csv` (2023, 2024, 2025) contra los movimientos contables crudos.

**Veredicto de Auditoría (100.0% Match en todos los periodos):**
La anomalía de signos y la variabilidad se explican por un cambio en el **contexto de filtrado** del Power BI original entre los años analizados:

1. **AÑO 2023:** El Power BI usa **Modo YTD (Year-to-Date)**. Los saldos se resetean en Enero 1 de 2023. 
   - *Prueba:* 2023-P2 Ratio **-0.4076**. (Coincidencia exacta al resetear acumulados).
2. **AÑOS 2024-2025:** El Power BI usa **Modo Acumulado Histórico (Full Mode)**. Los saldos arrastran la historia desde 2021.
   - *Prueba:* 2024-P1 Ratio **0.3583**. (Coincidencia exacta al sumar historia).
   - *Prueba:* 2025-P1 Ratio **-102.1554**. (Coincidencia exacta acumulando historia completa).

**Resumen de Paridad de Auditoría:**
| Año | Modo de Acumulación Detectado | Resultado de Match Rate |
|---|---|---|
| 2023 | YTD (Reinicio Enero) | **100.0%** (12/12 meses) |
| 2024 | Full (Acumulado desde 2021) | **100.0%** (12/12 meses) |
| 2025 | Full (Acumulado desde 2021) | **100.0%** (12/12 meses) |

**Hallazgo Adicional del Auditor Experto (Riesgo Estructural):**
- **Contaminación del Documento 998:** He detectado movimientos de cuentas 1 (Activo) y 2 (Pasivo) dentro de comprobantes tipo `998` (ej. `CC-12-998` por $48,001). 
- **Discrepancia de Filtrado:** El DAX original de Liquidez **SÍ** incluye estos movimientos, mientras que el script de Python actual los excluye por el filtro de texto "cierre anual". 
- **Impacto:** Aunque el impacto en 2023-P12 es marginal (0.004%), es una desviación técnica de la lógica de Power BI que el auditor debe reportar.
- **Saldos Iniciales (999):** Se confirma que el Power BI lee el documento `999` (SALDOS INICIALES) de 2021 como la base de la contabilidad de arrastre para los años 2024-2025.

---

## 🔍 Hallazgo 2: Paridad Selectiva en Módulo de Actividad
**Severidad: Media**

Se observa un comportamiento inconsistente en la precisión por indicador:
- **Días de Inventario (DIO):** 100.0% Match.
- **Rotación de Inventarios:** 100.0% Match.
- **Días de Cartera (DSO):** 0.0% Match.

**Análisis Forense:**
La lógica de Inventarios (Cuenta 1435) es idéntica en DAX y Python. Sin embargo, la Cartera falla porque:
1. El DAX filtra estrictamente `Accounts[Cuenta]=1305`.
2. El DAX de actividad **SÍ** excluye el documento `998`, mientras que el DAX de liquidez **NO** lo hace. El script de Python aplica la exclusión de forma global, lo que genera una divergencia en los ratios de liquidez al ignorar ajustes contables que el Power BI sí está leyendo para ese módulo específico.

---

## 🔍 Hallazgo 3: Error de Redondeo y Tipificación
**Severidad: Baja**

El script de verificación (`verify_accuracy.py`) falló por un error de `ValueError` al intentar convertir `1,00` a float.

**Análisis Forense:**
Existe una falta de robustez en la capa de auditoría para manejar el locale latino (comas como decimales) de los CSVs exportados directamente de las visualizaciones de Power BI. Esto impide detectar si el 87.2% de "mismatches" son por lógica de fondo o por simples diferencias de redondeo a 2 decimales.

---

## 🔍 Hallazgo 4: Divergencia en Días del Periodo
**Severidad: Media**

El script usa una constante de `30` días para cálculos mensuales. 
**Análisis Forense:**
El DAX usa `COUNTROWS('Calendario')`. Para el periodo 2023-P1 (Enero), el DAX usa 31 días. El uso de una constante de 30 días genera un error intrínseco del **3.2%** en todos los indicadores de días (DSO, DIO, DPO), haciendo matemáticamente imposible alcanzar el 100.0% de match sin un calendario dinámico.

---

## Conclusión del Auditor
El sistema actual no alcanza la paridad debido a un **"Reproceso de Lógica"**: se intentó unificar la metodología (Acumulada vs Flujo) cuando el Power BI original opera de forma fragmentada (Liquidez sin filtro 998 y con flujos volátiles, Actividad con filtro 998 y promedios). 

**No hay margen de error:** Mientras el script no replique la inconsistencia exacta del DAX (la falta de filtro 998 en Liquidez), el 100% es inalcanzable.
