# 🏗️ Plan Maestro: Generación de Insights - Pestaña Actividad (Matriz 231)
**Empresa:** MAS CONSULTA SAS (3104) | **Protocolo:** Calidad Gerencial Extensa (Mín. 40 Palabras)

Este plan define el roadmap técnico para inyectar los **231 registros** de la pestaña de Actividad, elevando el estándar de profundidad analítica y narrativa.

## 1. Estándar de Calidad: Regla de las 40 Palabras
Para asegurar que los insights aporten valor real y no sean simples descripciones de datos, se establece un nuevo umbral de calidad narrativa:

> [!IMPORTANT]
> **REGLA DE ORO**: Cada sección del insight (Aspecto Positivo, Aspecto Negativo y Recomendación) debe tener una extensión **MÍNIMA DE 40 PALABRAS**. 
> - Menos de 40 palabras se considera un insight "pobre" y debe ser regenerado.
> - El objetivo es proporcionar contexto, causa y efecto accionable, manteniendo el tono "Gerencia-a-Gerencia".

## 2. Estrategia de Micro-Loteado (Calidad Premium 100%)
Para evitar la degradación del tono y asegurar fidelidad total a los datos, los **231 registros** se ejecutarán en ráfagas cortas (Micro-Batches) con "Cooling Periods" entre cada ráfaga.

- **Batch Size:** Máximo 5 registros por ráfaga (Reducido para permitir mayor extensión de texto).
- **Cooling Period:** 8 segundos entre ráfagas para limpieza de contexto.
- **Data Fidelity:** Prompting específico por periodo (no se mezcla historial en una sola ráfaga).

### Estructura de Micro-Ejecución:
| Bloque | Total Registros | Micro-Lotes | Estado |
| :--- | :---: | :---: | :--- |
| **A: Dictamen Maestro** | 15 | 3 lotes (5+5+5) | ✅ COMPLETADO |
| **B: Auditoría Anual** | 24 | 3 lotes (8+8+8) | ✅ COMPLETADO |
| **C: Ciclo Trimestral** | 96 | 12 lotes (8 c/u) | 🔄 PENDIENTE |
| **D: Comparativo Mensual** | 96 | 12 lotes (8 c/u) | 🔄 PENDIENTE |
| **TOTAL** | **231** | **46 Lotes** | **17%** |

---

## 3. Matriz de Indicadores (Mapeo de Activación)
La pestaña de Actividad cubre el 100% de los elementos visuales en [actividad.html](file:///c:/Users/gutie/OneDrive/FERFILES/DATIA/PROPUESTAS/COLOMBIA/MASCONSULTA/LiquidityDashboard/actividad.html):

| Indicador | `indicador_key` | Meta de Análisis |
| :--- | :--- | :--- |
| **Dictamen General** | `insight-actividad-ai` | Visión macro de la eficiencia operativa. |
| Ciclo de Efectivo | `ciclo_efectivo` | Tiempo total de conversión de caja. |
| Días de Cartera (DSO) | `dso` | Eficiencia en el recaudo ante clientes. |
| Días de Inventario (DIO) | `dio` | Rotación de inventarios en días. |
| Días de Pago (DPO) | `dpo` | Gestión de pagos y apalancamiento. |
| Rotación de Activos | `rotacion_activos` | Eficiencia de generación de ventas. |
| Rotación de Cartera | `rotacion_cartera` | Frecuencia de recaudo anual. |
| Rotación de Inventarios | `rotacion_inventarios` | Velocidad de salida de servicios/stock. |
| Rotación de Proveedores | `rotacion_proveedores` | Frecuencia de pago a proveedores. |

---

## 4. Parámetros de Inyección Segura
- **Methodology Tag**: `Bloque A/B - Actividad - 3104`
- **Delay (Time Dilation)**: 3.5 segundos por registro (Para manejar textos más largos).
- **Control de Calidad**: Auditoría de conteo de palabras en tiempo real durante la inyección.

---
> [!TIP]
> **Consistencia**: El 100% de la pestaña se considera certificado al alcanzar los **231 registros** únicos inyectados con el estándar de +40 palabras.
