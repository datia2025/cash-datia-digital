# 📉 Protocolo Maestro: Inyección de Insights - Pestaña LIQUIDEZ
**Estatus:** CERTIFICADO (v4.6) | **Protocolo:** Cero Reprocesos (Signum +40 Palabras)

Este documento define las reglas de negocio y técnicas para la construcción de los **123 registros** requeridos para certificar la pestaña de Liquidez bajo un enfoque Multi-Tenant.

## 1. Matriz de Identificadores y Contexto Lógico
A partir de la inspección del front-end (`app.js`), se identificaron 4 indicadores operativos fijos y el dictamen global. La IA debe recibir como contexto el *Target* o criterio de éxito establecido:

| Indicador | `indicador_key` | Fórmula Base | Criterio de Éxito Lógico (Target) |
| :--- | :--- | :--- | :--- |
| **Dictamen General** | `insight-liquidez-ai` | Visión macro de la capacidad de pago. | *Evaluar salud general basada en caja y ratios.* |
| Razón Corriente | `razon_corriente` | Activo Corriente / Pasivo Corriente | **Debe ser > 1.50 x** |
| Capital de Trabajo | `capital_trabajo` | Activo Corriente − Pasivo Corriente | **Debe ser > 0 MM (Creciente)** |
| Prueba Ácida | `prueba_acida` | (Act. Corr − Inventarios) / Pas. Corr | **Debe ser > 1.00 x** |
| Ratio de Efectivo | `ratio_efectivo` | Efectivo y Equiv. / Pasivo Corriente | **Debe ser > 0.50 x** |

> [!NOTE]
> **Integración UI Completada**: La función `updateAnalysis()` en `app.js` ya fue refactorizada exitosamente para apuntar de manera dinámica al registro `insight-liquidez-ai` y a las llaves técnicas extraídas desde la API.

## 2. Reglas de Inyección Expedita
Para acelerar el despliegue a producción preservando la calidad:

### A. Fuente de Datos (Database-Only)
- **PROHIBIDO**: Leer archivos CSV, XLS o JSON locales.
- **OBLIGATORIO**: Consultar la API REST (`/api/indicadores/{ID_EMPRESA}?modulo=liquidez`).

### B. Tono Gerencial "Signum"
- **Tono:** Tuteo directo ("Tu caja", "Tus ahorros"). Sin lenguaje técnico, ni siglas, lenguaje gerencial, claro, conciso y directo. Enfocado al flujo de caja y disponibilidad inmediata.

### C. Skills Requeridas para Generación
Para cumplir con este protocolo, el agente debe activar y demostrar el uso de las siguientes capacidades:
1.  **[Forensic Analytics](file:///.agent/skills/forensic-analytics/SKILL.md)**: Para la reconstrucción de la lógica de negocio y mapeo de llaves técnicas (A, B, C vs D) a partir de los artefactos de código frontend (`app.js`).
2.  **[Financial Analysis](file:///.agent/skills/financial-analysis/SKILL.md)**: Para la elaboración de la narrativa "Gerencia-a-Gerencia", asegurando el cumplimiento de los benchmarks de liquidez y ratios de disponibilidad.

### C. Regla Crítica del Bloque A: Diferenciación de Contexto por Periodo
> [!IMPORTANT]
> Esta es la regla de mayor impacto en la calidad del Bloque A. Su incumplimiento causa degradación narrativa.

- **Insights Anuales (`period_key: Annual`)**: Evalúan el **año completo**. Tendencias, estacionalidad, balance neto del ejercicio.
- **Insights Trimestrales (`period_key: 1Q, 2Q, 3Q, 4Q`)**: Se refieren **exclusivamente** a los 3 meses del periodo. El trimestre debe mencionarse para anclar contexto.

### D. Regla Anti-Fatiga IA (Bloque A)
1. **Máximo 5 registros por corrida.** Cada texto se escribe en frío, sin reutilizar plantillas.
2. **Cada registro es único e irrepetible.** Prohibido usar loops o strings con `{variable}`.
3. **Validación humana obligatoria** antes de inyectar.

### D. Estrategia de Loteado y Enfriamiento API
Para garantizar la integridad de la persistencia y evitar la fatiga del motor de IA o bloqueos por rate-limit:
1.  **Loteado Simétrico**: La generación se realiza en bloques de **8 registros** por ráfaga (anteriormente 5).
2.  **Cooling Period**: Tiempo de enfriamiento obligatorio de **10 segundos** entre lotes.
3.  **Time Dilation**: Retardo técnico de **4 segundos** entre cada petición individual de insight.

### E. Persistencia via AI-to-SQL Dump (Entrega Certificada)
1.  **Generación**: La IA genera archivos `.sql` locales (**Un solo archivo por bloque**).
2.  **Ruta de Salida**: `.../LiquidityDashboard/database/{ID_EMPRESA}/Liquidez`.
3.  **Lógica**: Sentencias UPSERT obligatorias (`INSERT ... ON CONFLICT`).
4.  **Auditoría**: Auditoría visual de los SQL antes de ejecución para validar el conteo exacto de registros.

### F. Protocolo "Cero Reprocesos" (Liquidez Matrix 123)
Para este módulo de 4 indicadores, todo proceso de generación debe seguir estos filtros de salida innegociables:

1.  **Validación de Conteo (Target-Match):**
    - **Bloque C**: Debe contener exactamente **48 registros** (4 indicadores x 12 trimestres).
    - **Bloque D**: Debe contener exactamente **48 registros** (4 indicadores x 12 meses).
2.  **Higiene del Tono Gerencia-Gerencia:**
    - **Prohibido:** Fórmulas matemáticas o nombres de ratios crudos ("Razón Corriente"). Hablar de "Capacidad para cubrir tus deudas con lo que tienes hoy".
    - **Obligatorio:** Narrativa fluida en segunda persona ("tú"), enfocada en la caja y el bolsillo del dueño.
    - **Umbral de Riqueza:** Mínimo **40 palabras** por sección.
3.  **Integridad de Llaves Técnicas (Standard Case):**
    - **A, B, C (Trimestral/Anual):** Llave en minúsculas (ej. `razon_corriente_1Q`).
    - **D (Mensual Comparativo):** Llave en **MAYÚSCULAS** (ej. `RAZON_CORRIENTE_M1`).
4.  **Mandato de UPSERT:** Todo comando SQL generado debe usar `ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET...`.

> **⚠️ REGLA DE UNICIDAD TRIMESTRAL (PREVENCIÓN DE SOBRESCRITURA):**
> Para los reportes trimestrales (Bloques A, B y C) es **OBLIGATORIO** anexar el sufijo del trimestre al `indicador_key` durante la inyección (ej: `insight-liquidez-ai_1Q`, `razon_corriente_1Q`). El backend ignora la columna `period_key` en su lógica de unicidad (`ON CONFLICT`), por lo que inyectar múltiples periodos bajo la misma llave base sobrescribirá los datos, dejando solo el último registro insertado (usualmente el 4Q). El frontend (`api.js`) asume este comportamiento y extrae el `period_key` cortando explícitamente el sufijo `_1Q`. Para informes anuales, el sufijo se omite.

## 3. Matriz de Progreso (123 Registros)

| Fase | Descripción | Registros | Estado |
| :--- | :--- | :---: | :--- |
| **Bloque A** | 15 Insights Maestros (Anual + Quarterly) | 15 | ✅ COMPLETADO |
| **Bloque B** | Auditoría Anual (4 indicadores x 3 años) | 12 | ✅ COMPLETADO |
| **Bloque C** | Detalle Trimestral (4 indicadores x 12 trimestres)| 48 | ✅ COMPLETADO |
| **Bloque D** | Comparativo Mensual (4 indicadores x 12 meses) | 48 | ✅ COMPLETADO |
| **TOTAL** | --- | **123** | **Ready** || **TOTAL** | --- | **123** | **Ready** |
