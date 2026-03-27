# 🏗️ Protocolo Maestro: Inyección de Insights - Pestaña ACTIVIDAD
**Estatus:** CERTIFICADO (v4.6) | **Protocolo:** Cero Reprocesos (Signum +40 Palabras)

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

### A. Tono Gerencial "Signum"
- **Tono**: Tuteo directo ("Tu flujo", "Tus cobros"). Sin lenguaje técnico, ni siglas, lenguaje gerencial, claro, conciso y directo. Enfocado a la eficiencia operativa y rotación.

### B. Skills Requeridas para Generación
Para cumplir con este protocolo, el agente debe activar y demostrar el uso de las siguientes capacidades:
1.  **[Forensic Analytics](file:///.agent/skills/forensic-analytics/SKILL.md)**: Para la reconstrucción de la lógica de negocio y mapeo de llaves técnicas (A, B, C vs D) a partir de los artefactos de código frontend (`app_actividad.js`).
2.  **[Financial Analysis](file:///.agent/skills/financial-analysis/SKILL.md)**: Para la elaboración de la narrativa "Gerencia-a-Gerencia", asegurando el cumplimiento de los benchmarks de actividad y eficiencia en el ciclo de efectivo.

### C. Estrategia de Loteado y Enfriamiento API
Para garantizar la integridad de la persistencia y evitar la fatiga del motor de IA o bloqueos por rate-limit:
1.  **Loteado Simétrico**: La generación se realiza en bloques de **8 registros** por ráfaga.
2.  **Cooling Period**: Tiempo de enfriamiento obligatorio de **10 segundos** entre lotes.
3.  **Time Dilation**: Retardo técnico de **4 segundos** entre cada petición individual de insight.

### D. Persistencia via AI-to-SQL Dump (Entrega Certificada)
1.  **Generación**: La IA genera archivos `.sql` locales (**Un solo archivo por bloque**).
2.  **Ruta de Salida**: `.../LiquidityDashboard/database/{ID_EMPRESA}/Actividad`.
3.  **Lógica**: Sentencias UPSERT obligatorias (`INSERT ... ON CONFLICT`).
4.  **Auditoría**: Auditoría visual de los SQL antes de ejecución para validar el conteo exacto de registros.

### E. Protocolo "Cero Reprocesos" (Actividad Matrix 231)
Para este módulo de 8 indicadores, todo proceso de generación debe seguir estos filtros de salida innegociables:

1.  **Validación de Conteo (Target-Match):**
    - **Bloque C**: Debe contener exactamente **96 registros** (8 indicadores x 12 trimestres).
    - **Bloque D**: Debe contener exactamente **96 registros** (8 indicadores x 12 meses).
2.  **Higiene del Tono Gerencia-Gerencia:**
    - **Prohibido:** Fórmulas matemáticas o nombres de ratios crudos ("Ciclo de Efectivo"). Hablar de "El tiempo que le toma a tu capital volver a tu bolsillo".
    - **Obligatorio:** Narrativa fluida en segunda persona ("tú"), enfocada en la eficiencia de recaudo y gestión de stock.
    - **Umbral de Riqueza:** Mínimo **40 palabras** por sección.
3.  **Integridad de Llaves Técnicas (Standard Case):**
    - **A, B, C (Trimestral/Anual):** Llave en minúsculas (ej. `dso_1Q`).
    - **D (Mensual Comparativo):** Llave en **MAYÚSCULAS** (ej. `DSO_M1`).
4.  **Mandato de UPSERT:** Todo comando SQL generado debe usar `ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET...`.

> **⚠️ REGLA DE UNICIDAD TRIMESTRAL (PREVENCIÓN DE SOBRESCRITURA):**
> Para los reportes trimestrales (Bloques A, B y C) es **OBLIGATORIO** anexar el sufijo del trimestre al `indicador_key` durante la inyección (ej: `insight-actividad-ai_1Q`, `dso_1Q`). El backend ignora la columna `period_key` en su lógica de unicidad (`ON CONFLICT`), por lo que inyectar múltiples periodos bajo la misma llave base sobrescribirá los datos, dejando solo el último registro insertado (usualmente el 4Q). El frontend (`api.js`) asume este comportamiento y extrae el `period_key` cortando explícitamente el sufijo `_1Q`. Para informes anuales, el sufijo se omite.

---

## 3. Estructura de Bloques (Progreso)

| Fase | Descripción | Registros | Estado |
| :--- | :--- | :---: | :--- |
| **Bloque A** | 15 Insights Maestros (Anual + Quarterly) | 15 | ✅ COMPLETADO |
| **Bloque B** | Auditoría Anual (8 indicadores x 3 años) | 24 | ✅ COMPLETADO |
| **Bloque C** | Detalle Trimestral (8 indicadores x 12 trimestres)| 96 | ✅ COMPLETADO |
| **Bloque D** | Comparativo Mensual (8 indicadores x 12 meses) | 96 | ✅ COMPLETADO |
| **TOTAL** | --- | **231** | **100%** |
---
> [!IMPORTANT]
> **Metodología**: El proceso se considera certificado cuando el 100% de las llaves muestran el insight auditado correspondiente en la base de datos de producción.
