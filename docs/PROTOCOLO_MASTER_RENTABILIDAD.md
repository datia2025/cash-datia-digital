# 📈 Protocolo Maestro: Inyección de Insights - Pestaña RENTABILIDAD
**Estatus:** PLANIFICACIÓN (v1.0) | **Protocolo:** Calidad Gerencial Extensa (+40 Palabras)

Este documento define las reglas de negocio y técnicas para la construcción de los **231 registros** requeridos para certificar la pestaña de Rentabilidad bajo un enfoque Multi-Tenant.

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
- **Tono:** Impacto al flujo de caja, sin lenguaje técnico convencional. Tuteo directo al dueño o gerente.
- **Prohibición:** Evitar expresiones corporativas como "equipo directivo", "accionistas". Usar *"tu ganancia"*, *"tu caja"*, *"tu bolsillo"*.

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

### E. Estrategia Anti-DDoS (Micro-Batches de Inyección)
1. **Lotes:** 5 a 8 iteraciones.
2. **Fricción:** 8-10 segundos de cooldown transaccional.
3. **Pausa Inter-Registro:** 3.5 a 4 segundos por request API.

## 3. Matriz de Progreso (231 Registros)

| Fase | Descripción | Registros | Estado |
| :--- | :--- | :---: | :--- |
| **Bloque A** | 15 Insights Maestros (Anual + Quarterly) | 15 | ⚠️ EN REVISIÓN |
| **Bloque B** | Auditoría Anual (8 indicadores x 3 años) | 24 | 🔄 PENDIENTE |
| **Bloque C** | Detalle Trimestral (8 indicadores x 12 trimestres)| 96 | 🔄 PENDIENTE |
| **Bloque D** | Comparativo Mensual (8 indicadores x 12 meses) | 96 | 🔄 PENDIENTE |
| **TOTAL** | --- | **231** | **6%** |

> [!WARNING]
> **Bloque A - Observación de Calidad**: Los 3 registros Anuales (2023, 2024, 2025) superaron la auditoría. Los 12 trimestrales están en producción; pendiente validación visual en UI antes de marcar el bloque COMPLETADO.
