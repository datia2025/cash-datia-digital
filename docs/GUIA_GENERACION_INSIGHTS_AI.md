Para generar e inyectar los insights en la base de datos siguiendo el protocolo de auditoría, sigue este flujo de trabajo asistido. Este proceso garantiza que la IA (Antigravity) actúe como tu analista senior, pero los datos queden registrados formalmente en PostgreSQL.

---

> [!CAUTION]
> **PROTOCOLO DE SEGURIDAD (ANTI-MAPPING ERROR)**:
> Antes de generar cualquier insight, es **OBLIGATORIO** verificar que el `empresa_id` existe en la base de datos de producción. Nunca asumas IDs basados en logs antiguos (ej. 3103 vs 3105). Una inyección en un ID inexistente o erróneo corrompe la narrativa del Dashboard.

---

## Paso 0: Inventario y Frecuencia de Inteligencia (Matriz de Cobertura)

Antes de iniciar la generación, el analista debe comprender el volumen total de inteligencia que el Dashboard requiere para ofrecer una experiencia interactiva completa. La IA debe procesar las siguientes capas de temporalidad:

### 0.1 Capas de Temporalidad (Frecuencia)
1.  **Mensual (Nivel Operativo)**: Se generan insights para los 12 meses del año. Su objetivo es explicar la varianza inmediata y el flujo de caja del "día a día".
2.  **Trimestral (Nivel Táctico / Q)**: Se generan insights para los cierres de Marzo (1Q), Junio (2Q), Septiembre (3Q) y Diciembre (4Q). Su objetivo es evaluar el cumplimiento de metas de mediano plazo.
3.  **Anual (Nivel Estratégico)**: Se genera un insight de cierre al terminar el año fiscal. Su objetivo es la evaluación de solvencia a largo plazo y rentabilidad sobre el patrimonio (ROE).
4.  **Histórico (Línea de Base)**: Se deben procesar los años previos (ej. 2023 y 2024) para permitir que los gráficos comparativos tengan narrativa desde el primer día de uso.
5.  **Interanual (Varianza Año vs. Año)**: Insights específicos que explican por qué un mes actual es mejor o peor que el mismo mes del año anterior (ej. Dic 2024 vs Dic 2025).

### 0.2 Volumen Dinámico de Registros (Fórmula de Carga)
El inventario de inteligencia depende directamente de la antigüedad de los datos cargados para cada empresa (2, 3, 6 o más años). El Dashboard requiere que cada punto de datos tenga su narrativa correspondiente para evitar "huecos" de análisis:

| Concepto | Cantidad por Periodo | Periodos por Año | Total Registros (N años) |
| :--- | :--- | :--- | :--- |
| **Micro-Insights** (Por Indicador) | 33 indicadores | 17 periodos* | **(N * 17) * 33** |
| **Macro-Dictámenes** (Por Módulo) | 5 módulos | 17 periodos* | **(N * 17) * 5** |
| **Perfil Operativo** (Por Empresa) | 1 perfil | 17 periodos* | **(N * 17) * 1** |
| **TOTAL PIEZAS DE INTELIGENCIA** | **39** | **17** | **N * 663** |

*\*Nota: 17 periodos por año = (12 meses) + (4 trimestres) + (1 cierre anual).*

**Ejemplos de Carga Histórica Total:**
*   Empresa con **2 años**: 1,326 registros AI.
*   Empresa con **3 años**: 1,989 registros AI.
*   Empresa con **6 años**: 3,978 registros AI.

### 0.3 Matriz Maestra de Inventario: UI vs. Inteligencia

Para cubrir el 100% de la interactividad del Dashboard, cada periodo (mes, trimestre o año) requiere la generación de las siguientes piezas de inteligencia:

| Componente UI | Ubicación | Frecuencia | Descripción del Insight | Cantidad |
| :--- | :--- | :--- | :--- | :--- |
| **Resumen Ejecutivo (Macro)** | "Cómo va tu empresa" | Mensual/Q/Anual | **Perfil Forense**: Perfilado del sector, modelo de negocio y dictamen de realidad financiera (Pillars 1-5). | 5 resúmenes + 1 perfil |
| **Tarjetas de Diagnóstico** | Top Card (cada Pestaña) | Mensual/Q/Anual | **Dictamen de Módulo**: Visión holística de cada una de las 5 áreas financieras. | 5 dictámenes |
| **Micro-Insights (Técnico)** | Gráficos (Tabs/Overlays) | Mensual/Q/Anual | **Detalle de KPI**: 3 pilares (Éxito, Riesgo, Acción) para cada uno de los 33 indicadores core. | 33 micro-insights |

---

## 1. Detalle del Inventario de los 33 Indicadores (Core)

El analista debe suministrar datos y recibir análisis para los siguientes indicadores técnicos, agrupados por su respectiva tarjeta visual:

### 1.1 Módulo de LIQUIDEZ (4 Gráficos)
1.  **Razón Corriente**: Capacidad de pago CP.
2.  **Prueba Ácida**: Liquidez sin inventarios.
3.  **Capital de Trabajo**: Plata operativa libre.
4.  **Ratio de Efectivo**: Capacidad de pago de emergencia (Solo Caja).

### 1.2 Módulo de ACTIVIDAD (8 Gráficos)
5.  **Rotación de Cartera**: Veces que cobramos al año.
6.  **Días de Cartera (DSO)**: Velocidad de cobro de deudas.
7.  **Rotación de Inventarios**: Velocidad de reposición de stock.
8.  **Días de Inventario (DIO)**: Permanencia de mercancía en bodega.
9.  **Rotación de Proveedores**: Veces que pagamos a proveedores al año.
10. **Días de Proveedores (DPO)**: Plazo real que nos dan los proveedores.
11. **Ciclo de Conversión (CCC)**: Días netos de caja amarrada en la operación.
12. **Rotación Activos Totales**: Eficiencia de la inversión total.

### 1.3 Módulo de RENTABILIDAD (6 Gráficos)
13. **Margen Bruto**: Ganancia tras costos directos.
14. **Margen Operativo**: Lo que deja el negocio puro.
15. **Margen EBITDA**: Generación de caja operativa.
16. **Margen Neto**: Ganancia final para los socios.
17. **ROA (Retorno Activos)**: Eficiencia del total invertido.
18. **ROE (Retorno Patrimonio)**: Ganancia sobre el bolsillo del dueño.

### 1.4 Módulo de SOLVENCIA (8 Gráficos)
19. **Relación Deuda/Patrimonio**: Deuda vs Inversión de socios.
20. **Multiplicador de Capital**: Apalancamiento sistémico.
21. **Ratio de Capitalización**: Deuda estructural.
22. **Ratio de Propiedad**: Qué tanto es realmente nuestro.
23. **Apalancamiento Financiero**: Dependencia bancaria.
24. **Cobertura de Intereses**: Capacidad de pago de gastos financieros.
25. **Deuda Neta / EBITDA**: Tiempo de pago total con la utilidad.
26. **Endeudamiento Total**: Porcentaje de activos financiados.

### 1.5 Módulo de ESTRUCTURA (7 Gráficos)
27. **Cobertura de Cargos Fijos**: Respaldo ante gastos fijos.
28. **Cobertura Servicio Deuda (DSCR)**: Pago de cuotas (K + I).
29. **Ratio de Solvencia Patrimonial**: Respaldo por cada peso de deuda.
30. **Deuda a Activos Tangibles**: Deuda real vs activos físicos.
31. **Estructura de la Deuda**: Proporción CP vs LP.
32. **Cobertura de Activos Fijos**: Fondeo de la infraestructura.
33. **Estructura de Capital**: Composición del fondeo (Propio vs Terceros).

---

## 2. Detalle del Resumen Ejecutivo ("Cómo va tu empresa")

Este componente es el más crítico del Dashboard (Lineas de impacto al CEO). No es un resumen de números, sino una **narrativa de gestión**:

1.  **Pilar 1 (Liquidez)**: Diagnóstico de la capacidad de supervivencia mensual.
2.  **Pilar 2 (Eficiencia)**: Auditoría de la velocidad de la máquina de hacer dinero.
3.  **Pilar 3 (Riqueza Real)**: Verificación de si la rentabilidad supera el costo de oportunidad.
4.  **Pilar 4 (Blindaje)**: Evaluación de riesgo de quiebra o insolvencia.
5.  **Pilar 5 (Inversión)**: Análisis de la calidad del fondeo del crecimiento.
6.  **Perfil Operativo**: Análisis forense del sector y del modelo de negocio deducido.
---

## 6. Resolución de Incidencia de Identidad (Multi-Tenant Auth)
**Fecha**: 18 de Marzo, 2026 (16:15 COT)

Se detectó una inconsistencia crítica en el sistema de autenticación durante la carga de **Compulearning SAS (ID 3103)**:

*   **Hallazgo**: La tabla `usuarios` no existía físicamente en el esquema `liquidity` a pesar de estar definida en el código del Worker. Esto causaba un fallo silencioso en el aprovisionamiento de accesos.
*   **Acción Correctiva**: 
    *   **Reconstrucción de Tabla**: Se ejecutó un DDL manual para crear la tabla `usuarios` con FK hacia `empresas(id)` y soporte para `initials`.
    *   **Inyección de Credenciales**: Se provisionó manualmente el acceso de administrador para el ID 3103, reactivando el flujo de login.
*   **Resultado**: El sistema de autoprovisionamiento quedó 100% estabilizado para futuros clientes y el acceso concurrente vía local/remoto quedó validado.

---
> [!IMPORTANT]
> **Certificación de Identidad**: El sistema de login ahora es consistente entre el Worker (API) y la Base de Datos (PostgreSQL), garantizando el aislamiento total por `empresa_id`.

---
> [!CAUTION]
> **INCIDENCIA DE MI-MAPPING (19 de Marzo, 2026)**:
> Se documentó un error de procesamiento donde se intentaron inyectar insights para el **ID 3103** (Compulearning) cuando el ID real en producción era **3105**. 
> *   **Impacto**: Los insights quedaron "huérfanos" en scripts locales sin llegar a la base de datos de producción.
> *   **Protocolo de Prevención**: Se ha actualizado la `GUIA_GENERACION_INSIGHTS_AI.md` para exigir una validación `SELECT id FROM empresas WHERE id = [ID]` antes de cualquier generación masiva.

---

## Paso 1: Obtención de Datos Reales (The Data Source)

**REGLA DE ORO DE ACCESO**: Está **prohibido** utilizar archivos CSV temporales, logs antiguos o archivos SQL locales para alimentar el proceso de análisis. La **única fuente de verdad** es la base de datos PostgreSQL.

Para obtener los números reales del periodo a analizar, el analista de IA (Antigravity u otro agente) debe ejecutar una consulta directa a la tabla `indicadores`:

```sql
-- Obtener ráfaga de datos para análisis modular (Ejemplo: Liquidez)
SELECT indicador_key, valor, unidad, periodo_ano, periodo_mes 
FROM liquidity.indicadores 
WHERE empresa_id = [ID] 
  AND periodo_ano = [ANIO] 
  AND periodo_mes = [MES] -- o 'Annual' para cierres
  AND modulo = 'liquidez' -- Filtrar por el módulo que vas a procesar
ORDER BY indicador_key;
```

Si no tienes acceso directo a SQL, utiliza el endpoint de la API: `GET /api/indicadores/{empresa_id}?modulo=liquidez`.

---

## Paso 2: Generación del Insight Segmentado (Modular Control)
Para optimizar el consumo de tokens y mantener el foco analítico, **segmenta tu petición por macro-módulos**. Elige uno de los 5 módulos:

1. **Liquidez** | 2. **Rentabilidad** | 3. **Solvencia** | 4. **Actividad** | 5. **Estructura**

**Ejemplo de Prompt Modular:**
> "Analiza el módulo de **RENTABILIDAD** para [CLIENTE_ENTITY] en Dic 2024. Aquí están los datos clave del bloque: Margen EBITDA 12%, Margen Neto 5%, ROE 18%. Compara con benchmarks y genera insights de 3 pilares."

## Paso 3: Perfilamiento Automático del Sector (SIIGO Data)
Para que los insights sean precisos y los benchmarks (ej. margen ideal) se ajusten a la realidad, la IA debe inferir el **Sector Económico** de la empresa analizando la balanza de comprobación (datos SIIGO).

Agrega esta instrucción al contexto inicial de la IA antes de pedirle que analice los módulos:

```text
INSTRUCCIÓN DE PERFILAMIENTO:
Eres un auditor forense. Antes de generar insights, analiza la balanza de comprobación (Master Account / Movimientos SIIGO) para inferir el sector de la empresa:

1. ¿Es Comercial, Manufactura o Servicios?
   - Si la cuenta 1435 (M. no fabricadas) tiene saldo alto -> COMERCIAL.
   - Si la cuenta 1410/1430 (Productos en proceso/terminados) tiene saldo -> MANUFACTURA.
   - Si no hay cuenta 14 (Inventarios) -> SERVICIOS.
   
2. ¿Qué tipo de servicios/comercio?
   - Revisa las subcuentas de ingresos (41XX). El nombre de la cuenta 41 (ej. "4155 - Actividades Inmobiliarias") te dará el sector exacto.

3. Contexto Macro y Regulatorio (Inyección Externa):
   - Además de los datos de SIIGO, DEBES solicitar y considerar el contexto macroeconómico actual de Colombia (Tier 1 Data):
     * Tasa de Intervención del Banco de la República (impacta costo de deuda).
     * Inflación / IPC (impacta precios y salarios).
     * Tasa de Usura (límite legal para endeudamiento o crédito a clientes).

5. Lenguaje No Técnico (Gerencial):
   - **REGLA DE ORO**: Un Gerente General debe entender qué pasa con su dinero sin tener a un contador al lado.
   - Prohibido el uso de jerga: "Cuenta 5105", "DSO", "Apalancamiento de 1.33x", "Insolvencia técnica".
   - Usa términos de negocio:
     * En lugar de "Razón Corriente" -> "¿Con cuánto contamos realmente para cubrir los gastos de este mes?".
     * En lugar de "ROE / Rentabilidad" -> "¿Cuánto dinero nos dejó realmente la inversión de los socios?".
     * En lugar de "DSO / Cartera" -> "¿Cuántos días tardan los clientes en pagarnos las facturas?".
     * En lugar de "Apalancamiento" -> "¿Qué tanto dependemos de los bancos o de otros para operar?".
     * En lugar de "EBITDA" -> "Dinero generado por la operación pura antes de impuestos y deudas".
   - Tu lenguaje debe ser directo, empresarial y orientado a la rentabilidad del bolsillo del dueño.

6. Extensión y Formato (50 Palabras):
   - Cada bloque de análisis (`analisis_positivo`, `analisis_negativo`) y la `recomendacion` DEBE tener una extensión de **aproximadamente 50 palabras**.
   - Esto garantiza que el insight tenga suficiente peso analítico pero sea lo suficientemente conciso para una lectura rápida por parte de la gerencia.
   - Evita respuestas de una sola frase o párrafos excesivamente largos.

7. Perfil de la Operación (Contexto para Terceros):
   - Al inicio del reporte, la IA debe generar un breve párrafo descriptivo (2-3 líneas) explicando a qué se dedica la empresa basándose en sus principales fuentes de ingreso (Cuenta 41) y sus mayores rubros de gasto/costo.
   - Ejemplo: "Empresa dedicada a la consultoría B2B. Su principal fuente de ingresos son las asesorías financieras (80% de ventas). Su mayor peso operativo es la nómina de especialistas (Cuenta 5105), representando el 60% de sus salidas de efectivo, lo que define una estructura ligera en activos fijos pero muy dependiente del capital humano."

Una vez deduzcas el sector y cruces con la realidad macroeconómica, ajusta tus recomendaciones financieras. Utiliza el modelo DuPont en tu análisis interno, pero explícalo en lenguaje simple (ej. "ganamos plata por margen, no por volumen"). Las recomendaciones deben mencionar la acción de negocio, aunque referencies la cuenta contable (ej. "Acelera el cobro de facturas atrasadas de clientes (Cuenta 1305)").
```

## Paso 4: Inyección en la Base de Datos
Una vez tengas el texto dictaminado de los 3 pilares, debes insertarlo en la tabla `insights_ai`. A partir de **v2.2-perf**, el endpoint `POST /api/insights` acepta los campos `modulo` y `period_key` para clasificar correctamente cada insight.

> [!IMPORTANT]
> **Cambio Crítico (v2.2-perf):** El campo `modulo` ahora se persiste en la BD. Si no lo envías explícitamente, el backend lo auto-detecta a partir del `indicador_key`. Sin embargo, **se recomienda enviarlo siempre** para evitar posibles ambigüedades.

```sql
-- Inserción de Insight Maestro (v2.2 con modulo + period_key)
INSERT INTO liquidity.insights_ai (
    empresa_id, 
    indicador_key, 
    periodo_ano, 
    periodo_mes,
    tipo, 
    analisis_positivo, 
    analisis_negativo, 
    recomendacion, 
    metodologia,
    modulo,
    period_key
) VALUES (
    3104, 
    'cargos_fijos_1Q', 
    2025,
    3,
    'success', 
    'La cobertura de cargos fijos en el primer trimestre refleja una capacidad sólida para cubrir los costos operativos básicos...', 
    'Sin embargo, la volatilidad mensual dentro del mismo trimestre sugiere que hay meses específicos donde los ingresos no alcanzan...', 
    'Revisa tus contratos de prestación de servicios y ajusta las tarifas para estabilizar la cobertura...', 
    'Protocolo v4.6 — Lenguaje Gerencial',
    'solvencia',
    '1Q'
) ON CONFLICT (empresa_id, indicador_key, periodo_ano, periodo_mes) 
  DO UPDATE SET 
    tipo = EXCLUDED.tipo,
    analisis_positivo = EXCLUDED.analisis_positivo,
    analisis_negativo = EXCLUDED.analisis_negativo,
    recomendacion = EXCLUDED.recomendacion,
    modulo = EXCLUDED.modulo,
    period_key = EXCLUDED.period_key;
```

**Auto-detección vía API (alternativa preferida):**
Si inyectas vía `POST /api/insights`, puedes omitir `modulo` y `period_key` — el backend los deriva automáticamente:
- `indicador_key = 'cargos_fijos_1Q'` → `modulo = 'solvencia'`, `period_key = '1Q'`
- `indicador_key = 'margen_bruto'` → `modulo = 'rentabilidad'`, `period_key = 'Annual'`
- `indicador_key = 'DSO_M5'` → `modulo = 'actividad'`, `period_key = 'M5'`

## Paso 4: Visualización en el Tablero SPA
Tras ejecutar el SQL, el Dashboard refrescará automáticamente los modales de "Insights" para mostrar esta narrativa técnica al CFO.

### 4.1 Overlays estilo TV (Glassmorphism)
Los insights ya no se muestran como alertas simples. El sistema utiliza una capa de **Overlay Ejecutivo** con:
- Fondo glaciar/vidrio (`backdrop-filter`) para no perder de vista las gráficas de fondo.
- Tipografía en gris oscuro (#475569) para máxima legibilidad.
- Botones de acción contextuales según la criticidad (Positivo, Alerta, Acción).

### 4.2 Dictamen Horizontal (Layout Lean)
El análisis final consolidado se presenta en la sección de cierre con una estructura horizontal bi-columna:
- **Columna Izquierda (Riesgos)**: Iconografía de alta definición para identificar amenazas de liquidez.
- **Columna Derecha (Modelo de Negocio)**: Renderizado Markdown del dictamen completo.
- **Firma Certificada**: Timestamp automático y sello de auditoría financiera.

---

## 8. Gestión de Carga y Estabilidad de API (Protocolo Anti-Desbordamiento)

Debido a que cada periodo (mes/año) requiere **44+ piezas de inteligencia independiente**, la carga masiva puede saturar los buffers de la API o los límites de concurrencia de NocoDB. Sigue estrictamente este protocolo de **Fraccionamiento y Tiempo Dilatado**:

### 8.1 Estrategia de Fraccionamiento Modular (Chunking)
**NUNCA** envíes los 33+ indicadores en un solo bloque de procesamiento. El analista debe segmentar la carga en **5 ráfagas independientes**:
1.  **Ráfaga 1**: Liquidez (4 registros) + Resumen Ejecutivo (6 registros).
2.  **Ráfaga 2**: Actividad (8 registros).
3.  **Ráfaga 3**: Rentabilidad (8 registros).
4.  **Ráfaga 4**: Solvencia (6 registros).
5.  **Ráfaga 5**: Estructura (7 registros).

### 8.2 Protocolo de Tiempo Dilatado (Latency Windows)
Para asegurar que la base de datos procese y confirme cada escritura antes de recibir la siguiente, implementa estas pausas:
- **Pausa Inter-Registro**: Espera **500ms - 1s** entre cada sentencia `INSERT` individual.
- **Pausa Inter-Módulo**: Espera **15 - 30 segundos** entre ráfagas de módulos diferentes para permitir el refresco de los índices de la base de datos.
- **Ventana de Enfriamiento**: Tras procesar un año fiscal completo (17 periodos), realiza una pausa de **2 minutos** antes de iniciar el siguiente año.

### 8.3 Verificación de Completamiento (Integrity Check)
Antes de dar por terminada la carga de una empresa, ejecuta esta consulta de control para asegurar que no hubo "paquetes perdidos":

```sql
-- Verificar conteo de inteligencia por empresa, año y módulo
SELECT periodo_ano, modulo, COUNT(*) as total_insights 
FROM liquidity.insights_ai 
WHERE empresa_id = [ID]
GROUP BY periodo_ano, modulo
ORDER BY periodo_ano DESC, modulo;
```
*   **Resultado esperado**: Un año completo con 12 meses + 4 Qs + 1 Anual debe devolver exactamente **N indicadores core + N dictámenes** (aprox. 660-700 registros por año si se cargan todos los niveles). Cada registro debe tener `modulo` distinto de `NULL` o `'general'` para garantizar la correcta visualización en el Dashboard.

---

> [!CAUTION]
> **Error de Respuesta**: Si recibes un error `504 Gateway Timeout` o `429 Too Many Requests`, **DETÉN EL PROCESO INMEDIATAMENTE**. Espera 5 minutos y reinicia la carga desde el último periodo que NO aparezca en la consulta de verificación de arriba.

> [!IMPORTANT]
> **Consistencia Visual**: Al generar insights, recuerda que el espacio en los overlays es premium. Sé directo y evita repetir datos que ya son evidentes en las gráficas superiores.
> 
> [!TIP]
> **Automatización**: Si deseas procesar todos los 33 indicadores de un golpe, puedo generarte el script SQL masivo ahora mismo basándome en los datos de la base de datos si me confirmas el acceso.

