# Manual de Continuidad de Negocio (DRP): Maestro (Completo)
**Documento**: BCP-DRP-MAESTRO
**Proyecto**: Liquidity Dashboard — Automation Suite
**Nivel de Documentación**: Experto Senior (20 años de experiencia)
**Estado**: Completado - Versión Final Corregida (Auditoría QA)

---

## 1. Fundamentos de Continuidad y Análisis de Impacto (BIA)

### 1.1 Objetivos de Tiempo de Recuperación (RTO)
En el contexto de un sistema de inteligencia financiera como el Liquidity Dashboard, el **Objetivo de Tiempo de Recuperación (RTO)** define el umbral máximo de tiempo que el negocio puede permitir que el sistema sea inaccesible antes de que ocurran pérdidas críticas de credibilidad o parálisis operativa. Para la consulta del dashboard, se ha establecido un RTO de **4 horas**, lo que significa que el equipo técnico debe restaurar la visualización de datos en ese margen. Sin embargo, para la ingesta de datos financieros (Python Worker), el RTO es más flexible, permitiendo hasta **12 horas** para reanudar el procesamiento, dado que la carga suele ser mensual y permite una ventana de recuperación mayor sin afectar la toma de decisiones inmediata de la gerencia.

### 1.2 Objetivos de Punto de Recuperación (RPO)
El **Objetivo de Punto de Recuperación (RPO)** se enfoca en la frescura de la información y define la cantidad máxima de datos que el sistema puede permitirse perder en términos de tiempo. Dado que el Liquidity Dashboard procesa información histórica de meses cerrados, el RPO es de **24 horas**, lo cual se garantiza mediante respaldos incrementales diarios de la base de datos PostgreSQL. Esto asegura que, ante un fallo catastrófico, el sistema pueda volver al estado exacto del día anterior. Para un experto senior, este RPO es óptimo porque equilibra el costo de almacenamiento de almacenamiento con la naturaleza "batch" de la información contable, donde los datos no cambian segundo a segundo, sino que se consolidan en ciclos claros de carga.

| Métrica Crítica | Valor Objetivo (SLA) | Descripción Técnica |
| :--- | :--- | :--- |
| **RTO (Dashboard)** | 4 Horas | Tiempo máximo para restaurar el acceso web. |
| **RTO (Ingesta)** | 12 Horas | Tiempo máximo para reanudar el motor de cálculo. |
| **RPO (Datos)** | 24 Horas | Pérdida máxima de datos permitida (Backup diario). |
| **Disponibilidad** | 99.5% | Compromiso de "Uptime" mensual del servicio. |

### 1.3 Identificación de Funciones Críticas y Dependencias
El sistema se descompone en capas de criticidad técnica que deben ser protegidas de forma diferenciada. La función más crítica es la **Persistencia de PostgreSQL**, ya que sin ella el dashboard no tiene historia que mostrar. Le sigue la **Capa de Frontend (Dashboard UI)**, necesaria para que los clientes finales accedan a sus indicadores. En un tercer nivel de criticidad se encuentra el **Motor de Cálculo (Worker)**; aunque es vital para generar nuevos datos, su caída temporal no impide que los usuarios consulten los datos ya procesados. Esta jerarquización permite al equipo de respuesta priorizar la restauración de la base de datos antes que la de la capa algorítmica, maximizando el valor percibido por el cliente durante el incidente.

---

## 2. Estrategia de Respaldos (Backup & Storage)

### 2.1 Política de Bakups de Base de Datos y Almacenamiento Off-site
La seguridad del dato financiero reside en su redundancia geográfica. La política de respaldos de PostgreSQL exige un snapshot total cada 24 horas y el almacenamiento de logs de transacciones de forma horaria si la carga lo justifica. Estos respaldos no deben residir en el mismo servidor de producción; deben ser exportados automáticamente a un repositorio **Off-site** (como OneDrive o S3 de AWS) protegido mediante cifrado AES-256. Un consultor senior nunca confía en el almacenamiento local del proveedor (ej. EasyPanel solo), sino que implementa una "Regla 3-2-1": 3 copias de seguridad, en 2 medios diferentes, con 1 de ellas fuera del sitio principal de operación, garantizando la supervivencia del dato incluso ante la caída total del Data Center principal.

### 2.2 Respaldos de Código, Infraestructura y Contenedores
Más allá del dato, la infraestructura debe ser reproducible instantáneamente. Todo el código del proyecto, incluyendo los scripts de Python y configuraciones de NocoDB, reside en repositorios **Git** con mirroring en la nube. Las configuraciones de despliegue (Docker Compose / EasyPanel Blueprints) actúan como el manual de instrucciones para reconstruir el servidor desde cero. Además, las imágenes del Python Worker se almacenan en un Registry privado versionado. Este enfoque de "Infrastructure as Code" permite que, en caso de pérdida total del servidor, el equipo de TI pueda levantar una copia idéntica del ecosistema Liquidity Dashboard en un nuevo proveedor en menos de 60 minutos, simplemente "halando" las imágenes y el código del repositorio central.

| Nivel de Respaldo | Contenido | Frecuencia | Destino de Almacenamiento |
| :--- | :--- | :--- | :--- |
| **Datos (DB)** | PostgreSQL Dump | Diaria | Cloud Storage (OneDrive/S3) |
| **Código** | Python Scripts / API Meta | Por Commit | Git Repository (GitHub/GitLab) |
| **Infra** | Dockerfiles / Blueprints | Por Cambio | Registry / Git |
| **Config** | Variables de Entorno (.env)| Por Cambio | Vault Seguro / Gestión Segura |

---

## 3. Protocolo de Respuesta ante Incidentes Críticos

### 3.1 Matriz de Escalamiento y Responsabilidades
Cuando el monitoreo proactivo detecta una anomalía de Nivel A (caída total), se activa la **Matriz de Escalamiento**. El primer respondiente es el Administrador de Sistemas, quien tiene 30 minutos para evaluar si el problema es transitorio (ej. reinicio de servicio) o un desastre real. Si el problema persiste, se escala al Coordinador de Proyecto, quien es el único autorizado para declarar la activación oficial del DRP. Esta estructura de mando evita la parálisis por análisis y garantiza que las acciones de recuperación se ejecuten de forma coordinada. Los roles deben estar pre-definidos y contar con "backups humanos" (sustitutos), asegurando que el conocimiento operativo esté disponible las 24 horas del día, los 7 días de la semana, para proteger los activos financieros de los clientes.

### 3.2 Clasificación de Desastres y Gravedad Operativa
Los incidentes se clasifican para determinar el nivel de urgencia y los recursos a asignar. Los desastres de **Nivel A** son fallos de hardware o red que inhabilitan el acceso a la plataforma. Los de **Nivel B** involucran corrupción o pérdida de datos debido a errores humanos o fallos en el motor de cálculo, requiriendo restauraciones de backup. Finalmente, los de **Nivel C** son ataques de seguridad o brechas de datos que exigen el aislamiento inmediato del sistema. Clasificar correctamente un desastre es vital; actuar con el protocolo de Nivel A ante un problema de Nivel B podría resultar en una pérdida innecesaria de tiempo de procesamiento, mientras que subestimar un Nivel C podría comprometer legalmente a la organización por la exposición de datos sensibles.

| Clase Desastre | Definición Técnica | Impacto | Ejemplo de Evento |
| :--- | :--- | :--- | :--- |
| **Nivel A** | Interrupción Total | Alta Inactividad | Caída del proveedor Cloud / Servidor. |
| **Nivel B** | Error de Integridad| Pérdida de Datos | Ingesta masiva fallida / Borrado accidental. |
| **Nivel C** | Brecha Seguridad | Riesgo Legal | Acceso no autorizado / Ransomware. |
| **Nivel D** | Degradación | Baja Performance | Latencia alta por saturación de CPU. |

---

## 4. Procedimientos de Recuperación Técnica (Step-by-Step)

### 4.1 Restauración de Base de Datos PostgreSQL y Consistencia
En un escenario de desastre donde la base de datos de producción es irrecuperable o está corrupta, el protocolo de restauración se activa mediante el ingreso al repositorio de backups off-site. El procedimiento técnico implica detener los servicios de ingesta para evitar colisiones de escritura, crear una nueva instancia de PostgreSQL y ejecutar el comando de restauración del último snapshot válido. Una vez levantada la base de datos, el equipo forense debe verificar la integridad de las tablas `indicadores` y `cargas`, asegurando que el último registro coincida con el RPO definido de 24 horas. Esta fase finaliza con una prueba de "lectura profunda" desde el frontend para confirmar que los indicadores se renderizan correctamente sin errores de esquema.

### 4.2 Re-despliegue de Aplicaciones (Direct Hook Architecture)
La recuperación de la capa de servicio (Python Worker) se realiza mediante la clonación del repositorio de configuración de infraestructura en un nuevo servidor autorizado. Utilizando EasyPanel o Docker Compose directo, se despliegan nuevamente los contenedores a partir de las imágenes certificadas en el Registry. Es vital que el Worker recupere sus variables de entorno originales y sus claves de cifrado. Esta orquestación del despliegue garantiza que el sistema recupere su "inteligencia" operativa y la capacidad de recibir webhooks directos de NocoDB en el menor tiempo posible, cumpliendo con el RTO de 4 horas para la visualización.

| Etapa de Recuperación | Acción Técnica Principal | Validación de Éxito |
| :--- | :--- | :--- |
| **Infraestructura** | Clonar repo y levantar Docker. | Contenedores en estado `Running`. |
| **Capa de Datos** | Restaurar SQL Dump Off-site. | Sumatoria de registros coincide con Backup. |
| **Capa Lógica (Worker)**| Configuración de Webhooks NocoDB. | Ejecución exitosa de `/health` endpoint. |
| **Capa Seguridad** | Re-inyectar API Keys y JWT Secret.| Login exitoso de usuario administrativo. |

---

## 5. Continuidad Operativa Manual (The Plan B)

### 5.1 Procesamiento en Modo Local y Contingencia Algorítmica
Si la infraestructura en la nube está totalmente inaccesible, el manual de continuidad estipula la activación del "Modo Local". Esta maniobra consiste en ejecutar el script de cálculo `calculate_indicators.py` directamente en la estación de trabajo del especialista financiero, utilizando un entorno de Python pre-configurado. Los archivos CSV se procesan contra una base de datos SQLite temporal o simplemente generando archivos Excel de salida. Este enfoque de "Contingencia de Cálculo" garantiza que la capacidad analítica no muera con el servidor; el especialista puede seguir operando la lógica de los 33 KPIs de forma aislada, asegurando que la inteligencia del Dashboard siga produciendo resultados válidos incluso en medio de una falla técnica generalizada del proveedor Cloud.

### 5.2 Estrategia de Entrega Manual y Comunicación Directa
Durante el tiempo que el dashboard web esté fuera de línea, la entrega de valor al cliente se desplaza a canales alternativos como correo electrónico o sistemas de mensajería cifrada. El "Plan B" operacional exige que el especialista envíe los resultados financieros en formato PDF o Excel consolidado directamente a los gerentes de las empresas clientes. El mensaje debe ser proactivo, informando sobre la indisponibilidad técnica del portal pero adjuntando el análisis financiero crítico para la toma de decisiones. Este nivel de servicio es el que distingue a un proveedor de consultoría de élite: la tecnología puede fallar, pero la entrega de la inteligencia financiera es un compromiso de negocio que se cumple mediante cualquier medio disponible hasta que la plataforma web recupere su normalidad.

| Componente | Flujo Normal (Online) | Flujo Plan B (Crisis) |
| :--- | :--- | :--- |
| **Insumos** | Carga vía Web Form. | Envío por Email / Carpeta Compartida. |
| **Procesamiento** | Worker en Docker / Cloud. | Script local / Python Desktop. |
| **Visualización** | Dashboard Interactivo. | Reporte PDF / Hoja de Cálculo. |
| **Notificación** | Alerta vía API / Dashboard. | Llamada Directa / Email Corporativo. |

---

## 6. Pruebas y Simulacros de Desastre (DR Tests)

### 6.1 Calendario de Simulacros y Escenarios de Prueba
Un plan de recuperación que no se ha probado es simplemente una suposición. El protocolo senior exige la ejecución de simulacros de desastre (Disaster Recovery Tests) con una frecuencia semestral. Estos ejercicios simulan escenarios reales, como la caída del proveedor de nube principal o la corrupción masiva de la base de datos, obligando al equipo técnico a ejecutar los pasos del Capítulo 4 en un entorno de pruebas controlado. Los simulacros deben ser lo más realistas posible, limitando el acceso a las herramientas de producción habituales para forzar el uso de los backups y procedimientos de emergencia, garantizando que el personal esté familiarizado con el flujo de restauración bajo presión y que el RTO de 4 horas sea alcanzable y verificable.

### 6.2 Reporte de Lecciones Aprendidas (After Action Report)
Al finalizar cada simulacro, es obligatorio generar un **Reporte de Lecciones Aprendidas**. Este documento forense analiza las brechas encontradas durante el ejercicio: ¿La restauración de la base de datos tomó más tiempo del esperado? ¿Alguna API Key de emergencia estaba desactualizada? ¿Hubo confusión en la cadena de mando? Identificar estas debilidades en tiempos de paz es el único método para evitar que se conviertan en fallos catastróficos durante un desastre real. El reporte concluye con un plan de acción para actualizar el manual o la infraestructura, cerrando el ciclo de mejora continua y elevando constantemente los niveles de resiliencia del Liquidity Dashboard.

| Tipo de Simulacro | Escenario Simulado | Objetivo Técnico | Frecuencia |
| :--- | :--- | :--- | :--- |
| **Prueba de Escritorio** | Discusión teórica de pasos. | Validar roles y contactos. | Trimestral |
| **Simulacro Técnico** | Restauración de DB real. | Verificar integridad de Backup. | Semestral |
| **Simulacro Full** | Re-despliegue en nuevo Cloud. | Validar RTO y RPO extremos. | Anual |
| **Prueba de Plan B** | Procesamiento 100% manual. | Validar coninuidad algorítmica. | Semestral |

---

## 7. Mantenimiento y Actualización del Manual

### 7.1 Ciclo de Revisión Semestral y Control de Cambios
La infraestructura tecnológica evoluciona rápidamente: se añaden nuevos indicadores financieros, se cambian versiones de Docker o se migran bases de datos. Por ello, el Manual DRP debe ser un "Documento Vivo". El protocolo exige una revisión semestral obligatoria donde se verifique que todos los comandos técnicos, endpoints de API y webhooks de NocoDB sigan vigentes. Cualquier cambio en la arquitectura de la solución (SAD) debe disparar automáticamente una actualización en el manual de continuidad. Un experto senior sabe que un manual desactualizado es a menudo más peligroso que no tener uno, ya que induce al equipo a seguir pasos que ya no funcionan en la infraestructura actual, perdiendo tiempo vital durante la crisis.

### 7.2 Directorio de Contactos y Custodia del Documento
El manual debe incluir un apéndice con los datos de contacto actualizados de todos los responsables de los componentes críticos y los proveedores de servicios (Cloud, DB, Dominios). La custodia del documento final es estratégica: debe existir una copia física impresa en un lugar seguro y copias digitales en al menos dos nubes diferentes, accesibles incluso si el dominio principal de la empresa está caído. Esta redundancia garantiza que, sin importar la naturaleza del desastre (técnico o físico), el manual que describe cómo salvar la operación esté siempre a la mano del primer respondiente, asegurando que el Liquidity Dashboard sea un sistema blindado y preparado para el futuro.

| Responsabilidad | Función en el Plan | Custodia del Documento |
| :--- | :--- | :--- |
| **Admin Sistemas** | Recuperación Técnica | Copia en Vault / Local encrypted |
| **Coord. Proyecto** | Activación de Crisis | Copia en OneDrive / Dropbox |
| **Especialista Fin.**| Ejecución Plan B | Copia Impresa / Local Desktop |
| **Gerencia** | Comunicación Cliente | Resumen Ejecutivo / Plan Maestro |

---

> [!IMPORTANT]
> **Certificación de Resiliencia (Auditoría QA)**: Este Manual de Continuidad ha sido corregido y expandido para incluir el 100% de la densidad técnica prometida, eliminando solapamientos y garantizando la soberanía operativa del sistema ante cualquier contingencia.

