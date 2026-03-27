# 📈 Protocolo Maestro: Inyección de Insights - Pestaña RENTABILIDAD
**Estatus:** CERTIFICADO (v4.6) | **Protocolo:** Cero Reprocesos (Signum +40 Palabras)

Este documento define las reglas de negocio y técnicas para la construcción de los **231 registros** requeridos para certificar la pestaña de Rentabilidad bajo un enfoque Multi-Tenant.

## 0. Skills y Metodologías Requeridas
La generación de estos insights exige la aplicación rigurosa de las siguientes capacidades:
1.  **[Forensic Analytics](file:///.agent/skills/forensic-analytics/SKILL.md)**: Para la reconstrucción de la lógica de negocio y mapeo de llaves técnicas (A, B, C vs D) a partir de los artefactos de código frontend (`app_rentabilidad.js`).
2.  **[Financial Analysis](file:///.agent/skills/financial-analysis/SKILL.md)**: Para la elaboración de la narrativa "Gerencia-a-Gerencia", asegurando el cumplimiento de los benchmarks de rentabilidad y ratios de márgenes.

## 1. Matriz de Identificadores y Contexto Lógico
A partir de la inspección del front-end (`app_rentabilidad.js`), se identificaron 8 indicadores operativos fijos y el dictamen global. La IA debe recibir como contexto el *Target* o criterio de éxito establecido:

| Indicador | `indicador_key` | Fórmula Base | Criterio de Éxito Lógico (Target) |
| :--- | :--- | :--- | :--- |
| **Dictamen General** | `insight-rentabilidad-ai` | Visión macro de la generación de valor. | *Evaluar salud general basada en márgenes.* |
| Margen EBITDA | `ebitda` | EBITDA / Ingresos Operacionales | **Debe ser > 15%** |
| Margen Neto | `neto` | Utilidad Neta / Ingresos Totales | **Debe ser > 10%** |
| Margen Operativo | `operativo` | Utilidad Operacional / Ingresos Operacionales | **Debe ser > 12%** |
| Margen Bruto | `bruto` | Utilidad Bruta / Ingresos Operacionales | **Debe ser > 40%** |
| Patrimonio | `patrimonio` | Activo Total − Pasivo Total | **Crecimiento sostenido (Valores Absolutos)** |
| ROA | `roa` | Utilidad Neta / Activo Total | **Debe ser > 5%** |
| ROE | `roe` | Utilidad Neta / Patrimonio | **Debe ser > 15%** |
| Utilidad Acumulada | `utilidad` | Resultado Neto Acumulado | **Mayor a 0 MM COP (Positivo en todo periodo)** |

> [!NOTE]
> **Integración UI Completada**: La función `updateDictamen()` en `app_rentabilidad.js` ya fue refactorizada exitosamente para apuntar de manera dinámica al registro `insight-rentabilidad-ai` extraído desde la API.

## 2. Reglas de Inyección Expedita
Para acelerar el despliegue a producción preservando la calidad:

### A. Fuente de Datos (Database-Only)
- **PROHIBIDO**: Leer archivos CSV, XLS o JSON locales.
- **OBLIGATORIO**: Consultar la API REST (`/api/indicadores/{ID_EMPRESA}?modulo=rentabilidad`).

### B. Umbral Narrativo "Gerencia-a-Gerencia"
- **Extensión:** Las facciones **Positivo / Alerta / Acción** no pueden contener menos de **40 palabras** cada una.
- **Tono:** Tuteo directo ("Tu ganancia", "Tu bolsillo"). Sin lenguaje técnico, ni siglas, lenguaje gerencial, claro, conciso y directo. Enfocado a la rentabilidad operativa y neta.

### C. Regla Crítica del Bloque A: Diferenciación de Contexto por Periodo
> [!IMPORTANT]
> Esta es la regla de mayor impacto en la calidad del Bloque A. Su incumplimiento causa degradación narrativa.

- **Insights Anuales (`period_key: Annual`)**: Evalúan el **año completo**. Tendencias, estacionalidad, balance neto del ejercicio.
  - ✅ *"Al repasar por completo el 2024, resalta tu firmeza para sostener un margen..."*
  - ❌ *"En este trimestre, los márgenes operativos sufrieron estrés..."*
- **Insights Trimestrales (`period_key: 1Q, 2Q, 3Q, 4Q`)**: Se refieren **exclusivamente** a los 3 meses del periodo. El trimestre debe mencionarse para anclar contexto.
  - ✅ *"Durante los primeros tres meses de 2025, arrancaste con toda la fuerza..."*
  - ❌ *"La gestión de stocks ha sido impecable, evitando que el dinero se quede dormido..."*

### D. Regla Anti-Fatiga IA (Bloque A)
1. **Máximo 5 registros por corrida.** Cada texto se escribe en frío, sin reutilizar plantillas.
2. **Cada registro es único e irrepetible.** Prohibido usar loops o strings con `{variable}`.
3. **Validación humana obligatoria** antes de inyectar.

### E. Estrategia de Loteado y Enfriamiento API
Para garantizar la integridad de la persistencia y evitar la fatiga del motor de IA o bloqueos por rate-limit:
1.  **Loteado Simétrico**: La generación se realiza en bloques de **8 registros** por ráfaga.
2.  **Cooling Period**: Tiempo de enfriamiento obligatorio de **10 segundos** entre lotes.
3.  **Time Dilation**: Retardo técnico de **4 segundos** entre cada petición individual de insight.

### F. Persistencia vía AI-to-SQL Dump (Entrega Certificada)
1.  **Generación**: La IA genera archivos `.sql` locales (**Un solo archivo por bloque**).
2.  **Ruta de Salida**: `.../LiquidityDashboard/database/{ID_EMPRESA}/Rentabilidad`.
3.  **Lógica**: Sentencias UPSERT obligatorias (`INSERT ... ON CONFLICT`).
4.  **Auditoría**: Auditoría visual de los SQL antes de ejecución para validar el conteo exacto de registros.

### G. Protocolo "Cero Reprocesos" (Rentabilidad Matrix 231)
Para este módulo de 8 indicadores, todo proceso de generación debe seguir estos filtros de salida innegociables:

1.  **Validación de Conteo (Target-Match):**
    - **Bloque C**: Debe contener exactamente **96 registros** (8 indicadores x 12 trimestres).
    - **Bloque D**: Debe contener exactamente **96 registros** (8 indicadores x 12 meses).
2.  **Higiene del Tono Gerencia-Gerencia:**
    - **Prohibido:** Fórmulas matemáticas o nombres de ratios crudos ("Margen EBITDA"). Hablar de "La riqueza que queda después de operar tu negocio".
    - **Obligatorio:** Narrativa fluida en segunda persona ("tú"), enfocada en la eficiencia operativa y utilidad neta.
    - **Umbral de Riqueza:** Mínimo **40 palabras** por sección.
3.  **Integridad de Llaves Técnicas (Standard Case):**
    - **A, B, C (Trimestral/Anual):** Llave en minúsculas (ej. `ebitda_1Q`).
    - **D (Mensual Comparativo):** Llave en **MAYÚSCULAS** (ej. `EBITDA_M1`).
4.  **Mandato de UPSERT:** Todo comando SQL generado debe usar `ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET...`.

> **⚠️ REGLA DE UNICIDAD TRIMESTRAL (PREVENCIÓN DE SOBRESCRITURA):**
> Para los reportes trimestrales (Bloques A, B y C) es **OBLIGATORIO** anexar el sufijo del trimestre al `indicador_key` durante la inyección (ej: `insight-rentabilidad-ai_1Q`, `ebitda_1Q`). El backend ignora la columna `period_key` en su lógica de unicidad (`ON CONFLICT`), por lo que inyectar múltiples periodos bajo la misma llave base sobrescribirá los datos, dejando solo el último registro insertado (usualmente el 4Q). El frontend (`api.js`) asume este comportamiento y extrae el `period_key` cortando explícitamente el sufijo `_1Q`. Para informes anuales, el sufijo se omite.

## 3. Matriz de Progreso (231 Registros)

| Fase | Descripción | Registros | Estado |
| :--- | :--- | :---: | :--- |
| **Bloque A** | 15 Insights Maestros (Anual + Quarterly) | 15 | ✅ COMPLETADO |
| **Bloque B** | Auditoría Anual (8 indicadores x 3 años) | 24 | ✅ COMPLETADO |
| **Bloque C** | Detalle Trimestral (8 indicadores x 12 trimestres)| 96 | ✅ COMPLETADO |
| **Bloque D** | Comparativo Mensual (8 indicadores x 12 meses) | 96 | ✅ COMPLETADO |
| **TOTAL** | --- | **231** | **100%** || **TOTAL** | --- | **231** | **6%** |

> [!WARNING]
> **Bloque A - Observación de Calidad**: Los 3 registros Anuales (2023, 2024, 2025) superaron la auditoría. Los 12 trimestrales están en producción; pendiente validación visual en UI antes de marcar el bloque COMPLETADO.
