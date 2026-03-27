# 🛡️ Protocolo Maestro: Inyección de Insights - Pestaña SOLVENCIA
**Estatus:** CERTIFICADO (v4.6) | **Protocolo:** Cero Reprocesos (Signum +40 Palabras)

Este documento define las reglas de negocio y técnicas para la construcción de los **177 registros** requeridos para certificar la pestaña de Solvencia en cualquier compañía (ID 3104 y otros).

## 1. Matriz de Identificadores y Mapeo
A partir de la inspección del front-end (`app_solvency.js`), se identificaron 6 indicadores técnicos más el dictamen ejecutivo superior:

| Indicador | `indicador_key` | Estándar de Análisis | Target |
| :--- | :--- | :--- | :--- |
| **Dictamen General** | `insight-solvencia-ai` | Visión macro de la solvencia. | Salud financiera global. |
| Cobertura de Cargos Fijos | `cargos_fijos` | EBIT + Arrendamientos / Cargos Fijos. | > 1.50 x |
| Cobertura de Intereses | `intereses` | EBIT / Gastos por Intereses. | > 2.00 x |
| Cobertura Servicio Deuda | `servicio_deuda` | EBITDA / Servicio de la Deuda. | > 1.20 x |
| Deuda Neta / EBITDA | `deuda_ebitda` | Deuda Neta / EBITDA. | < 3.00 x |
| Endeudamiento Total | `endeudamiento_total` | Pasivo Total / Activo Total. | < 70% |
| Solvencia Patrimonial | `solvencia_patrimonial` | Patrimonio / Pasivo Total. | > 0.40 x |

---

## 2. Reglas de Inyección Expedita (Standard 4.6)
Para asegurar consistencia total con los módulos de Actividad y Rentabilidad:

### A. Fuente de Datos (SSOT)
- **OBLIGATORIO**: Consultar la API REST (`/api/indicadores/{ID_EMPRESA}?modulo=solvencia`).
- **PROHIBIDO**: Leer datos de spreadsheets locales.

### B. Umbral Gerencial "Signum" (Regla de las 40 Palabras)
- **Regla de las 40 Palabras**: Umbral mínimo innegociable por sección (**Positivo/Alerta/Acción**).
- **Loteado de Generación (Regla de 8)**: Para garantizar la máxima calidad analítica y disponibilidad del API, el agente debe generar y entregar los insights en **lotes de 8 registros** por vez.
- **Tono**: Tuteo directo ("Hazlo", "Tus deudas"). Sin lenguaje técnico, ni siglas, lenguaje gerencial, claro, conciso y directo. Enfocado a la solvencia de largo plazo.
- **Nomenclatura Bloque D**: Las llaves mensuales se inyectan en MAYÚSCULAS (ej: `CARGOS_FIJOS_M1`).

### C. Skills Requeridas para Generación
Para cumplir con este protocolo, el agente debe activar y demostrar el uso de las siguientes capacidades:
1.  **[Forensic Analytics](file:///.agent/skills/forensic-analytics/SKILL.md)**: Para la reconstrucción de la lógica de negocio y mapeo de llaves técnicas (A, B, C vs D) a partir de los artefactos de código frontend (`app_solvency.js`).
2.  **[Financial Analysis](file:///.agent/skills/financial-analysis/SKILL.md)**: Para la elaboración de la narrativa "Gerencia-a-Gerencia", asegurando el cumplimiento de los benchmarks sectoriales (Target) e indicadores de cobertura.

### D. Estrategia de Loteado y Enfriamiento API
Para garantizar la integridad de la persistencia y evitar la fatiga del motor de IA o bloqueos por rate-limit:
1.  **Loteado Simétrico**: La generación se realiza en bloques de **8 registros** por ráfaga.
2.  **Cooling Period**: Tiempo de enfriamiento obligatorio de **10 segundos** entre lotes.
3.  **Time Dilation**: Retardo técnico de **4 segundos** entre cada petición individual de insight.

### E. Persistencia via AI-to-SQL Dump (Entrega Certificada)
1.  **Generación**: La IA genera archivos `.sql` locales (**Un solo archivo por bloque**).
2.  **Ruta de Salida**: `.../LiquidityDashboard/database/{ID_EMPRESA}/Solvencia`.
3.  **Lógica**: Sentencias UPSERT obligatorias (`INSERT ... ON CONFLICT`).
4.  **Auditoría**: Auditoría visual de los SQL antes de ejecución para validar el conteo exacto de registros.

### F. Protocolo "Cero Reprocesos" (Solvencia Matrix 177)
Para este módulo de 6 indicadores, todo proceso de generación debe seguir estos filtros de salida innegociables:

1.  **Validación de Conteo (Target-Match):**
    - **Bloque C**: Debe contener exactamente **72 registros** (6 indicadores x 12 trimestres).
    - **Bloque D**: Debe contener exactamente **72 registros** (6 indicadores x 12 meses).
2.  **Higiene del Tono Gerencia-Gerencia:**
    - **Prohibido:** Fórmulas matemáticas o nombres de ratios crudos ("Cobertura de Intereses"). Hablar de "Generación operativa para cubrir el costo del capital".
    - **Obligatorio:** Narrativa fluida en segunda persona ("tú"), enfocada en la autonomía financiera y seguridad de deuda.
    - **Umbral de Riqueza:** Mínimo **40 palabras** por sección.
3.  **Integridad de Llaves Técnicas (Standard Case):**
    - **A, B, C (Trimestral/Anual):** Llave en minúsculas (ej. `cargos_fijos_1Q`).
    - **D (Mensual Comparativo):** Llave en **MAYÚSCULAS** (ej. `CARGOS_FIJOS_M1`).
4.  **Mandato de UPSERT:** Todo comando SQL generado debe usar `ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET...`.

> **⚠️ REGLA DE UNICIDAD TRIMESTRAL (PREVENCIÓN DE SOBRESCRITURA):**
> Para los reportes trimestrales (Bloques A, B y C) es **OBLIGATORIO** anexar el sufijo del trimestre al `indicador_key` durante la inyección (ej: `insight-solvencia-ai_1Q`, `cargos_fijos_1Q`). El backend ignora la columna `period_key` en su lógica de unicidad (`ON CONFLICT`), por lo que inyectar múltiples periodos bajo la misma llave base sobrescribirá los datos, dejando solo el último registro insertado (usualmente el 4Q). El frontend (`api.js`) asume este comportamiento y extrae el `period_key` cortando explícitamente el sufijo `_1Q`. Para informes anuales, el sufijo se omite.

---

## 3. Matriz de Registros (Matriz 177)

| Bloque | Descripción | Registros | Estado |
| :--- | :--- | :---: | :--- |
| **Bloque A** | Insights Maestros (1 Año completo + 4 Trimestres x 3 años) | 15 | ✅ COMPLETADO |
| **Bloque B** | Auditoría Anual (6 indicadores x 3 años) | 18 | ✅ COMPLETADO |
| **Bloque C** | Detalle Trimestral (6 indicadores x 12 trimestres)| 72 | ✅ COMPLETADO |
| **Bloque D** | Comparativo Mensual (6 indicadores x 12 meses) | 72 | ✅ COMPLETADO |
| **TOTAL** | --- | **177** | **Ready** |

---

> [!IMPORTANT]
> **Certificación de Diseño**: Con 6 indicadores operativos (según `app_solvency.js`), el total de registros para esta pestaña es de 177. No se requiere la Matriz 231 (específica para 8 indicadores) a menos que se agreguen 2 paneles adicionales al dashboard.
