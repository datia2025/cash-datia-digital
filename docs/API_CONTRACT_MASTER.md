# Contrato de API (Swagger/OpenAPI): Maestro v2.0
**Documento**: API-CONTRACT-MASTER-SPEC
**Proyecto**: Liquidity Dashboard — Automation Suite
**Nivel de Documentación**: Experto Senior (Grado Auditoría Técnica)
**Estado**: Versión Final Sincronizada

---

## 1. Definición Global y Arquitectura del Contrato

### 1.1 Identidad del Servicio y Propósito Técnico
La interfaz de programación de aplicaciones (API) del Liquidity Dashboard ha sido diseñada bajo el estándar **OpenAPI 3.0.3**, actuando como el contrato vinculante que rige la comunicación entre el sistema de gestión de contenidos (NocoDB), el motor de cálculo asíncrono y la capa de visualización de datos. En un entorno de auditoría, la API se define como una "specification-first architecture", donde cada endpoint posee una firma técnica inmutable que garantiza la integridad de los datos financieros. Esta versión 2.0 refleja la eliminación del middleware de orquestación, estableciendo canales de comunicación directos que minimizan la latencia y aseguran que los estados financieros procesados sean idénticos en todas las interfaces de consulta. El servicio está implementado sobre FastAPI, lo que permite una validación estricta de tipos mediante Pydantic y una documentación viva accesible vía Swagger.

| Component | Rol en la API | Protocolo | Autenticación |
| :--- | :--- | :--- | :--- |
| **Worker API** | Ingesta y ETL | HTTP/1.1 REST | API Key (Headers) |
| **Dashboard API** | Consumo de KPIs (SPA) | HTTP/2.0 JSON | Bearer Token (JWT) |
| **Webhook Handler** | Receiver de Eventos | HTTP/1.1 POST | Shared Secret / Token |

### 1.2 El Cliente SPA y la Capa de Visualización
En la arquitectura v2.0, el cliente frontend opera como una **Single Page Application (SPA)**. Esto significa que el "Dashboard API" no solo entrega datos, sino que debe servir payloads optimizados para el re-renderizado atómico en el navegador. La lógica de navegación modular (`DashboardAPI.openModule`) es el consumidor primario de este contrato, exigiendo una consistencia de tipos del 100% para evitar rupturas en la interfaz de usuario.

---

## 2. Especificación de Endpoints de Control (Worker API)

### 2.1 `POST /api/procesar/calc` (Receptor de Webhooks Multifomato)
Este es el punto de entrada neurálgico para la automatización. El endpoint ha sido diseñado para ser polimórfico, aceptando tres tipos de payloads distintos para garantizar la compatibilidad con diferentes versiones de NocoDB y triggers manuales. Al recibir la petición, el Worker valida la firma del evento y lanza un proceso asíncrono, devolviendo un `202 Accepted` de inmediato para evitar timeouts en el emisor.

**Formatos de Payload Soportados:**

| Tipo | Origen | Nodo de Datos Principal | Uso Recomendado |
| :--- | :--- | :--- | :--- |
| **NocoDB v3** | Hooks Nativos | `data.rows[0]` | Incluye `correo_notificacion` para feedback. |
| **Simplificado** | n8n / n8n-Legacy | `record_id` directo | Requiere lookup previo de email en DB. |
| **Directo** | Manual (Swagger) | JSON plano con ID | Permite testeo de notificaciones manuales. |

### 2.2 `GET /health` (Monitoreo de Salud de la Suite)
Endpoint de observabilidad crítica que informa sobre el estado de las dependencias vitales del sistema.
- **Respuesta**: `{"status": "ok", "service": "liquidity-worker", "database": "connected"}`.

### 2.3 `DELETE /api/admin/clear_empresa/{empresa_id}` (Hard-Purge de Auditoría)
Endpoint administrativo de alta criticidad para limpieza profunda de datos.
- **Función**: Elimina en cascada indicadores, insights, cargas, usuarios y el registro maestro de la empresa.
- **Uso**: Reinicio de instancias para auditoría o corrección de cargas masivas fallidas.

---

## 3. Especificación de Endpoints de Consulta y Seguridad

### 3.1 `POST /api/auth/login` (Identidad y Sesión)
Valida credenciales contra la tabla `public.usuarios`.
- **Payload**: `{"usuario": "email", "password": "..."}`.
- **Seguridad**: Si el usuario no existe durante la carga de datos, el Worker lo crea dinámicamente con una clave aleatoria (Self-Provisioning).

### 3.3 `GET /api/indicadores/{empresa_id}` (Feed de Visualización)
Este endpoint extrae la serie temporal de indicadores persistidos en PostgreSQL. Soporta filtros avanzados para optimizar la carga del dashboard, permitiendo la recuperación selectiva por módulo o vigencia fiscal.

**Parámetros de Query:**
- `modulo` (opcional): Filtro por categoría contable (`liquidez`, `rentabilidad`, etc.).
- `periodo_ano` (opcional): Año específico para análisis estático.

| Campo de Respuesta | Tipo PostgreSQL | Descripción Contable |
| :--- | :--- | :--- |
| `indicador_key` | TEXT | Slug técnico inmutable. |
| `periodo_mes` | INT | Mes del reporte (1-12). |
| `valor` | NUMERIC | Valor calculado con precisión bancaria. |
| `unidad` | TEXT | Etiqueta de presentación (%, $, veces). |

---

## 4. Esquemas de Datos y Seguridad (Data Integrity)

### 4.1 Autenticación de Auditoría
El sistema implementa una separación clara de privilegios para proteger el acceso a los datos sensibles.

- **Infraestructura (X-API-KEY)**: Utilizada por NocoDB para disparar cálculos. Se requiere la cabecera `xc-token` o un secreto compartido configurado en las variables de entorno del Worker.
- **Frontend (Simulated JWT / Auth.js)**: Para el entorno de auditoría, el dashboard utiliza `auth.js` para gestionar la identidad y el `empresa_id`. Asegura que un usuario de la "Empresa A" sea redirigido a una sesión que solo inyecta su ID en las peticiones de datos, garantizando aislamiento preventivo (Multi-tenant Isolation). En producción, este mecanismo evoluciona a un flujo JWT estándar.

### 4.2 Ejemplo de Respuesta (Indicador Atomizado)
```json
{
  "indicador_key": "prueba_acida",
  "periodo_ano": 2022,
  "periodo_mes": 12,
  "valor": 1.25,
  "modulo": "liquidez",
  "unidad": "veces"
}
```

---

## 5. Protocolo de Errores y Status Codes

| Código HTTP | Significado Semántico | Acción de Auditoría |
| :--- | :--- | :--- |
| **202 Accepted** | Proceso asíncrono iniciado. | Verificar logs en NocoDB pasados 5s. |
| **400 Bad Request** | Payload malformado o faltan archivos. | Revisar mapeo de campos en el Hook. |
| **403 Forbidden** | Error de autenticación/token. | Validar API Keys en el contenedor. |
| **422 Unprocessable** | Error de lógica PUC (Master Account).| Validar integridad del Excel maestro. |

---

> [!IMPORTANT]
> **Certificación de Contrato**: La API v2.0 ha sido sincronizada con el motor de cálculo y la estructura de PostgreSQL para garantizar una transición sin errores durante la auditoría del proyecto.

