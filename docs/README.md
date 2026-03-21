# Liquidity Dashboard - Protocolo de Insights y Estándares Visuales (v4.5 - ACTUALIZADO)

Este documento detalla la arquitectura de insights implementada y certificada tras la consolidación de la pestaña de **Liquidez** para MAS CONSULTA SAS.

---

## 1. Planes Maestros por Pestaña
Para que una pestaña sea considerada "Terminada", debe cumplir con su Matriz de Registros específicos y el estándar de calidad narrativa.

- 🏗️ **[Pestaña Actividad (Matriz 231)](PROTOCOLO_MASTER_ACTIVIDAD.md)**: Estándar global de auditoría para los 8 indicadores operativos.
- 📊 **Pestaña Liquidez (Matriz 123)**: Protocolo certificado (8 indicadores + Auditoría).
- 📈 **Pestaña Rentabilidad (Matriz 231)**: PENDIENTE (Sigue la estructura de Actividad).

| Componente | Cálculo de Periodos | Cant. Registros | Comentarios UI |
| :--- | :--- | :---: | :---: |
| **Tarjeta Superior (Dictamen)** | 3 años × 5 periodos (Anual + 4Q) | 15 | 45 |
| **Gráfica 1 (Indicador Técnico)** | (Anua/Trim) + 12 Meses Interanuales | 27 | 81 |
| **Gráfica 2 (Indicador Técnico)** | (Anua/Trim) + 12 Meses Interanuales | 27 | 81 |
| **Gráfica 3 (Indicador Técnico)** | (Anua/Trim) + 12 Meses Interanuales | 27 | 81 |
| **Gráfica 4 (Indicador Técnico)** | (Anua/Trim) + 12 Meses Interanuales | 27 | 81 |
| **TOTAL MÍNIMO PESTAÑA** | --- | **123** | **369** |

*Nota: Para pestañas con 8 indicadores (ej. Actividad), el total asciende a **231 registros**.*

---

## 2. Implementación Técnica del Análisis Interanual (Modo "Todos los años")

Se ha implementado una lógica de búsqueda dinámica en `app.js` para los análisis comparativos de meses específicos:

- **Lógica de Fallback:** Cuando el usuario selecciona un mes (ej. Febrero) en la vista "Todos los años", el sistema busca una llave especial con el sufijo `_MX` (ej: `RAZON_CORRIENTE_M2`).
- **Contenido del Insight:** Estos registros deben contener un **Análisis Técnico Comparativo** del mes actual respecto al histórico de los últimos 3 años.
- **Identificación:** Se inician con la etiqueta `[Analisis Interanual - Mes]`.

---

## 3. Estándares de Redacción "Gerencia-a-Gerencia"
- **Tuteo Obligatorio:** Comunicación directa ("Tienes", "Lograste", "Hazlo").
- **Cero Tecnicismos:** Sin nombres de ratios ni decimales complejos en el texto. Solo lenguaje de negocio.
- **Extensión Exigida:** Mínimo **40 palabras** por sección (**Positivo/Alerta/Acción**).
- **Prohibición**: Se prohíben insights de una sola frase o descripciones genéricas que no aporten valor estratégico.

---

## 4. Estado Actual de Pestañas:
- `Liquidez`: **CERTIFICADA al 100% (123/123 registros)**.
- `Actividad`: **CERTIFICADA Bloque A y B (Audit. Anual 2023-2025 COMPLETADA)**.
- `Rentabilidad`: **PENDIENTE** de auditoría inicial.

---

## 5. Novedades y Proceso Expedito (Lecciones Aprendidas)
Para acelerar la entrega de insights en futuros módulos o empresas, el protocolo evoluciona con las siguientes reglas de oro:

1.  **Fuente Única de Verdad (DB-ONLY)**: Queda terminantemente prohibido utilizar archivos locales (CSV, XLSX) para la lectura de datos financieros. El agente DEBE consultar la API de indicadores en tiempo real para asegurar que los insights concuerden con los gráficos visualizados por el usuario.
2.  **Optimización de Scripts (urllib)**: Utilizar la librería estándar `urllib` en los scripts de inyección para evitar dependencias externas (`requests`) que puedan fallar en entornos restringidos.
3.  **Higiene de Codificación (CLI Local)**: Los scripts deben omitir emojis y caracteres especiales en la terminal de salida (logs) para evitar errores de codificación en entornos Windows.
4.  **Multi-Tenant Nativo**: El proceso se diseña para cualquier `ID_EMPRESA`, requiriendo solo el cambio del parámetro en la URL de consulta de la API.
5.  **Regla de las 40 Palabras**: Umbral mínimo innegociable por sección para garantizar profundidad gerencial.
Para garantizar una calidad del 100% de principio a fin y evitar la degradación del tono gerencial por saturación de contexto (Fatiga IA), se aplican estas reglas estrictas:

1.  **Micro-Loteado (Micro-Batches):** La inyección se realiza en lotes de máximo **5 registros**. Tras cada lote, se realiza una pausa de enfriamiento de **8 segundos** para "refrescar" el contexto de la IA.
2.  **Análisis Basado en Datos Real:** Cada insight debe derivarse UNICAMENTE de los datos técnicos del periodo analizado (Anual, Trimestral o Mensual).
3.  **Higiene del Tono (Word Count):** Se audita mediante script el conteo de palabras para asegurar que ningún registro baje del umbral de **40 palabras**.
4.  **Time Dilation:** Retardo obligatorio de **3.5 segundos** entre peticiones para permitir la persistencia correcta en el backend.

---

## 6. Mapeo Global de Indicadores (Mantenimiento)
Para asegurar la visualización dinámica, los `indicador_key` en la base de datos deben seguir la nomenclatura exacta definida en los `app_*.js` correspondientes a cada módulo.

---
> [!IMPORTANT]
> **Calidad > Velocidad:** Si se detecta una caída en la calidad narrativa o una reducción en el conteo de palabras, la ejecución se detiene inmediatamente para recalibrar el prompt de generación.
