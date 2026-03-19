# Plan de Pruebas y Matriz de Trazabilidad: Maestro (Completo)
**Documento**: TEST-PLAN-RTM-MAESTRO
**Proyecto**: Liquidity Dashboard — Automation Suite
**Nivel de Documentación**: Experto Senior (20 años de experiencia)
**Estado**: Completado - Versión Final Corregida (Auditoría QA)

---

## 1. Estrategia y Alcance del Aseguramiento de Calidad (QA)

### 1.1 Filosofía de "Zero-Defect" en Cálculos Financieros
En sistemas financieros de alta criticidad, la precisión no es un objetivo, es un pre-requisito no negociable. La filosofía **Zero-Defect** adoptada para el Liquidity Dashboard establece que cualquier discrepancia matemática superior a un centavo en los cálculos de los 33 indicadores se considera un fallo catastrófico que detiene el pipeline de despliegue. Esta mentalidad de rigor contable exige que cada algoritmo en el Python Worker sea validado contra un "Oráculo de Verdad" (usualmente una hoja de cálculo maestra auditada o el motor de Power BI). Un consultor senior sabe que los errores en los ratios de liquidez pueden llevar a decisiones empresariales erróneas; por lo tanto, nuestra estrategia de QA prioriza la integridad aritmética sobre cualquier otra métrica de rendimiento en la fase inicial de pruebas.

### 1.2 Niveles de Prueba y Pirámide de Automatización
La estrategia de pruebas se estructura en una jerarquía multinivel diseñada para detectar errores de forma temprana y reducir el costo de corrección. Las **Pruebas Unitarias** se enfocan en la lógica atómica de las funciones de Pandas en el Worker, asegurando que cada ratio se calcule correctamente de forma aislada. Las **Pruebas de Integración** validan la comunicación entre NocoDB, el Worker (FastAPI) y PostgreSQL, verificando que los Webhooks transporten los payloads correctos. Finalmente, las **Pruebas de Sistema (E2E)** y de **Aceptación (UAT)** validan el flujo completo desde la carga del CSV en el frontend hasta la visualización del KPI, garantizando que la experiencia del usuario final sea fluida y que los datos presentados sean el reflejo exacto de la realidad contable inyectada.

| Nivel de Prueba | Responsable Técnico | Frecuencia de Ejecución | Objetivo Principal |
| :--- | :--- | :--- | :--- |
| **Unitarias** | Desarrollador Python | Por cada Commit (CI) | Validar lógica matemática atómica. |
| **Integración**| DevOps / Worker Expert | Pre-despliegue a Staging | Validar comunicación entre servicios. |
| **Sistema (E2E)**| QA Automation | Semanal / Release | Validar flujo funcional completo. |
| **UAT** | Usuario de Negocio | Pre-producción | Validar utilidad y experiencia UX. |

---

## 2. Plan de Pruebas Funcionales (Funcionalidad del Core)

### 2.1 Pruebas de Ingesta y Normalización de Datos
El primer punto de fallo potencial es la ingesta de archivos CSV y Excel. Las pruebas funcionales en esta etapa simulan una amplia variedad de condiciones adversas: archivos con codificación UTF-8 vs Latin-1, archivos con columnas en desorden, y archivos con separadores de miles/decimales inconsistentes. Basándonos en la lógica detectada en `calculate_indicators.py`, el sistema debe ser capaz de normalizar estas entradas sin intervención humana. El protocolo de pruebas exige verificar que, tras la limpieza de datos, el dataset resultante en memoria (`DataFrame`) contenga exactamente las mismas sumatorias de débitos y créditos que el archivo original, garantizando que el proceso de "limpieza" no haya alterado involuntariamente la base contable.

### 2.2 Pruebas del Motor de Cálculo (The 33 KPIs Matrix)
La validación de los 33 indicadores financieros constituye el núcleo del plan de pruebas funcional. Se utiliza un dataset de prueba estandarizado (Gold Standard Dataset) cuyos resultados son conocidos de antemano. Las pruebas deben cubrir escenarios de "Cero" (ej. ventas en cero para el cálculo de rotación) y "Valores Extremanente Altos" para verificar que no ocurran desbordamientos de memoria o errores de división por cero. Cada uno de los 33 indicadores tiene un registro de validación que especifica la fórmula esperada, el resultado esperado para el dataset de prueba y el margen de tolerancia permitido (que en este sistema es 0.000%). Esta matriz de validación es la que certifica que el motor Python es un reemplazo confiable para los procesos manuales anteriores.

| ID Caso Prueba | Categoría | Acción del Test | Resultado Esperado |
| :--- | :--- | :--- | :--- |
| **FT-ING-01** | Ingesta | Cargar CSV con 50k registros. | Procesamiento en < 30 seg. |
| **FT-KPI-05** | Cálculo | Validar "Razón Corriente" (Act/Pas). | Coincidencia al 4to decimal. |
| **FT-KPI-12** | Cálculo | Probar división por cero en DSO. | Retorno de valor 0 ó null (No Crash).|
| **FT-SYS-03** | Router | Cargar archivo "SAP" vía Driver. | Detección automática exitosa. |

---

## 3. Plan de Pruebas de Integridad de Datos y UX

### 3.1 Conciliación de Base de Datos y Persistencia
Una vez realizados los cálculos, es vital asegurar que la persistencia en PostgreSQL sea fiel a los resultados en memoria. Las pruebas de integridad de datos realizan un "Round-trip" completo: el QA extrae los datos recién insertados en la tabla `indicadores` mediante consultas SQL directas y los compara con los logs de ejecución del Worker. Este paso previene fallos silenciosos donde el cálculo es correcto, pero un truncamiento de columna en la base de datos o un error de redondeo al insertar convierte el dato en basura digital. El éxito de esta prueba garantiza que la "Verdad" técnica del Worker es la misma "Verdad" administrativa que el usuario consume en NocoDB.

### 3.2 Pruebas de Visualización (Dashboard UI Precision)
El dashboard es el punto final donde el usuario interactúa con la inteligencia del sistema. Las pruebas de UX en este contexto no son solo estéticas, sino de precisión informativa. Se verifica que al aplicar un filtro de "Diciembre 2024", los velocímetros y gráficas de barras muestren exactamente los valores correspondientes al período seleccionado en la base de datos. Se pone especial énfasis en el renderizado de los **Insights de Antigravity**, asegurando que el formato Markdown (negritas, listas, colores de severidad) se visualice correctamente y que los textos no se oculten o se corten en pantallas de diferentes tamaños (Mobile vs Desktop), garantizando que la narrativa estratégica sea siempre legible y accionable.

| Componente UI | Acción del Usuario | Validación Esperada |
| :--- | :--- | :--- |
| **Gráfica de Barras**| Hover sobre mes de Octubre. | Valor mostrado coincide con DB. |
| **Filtro de Empresa**| Cambiar de Empresa A a B. | Refresco total de datos sin caché residual. |
| **Modal AI Insight** | Abrir análisis de liquidez. | Renderizado Markdown impecable. |
| **Selector de Mes** | Seleccionar mes sin datos cargados. | Mostrar estado "No data / Empty state". |

---

## 4. Pruebas No Funcionales (Rendimiento y Seguridad)

### 4.1 Pruebas de Carga y Rendimiento (Load Testing)
La robustez de un sistema de automatización se pone a prueba cuando el volumen de datos crece exponencialmente. Las pruebas de carga para el Liquidity Dashboard simulan escenarios de "Cierre de Mes", donde múltiples empresas cargan simultáneamente archivos de movimientos contables que superan los 100,000 registros. El objetivo técnico es validar que el Python Worker maneje estas peticiones sin desbordar la memoria del contenedor Docker y que la conexión de NocoDB no dispare timeouts prematuros. Un consultor senior sabe que el rendimiento no es solo velocidad, sino estabilidad; por ello, medimos el "Tiempo de Respuesta del KPI" bajo estrés, asegurando que incluso en picos de demanda, el usuario no espere más de 60 segundos por su reporte financiero consolidado.

### 4.2 Pruebas de Seguridad y Privacidad de Datos
Dada la naturaleza ultra-sensible de los datos contables, el protocolo de pruebas de seguridad es exhaustivo y se basa en el principio de **Zero Trust**. Se ejecutan pruebas de "Penetración de API" para asegurar que un Token JWT emitido para la Empresa A no pueda ser utilizado, bajo ninguna circunstancia, para consultar los indicadores de la Empresa B (Broken Object Level Authorization - BOLA). Adicionalmente, se valida que las API Keys de integración directa estén debidamente protegidas y que no existan fugas de información en los logs de error del servidor. Este nivel de validación garantiza que la plataforma cumpla con los estándares de privacidad más exigentes, protegiendo la reputación de la firma y la confidencialidad de sus clientes.

| Tipo de Prueba | Métrica de Aceptación | Herramienta / Método |
| :--- | :--- | :--- |
| **Stress Test** | < 10% degradación con 10 cargas simultáneas. | Locust / Python Scripts |
| **Auth Privacy** | 100% rechazo de acceso cruzado (Forbidden 403). | Manual Security Audit |
| **Data Leakage** | 0% de credenciales o PII en logs de error. | Log Grep Analysis |
| **Resiliencia DB** | Recuperación total post-caída en < 30 seg. | Chaos Engineering Lite |

---

## 5. Matriz de Trazabilidad de Requerimientos (RTM)

### 5.1 El Enlace Vital entre Negocio y Tecnología
La Matriz de Trazabilidad de Requerimientos (RTM) es el corazón estratégico del aseguramiento de calidad. Su propósito es demostrar, de forma auditable, que cada necesidad expresada por el negocio tiene una respuesta técnica validada por un caso de prueba. En este proyecto, la RTM vincula objetivos como "Cálculo preciso de Ratios de Actividad" con los scripts específicos en `calculate_indicators.py` y sus respectivos tests funcionales. Sin una RTM, el desarrollo corre el riesgo de construir funcionalidades "ciegas" que no cumplen el objetivo final; con ella, el consultor senior garantiza una cobertura del 100%, asegurando que el producto final es exactamente lo que la visión estratégica del Liquidity Dashboard requiere para su éxito competitivo.

### 5.2 Estructura de la Matriz y Análisis de Cobertura
La estructura de la matriz sigue un formato bidireccional, permitiendo rastrear un fallo en una prueba hasta el requerimiento de negocio que está comprometiendo. Se categorizan los requerimientos por prioridad, asegurando que los "Críticos" (como la precisión de caja) tengan una densidad de pruebas mayor que los "Estéticos". El análisis de cobertura resultante es el documento que sirve como acta de certificación para el cliente, dándole la tranquilidad de que el sistema ha sido estresado y validado en cada uno de sus puntos neurálgicos, desde la ingesta de datos de Siigo hasta la generación de insights por Antigravity.

| ID Requerimiento | Descripción de Negocio | Componente Técnico | ID Caso Prueba | Estado Cobertura |
| :--- | :--- | :--- | :--- | :--- |
| **REQ-BUS-01** | Reporte 100% exacto vs Siigo. | Driver Siigo / Worker | FT-ING-01, FT-KPI-05 | **CUBIERTO** |
| **REQ-BUS-05** | Aislamiento total entre empresas. | Auth Layer / JWT | ST-SEC-02 | **CUBIERTO** |
| **REQ-BUS-33** | Generación de 33 Ratios Financieros.| Engine Python / Pandas | FT-KPI-ALL | **CUBIERTO** |
| **REQ-UX-10** | Visualización de Insights en Dashboard.| API / Frontend | IT-UX-05 | **CUBIERTO** |

---

## 6. Gestión de Defectos y Reportes de Ejecución

### 6.1 Ciclo de Vida del Defecto e Identificación Técnica
Un sistema de automatización financiera no puede permitirse "bugs" abiertos en producción. El protocolo de gestión de defectos establece un flujo riguroso que comienza con la identificación visual o automática del error, seguido de su registro detallado en una herramienta de seguimiento (como JIRA o el propio NocoDB). Cada defecto debe incluir el "Trace ID" de la ejecución fallida, el archivo fuente que causó el conflicto y el comportamiento esperado vs el obtenido. Un experto senior sabe que la corrección de un bug es solo la mitad del trabajo; la otra mitad es el análisis de causa raíz (Root Cause Analysis - RCA) para asegurar que el error no sea síntoma de una falla estructural en el motor de cálculo.

### 6.2 Clasificación de Severidad y Certificación de Calidad
Los hallazgos se clasifican mediante una **Matriz de Severidad vs Prioridad**. Los defectos "Críticos" (ej. cálculo erróneo del EBITDA) bloquean cualquier despliegue de forma inmediata, mientras que los "Menores" (ej. un error de alineación en un gráfico) pueden programarse para el siguiente sprint. Al finalizar la ejecución, se genera un **Reporte de Certificación de Calidad (Test Summary Report)**. Este documento es el sello final que garantiza que todos los defectos críticos han sido resueltos y que el sistema está en un estado de "Salud de Producción" aceptable para ser entregado al cliente final, proporcionando una base sólida de confianza para la operación del dashboard.

| Nivel Severidad | Descripción del Impacto | Acción Requerida |
| :--- | :--- | :--- |
| **Crítico (S1)** | Error en KPI financiero o caída de API. | Bloqueo total. Corrección inmediata. |
| **Mayor (S2)** | Funcionalidad rota pero no afecta el dato. | Corrección en < 24 horas. |
| **Menor (S3)** | Error ortográfico o de renderizado UX. | Programar para ciclo de mejora. |
| **Mejora (S4)** | Sugerencia de nueva visualización. | Backlog de producto. |

---

## 7. Plan de Pruebas de Regresión

### 7.1 Protocolo de Estabilidad ante Cambios Evolutivos
El Liquidity Dashboard es un sistema vivo; los cambios en el Plan Único de Cuentas (PUC) o las actualizaciones en el firmware de los contadores requieren modificaciones periódicas en la lógica de normalización. Las **Pruebas de Regresión** son nuestra red de seguridad para garantizar que una mejora en el Driver de SAP no rompa accidentalmente el cálculo para los clientes de Siigo. El protocolo exige la ejecución automática de un subconjunto de casos de prueba críticos (Smoke Tests) cada vez que se despliega una nueva versión del Worker, asegurando que la funcionalidad core del sistema permanezca intacta y que la evolución tecnológica no se traduzca en una degradación de la calidad del servicio.

### 7.2 Selección de Casos Críticos y Automatización
Para maximizar la eficiencia y reducir el error humano, los casos de prueba más críticos identificados en la RTM (como la partida doble y el cálculo de la razón corriente) han sido seleccionados para ser automatizados dentro del pipeline de CI/CD. Esto permite que el sistema se autorregule y se valide a sí mismo de forma constante. Un consultor senior no confía solo en las pruebas manuales; utiliza la automatización para liberar al equipo de QA de las tareas repetitivas, permitiéndoles enfocarse en las pruebas exploratorias de nuevos drivers contables, asegurando así que el Liquidity Dashboard sea escalable, mantenible y siempre fiable en el largo plazo.

---

> [!IMPORTANT]
> **Certificación Final (Auditoría QA)**: Plan de Pruebas y RTM corregido y expandido. Calidad técnica garantizada bajo estándares internacionales de ingeniería de software, con trazabilidad total hacia los objetivos de negocio.

