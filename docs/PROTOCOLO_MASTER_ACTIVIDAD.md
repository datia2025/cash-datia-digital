# 🏗️ Protocolo Maestro: Inyección de Insights - Pestaña ACTIVIDAD
**Estatus:** ESTÁNDAR GLOBAL (v1.0) | **Protocolo:** Calidad Gerencial Extensa (+40 Palabras)

Este documento define las reglas de negocio y técnicas para la construcción de los **231 registros** requeridos para certificar la pestaña de Actividad en cualquier compañía.

## 1. Matriz de Identificadores (Mapeo por Pestaña)
Independientemente del `ID_EMPRESA`, estos son las llaves técnicas que activan la visualización en el dashboard:

| Indicador | `indicador_key` | Estándar de Análisis |
| :--- | :--- | :--- |
| **Dictamen General** | `insight-actividad-ai` | Visión macro de la eficiencia operativa. |
| Ciclo de Efectivo | `ciclo_conversion_efectivo` | Tiempo total de conversión de caja (DSO+DIO-DPO). |
| Días de Cartera (DSO) | `dso` | Eficiencia en el recaudo ante clientes. |
| Días de Inventario (DIO) | `dio` | Control de stock o WIP de servicios. |
| Días de Pago (DPO) | `dpo` | Gestión de pasivos y apalancamiento comercial. |
| Rotación de Activos | `rotacion_activos` | Eficiencia de generación de ingresos sobre el capital. |
| Rotación de Cartera | `rotacion_cartera` | Frecuencia de recaudo anual de facturación. |
| Rotación Inventarios | `rotacion_inventarios` | Frecuencia de salida de mercancía/servicios. |
| Rotación Proveedores | `rotacion_proveedores` | Frecuencia de pago a proveedores estratégicos. |

---

## 2. Reglas de Inyección Expedita
Para asegurar velocidad y calidad sin comprometer la integridad de los datos:

### A. Fuente de Datos (Database-Only)
- **PROHIBIDO**: Leer archivos CSV, XLS o JSON locales del proyecto.
- **OBLIGATORIO**: Consultar el endpoint de indicadores de la API de producción (`/api/indicadores/{id}?modulo=actividad`).
- **Justificación**: Solo los datos en la nube coinciden con lo que el usuario visualiza en los gráficos.

### B. Umbral de Calidad (Regla de las 40 Palabras)
- Cada bloque narrativo (**Positivo / Alerta / Acción**) debe superar las **40 palabras**.
- El lenguaje debe ser **Gerente-a-Gerente** (Tuteo obligatorio, enfoque en impacto estratégico, cero tecnicismos PUC).

### C. Protocolo de Transmissión
1. **Micro-Loteado**: 8 registros por ráfaga.
2. **Cooling Period**: 10 segundos de enfriamiento entre ráfagas.
3. **Time Dilation**: 4 segundos de delay entre registros individuales.
4. **Encoding**: Los logs en consola deben ser **ASCII puro** (sin emojis) para compatibilidad con terminales Windows.

---

## 3. Estructura de Bloques (Progreso)

| Fase | Descripción | Registros | Estado |
| :--- | :--- | :---: | :--- |
| **Bloque A** | 15 Insights Maestros (Anual + Quarterly) | 15 | ✅ COMPLETADO |
| **Bloque B** | Auditoría Anual (8 indicadores x 3 años) | 24 | ✅ COMPLETADO |
| **Bloque C** | Detalle Trimestral (8 indicadores x 12 trimestres) | 96 | ✅ COMPLETADO |
| **Bloque D** | Comparativo Mensual (8 indicadores x 12 meses) | 96 | 🔄 PENDIENTE |
| **TOTAL** | --- | **231** | **58%** |

---
> [!IMPORTANT]
> **Metodología**: El proceso se considera certificado cuando el 100% de las llaves muestran el insight auditado correspondiente en la base de datos de producción.
