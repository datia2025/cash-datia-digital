# 🏗️ Protocolo Maestro: Inyección de Insights - Pestaña ESTRUCTURA
**Estatus:** CERTIFICADO (v4.6) | **Protocolo:** Cero Reprocesos (Signum +40 Palabras)

Este documento define las reglas de negocio y técnicas para la construcción de los **204 registros** requeridos para certificar la pestaña de Estructura en cualquier compañía (ID 3104 y otros).

## 1. Matriz de Identificadores y Mapeo
A partir de la inspección del front-end (`app_estructura.js`), se identificaron 7 indicadores técnicos más el dictamen ejecutivo superior:

| Indicador | `indicador_key` | Estándar de Análisis | Target |
| :--- | :--- | :--- | :--- |
| **Dictamen General** | `insight-estructura-ai` | Visión macro de la estructura de capital. | Solidez y riesgo de fondeo. |
| Cobertura de Activos Fijos | `cobertura_fijos` | Patrimonio / Activos fijos | > 1.00 x |
| Estructura de la Deuda | `estructura_deuda` | Pasivo CP / Pasivo total | < 50% |
| Multiplicador de Capital | `multiplicador_capital` | Activos / Patrimonio | < 2.50 x |
| Ratio de Capitalización | `capitalizacion` | Deuda LP / (Deuda LP + Patrimonio) | < 40% |
| Deuda a Activos Tangibles | `deuda_tangibles` | Pasivo total / Activos tangibles | < 60% |
| Ratio de Propiedad | `propiedad_autonomia` | Patrimonio / Activo total | > 40% |
| Relación Deuda / Patrimonio | `deuda_patrimonio` | Pasivo total / Patrimonio | < 1.50 x |

---

## 2. Reglas de Inyección Expedita (Standard 4.6)
Para asegurar consistencia total con los módulos de Actividad, Rentabilidad y Solvencia:

### A. Fuente de Datos (SSOT)
- **OBLIGATORIO**: Consultar la API REST (`/api/indicadores/{ID_EMPRESA}?modulo=estructura`).
- **PROHIBIDO**: Leer datos de spreadsheets locales.

### B. Umbral Gerencial "Signum" (Regla de las 40 Palabras)
- **Regla de las 40 Palabras**: Umbral mínimo innegociable por sección (**Positivo/Alerta/Acción**).
- **Loteado de Generación (Regla de 8)**: Los insights deben generarse y entregarse en **lotes de 8 registros** para control de calidad.
- **Tono**: Tuteo directo ("Tu estructura", "Optimiza tu deuda"). Sin lenguaje técnico, ni siglas, lenguaje gerencial, claro, conciso y directo. Enfocado a la solvencia de largo plazo.
- **Nomenclatura Bloque D**: Las llaves mensuales se inyectan en MAYÚSCULAS (ej: `DEUDA_PATRIMONIO_M1`).

### C. Skills Requeridas para Generación
Para cumplir con este protocolo, el agente debe activar y demostrar el uso de las siguientes capacidades:
1.  **[Forensic Analytics](file:///.agent/skills/forensic-analytics/SKILL.md)**: Para la reconstrucción de la lógica de negocio y mapeo de llaves técnicas (A, B, C vs D) a partir de los artefactos de código frontend (`app_estructura.js`).
2.  **[Financial Analysis](file:///.agent/skills/financial-analysis/SKILL.md)**: Para la elaboración de la narrativa "Gerencia-a-Gerencia", asegurando el cumplimiento de los benchmarks sectoriales (Target) y la estructura de análisis interanual.

### D. Estrategia de Loteado y Enfriamiento API
Para garantizar la integridad de la persistencia y evitar la fatiga del motor de IA o bloqueos por rate-limit:
1.  **Loteado Simétrico**: La generación se realiza en bloques de **8 registros** por ráfaga.
2.  **Cooling Period**: Tiempo de enfriamiento obligatorio de **10 segundos** entre lotes.
3.  **Time Dilation**: Retardo técnico de **4 segundos** entre cada petición individual de insight.

### E. Persistencia via AI-to-SQL Dump (Entrega Certificada)
1.  **Generación**: La IA genera archivos `.sql` locales (**Un solo archivo por bloque**).
2.  **Ruta de Salida**: `.../LiquidityDashboard/database/{ID_EMPRESA}/Estructura`.
3.  **Lógica**: Sentencias UPSERT obligatorias (`INSERT ... ON CONFLICT`).
4.  **Auditoría**: Auditoría visual de los SQL antes de ejecución para validar el conteo exacto de registros.

### F. Protocolo "Cero Reprocesos" (Estructura Matrix 204)
Para este módulo de 7 indicadores, todo proceso de generación debe seguir estos filtros de salida innegociables:

1.  **Validación de Conteo (Target-Match):**
    - **Bloque C**: Debe contener exactamente **84 registros** (7 indicadores x 12 trimestres).
    - **Bloque D**: Debe contener exactamente **84 registros** (7 indicadores x 12 meses).
2.  **Higiene del Tono Gerencia-Gerencia:**
    - **Prohibido:** Mencionar el "Multiplicador de Capital" como una fórmula. Hablar de "Apalancamiento de los activos sobre la inversión de los socios".
    - **Obligatorio:** Narrativa fluida en segunda persona ("tú"), enfocada en la autonomía patrimonial y solvencia de largo plazo.
    - **Umbral de Riqueza:** Mínimo **40 palabras** por sección.
3.  **Integridad de Llaves Técnicas (Standard Case):**
    - **A, B, C (Trimestral/Anual):** Llave en minúsculas (ej. `cobertura_fijos_1Q`).
    - **D (Mensual Comparativo):** Llave en **MAYÚSCULAS** (ej. `COBERTURA_FIJOS_M1`).
4.  **Mandato de UPSERT:** Todo comando SQL generado debe usar `ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET...`.

> **⚠️ REGLA DE UNICIDAD TRIMESTRAL (PREVENCIÓN DE SOBRESCRITURA):**
> Para los reportes trimestrales (Bloques A, B y C) es **OBLIGATORIO** anexar el sufijo del trimestre al `indicador_key` durante la inyección (ej: `insight-estructura-ai_1Q`, `cobertura_fijos_1Q`). El backend ignora la columna `period_key` en su lógica de unicidad (`ON CONFLICT`), por lo que inyectar múltiples periodos bajo la misma llave base sobrescribirá los datos, dejando solo el último registro insertado (usualmente el 4Q). El frontend (`api.js`) asume este comportamiento y extrae el `period_key` cortando explícitamente el sufijo `_1Q`. Para informes anuales, el sufijo se omite.

---

## 3. Matriz de Registros (Matriz 204)

| Bloque | Descripción | Registros | Estado |
| :--- | :--- | :---: | :--- |
| **Bloque A** | Insights Maestros (1 Año completo + 4 Trimestres x 3 años) | 15 | 🔄 PROPUESTO |
| **Bloque B** | Auditoría Anual (7 indicadores x 3 años) | 21 | 🔄 PROPUESTO |
| **Bloque C** | Detalle Trimestral (7 indicadores x 12 trimestres)| 84 | 🔄 PROPUESTO |
| **Bloque D** | Comparativo Mensual (7 indicadores x 12 meses) | 84 | 🔄 PROPUESTO |
| **TOTAL** | --- | **204** | **Puntual** |

---

> [!IMPORTANT]
> **Certificación de Diseño**: Con 7 indicadores operativos (según `app_estructura.js`), el total de registros para esta pestaña es de 204. No se requiere la Matriz 231 (específica para 8 indicadores) ni la 177 (para 6).
