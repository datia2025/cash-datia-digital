# Contrato de API (Swagger/OpenAPI): Maestro v2.2-perf
**Documento**: API-CONTRACT-MASTER-SPEC
**Proyecto**: Liquidity Dashboard — Automation Suite
**Nivel de Documentación**: Experto Senior (Grado Auditoría Técnica)
**Estado**: Versión v2.2-perf Sincronizada (Auditada — Fix Modulo Persistence 2026-03-30)

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

### 2.3 `GET /api/admin/usuarios/{empresa_id}` (Auditoría de Acceso)
Endpoint de consulta para verificar usuarios y contraseñas actuales asociados a una entidad.
- **Uso**: Recuperación de credenciales para soporte técnico inicial.
- **Nota**: Por simplicidad en esta fase (v2), las claves se almacenan/exponen como texto plano/hash temporal.

### 2.4 `POST /api/admin/reset_password/{empresa_id}` (Reset Administrativo)
Punto de control para forzar el cambio de clave de un usuario existente sin re-procesamiento de datos.
- **Payload**: `{"email": "...", "new_password": "..."}`.
- **Respuesta**: Confirmación de la actualización (`UPDATE 1`).

### 2.5 `DELETE /api/admin/clear_empresa/{empresa_id}` (Hard-Purge de Auditoría)
Endpoint administrativo de alta criticidad para limpieza profunda de datos.
- **Función**: Elimina en cascada indicadores, insights, cargas, usuarios y el registro maestro de la empresa.

---

## 3. Especificación de Endpoints de Inyección de Insights

### 3.1 `POST /api/insights` (Inyección Directa de Insights AI)
Endpoint utilizado por Antigravity/agentes externos para inyectar insights narrativos directamente en la BD.

**Payload (`InsightPayload`):**
```json
{
  "empresa_id": 3104,
  "indicador_key": "cargos_fijos_1Q",
  "periodo_ano": 2025,
  "periodo_mes": 3,
  "tipo": "success",
  "analisis_positivo": "...",
  "analisis_negativo": "...",
  "recomendacion": "...",
  "metodologia": "v4.6",
  "modulo": "solvencia",
  "period_key": "1Q"
}
```

**Campos nuevos (v2.2-perf):**
- `modulo` (opcional): Si se omite, el backend **auto-detecta** el módulo a partir del `indicador_key` usando un catálogo interno de 33 keys → 5 módulos. Se strippean sufijos (`_1Q`, `_M3`) antes del lookup.
- `period_key` (opcional): Si se omite, se extrae automáticamente del sufijo del `indicador_key` (`_1Q` → `1Q`, `_M5` → `M5`). Si no hay sufijo, se asigna `Annual`.

**Lógica UPSERT:** DELETE + INSERT por `(empresa_id, indicador_key, periodo_ano, periodo_mes)`. Ambos campos `modulo` y `period_key` se persisten en la BD.

**Seguridad:** Valida que `empresa_id` exista antes de escribir (Protocolo Anti-Mapping-Error).

### 3.2 `DELETE /api/insights/{empresa_id}` (Limpieza de Insights)
Eliminación masiva por empresa, opcionalmente filtrada por `periodo_ano`.

---

## 4. Especificación de Endpoints de Consulta y Seguridad

### 4.1 `POST /api/auth/login` (Identidad y Sesión)
Valida credenciales contra la tabla `public.usuarios`.
- **Payload**: `{"usuario": "email", "password": "..."}`.
- **Seguridad**: Si el usuario no existe durante la carga de datos, el Worker lo crea dinámicamente con una clave aleatoria (Self-Provisioning).

### 4.2 `GET /api/indicadores/{empresa_id}` (Feed de Visualización)
Este endpoint extrae la serie temporal de indicadores. Soporta filtros avanzados para optimizar la carga del dashboard.

**Parámetros de Query:**
- `modulo` (opcional): Filtro por categoría contable (`liquidez`, `rentabilidad`, etc.).
- `periodo_ano` (opcional): Año específico.

### 4.3 `GET /api/insights/{empresa_id}` (Inteligencia Narrativa)
Extrae los hallazgos de IA. **Nota Crítica**: A partir de v2.2-perf, el filtrado por módulo utiliza **match estricto** (`AND modulo = $X`) en lugar del match amplio anterior (`OR modulo IS NULL`). Esto requiere que todos los insights tengan `modulo` correctamente asignado en el momento de la inyección.

**Parámetros de Query:**
- `modulo` (altamente recomendado): Filtro estricto por pestaña (`liquidez`, `actividad`, `rentabilidad`, `solvencia`, `estructura`).
- `periodo_ano` (opcional): Filtro temporal anual.
- `periodo_mes` (opcional): Filtro por mes específico.
- `indicador_key` (opcional): Filtro por indicador específico.

**Columnas retornadas (v2.2):** `id, empresa_id, indicador_key, periodo_ano, periodo_mes, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, modulo, period_key`.

**Optimización de Red (Audit-GZip):**
Tanto indicadores como insights se sirven comprimidos mediante **GZip** si el cliente envía la cabecera `Accept-Encoding: gzip`.
- **Umbral de compresión:** 500 bytes.
- **Header de respuesta esperado:** `Content-Encoding: gzip`.

---

## 5. Esquemas de Datos y Seguridad (Data Integrity)

### 5.1 Autenticación de Auditoría
El sistema implementa una separación clara de privilegios para proteger el acceso a los datos sensibles.

- **Infraestructura (X-API-KEY)**: Utilizada por NocoDB para disparar cálculos. Se requiere la cabecera `xc-token` o un secreto compartido configurado en las variables de entorno del Worker.
- **Frontend (Simulated JWT / Auth.js)**: Para el entorno de auditoría, el dashboard utiliza `auth.js` para gestionar la identidad y el `empresa_id`. Asegura que un usuario de la "Empresa A" sea redirigido a una sesión que solo inyecta su ID en las peticiones de datos, garantizando aislamiento preventivo (Multi-tenant Isolation). En producción, este mecanismo evoluciona a un flujo JWT estándar.

### 5.2 Esquema de `insights_ai` (v2.2-perf)
```sql
CREATE TABLE insights_ai (
    id SERIAL PRIMARY KEY,
    empresa_id INT NOT NULL,
    indicador_key VARCHAR NOT NULL,
    periodo_ano INT NOT NULL,
    periodo_mes INT DEFAULT 12,
    tipo VARCHAR(10),           -- success | warning | danger
    analisis_positivo TEXT,
    analisis_negativo TEXT,
    recomendacion TEXT,
    metodologia VARCHAR,
    modulo VARCHAR(30),         -- liquidez|actividad|rentabilidad|solvencia|estructura
    period_key VARCHAR(10),     -- Annual|1Q|2Q|3Q|4Q|M1-M12
    UNIQUE (empresa_id, indicador_key, periodo_ano, periodo_mes)
);
```

### 5.3 Ejemplo de Respuesta (Indicador Atomizado)
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

## 6. Protocolo de Errores y Status Codes

| Código HTTP | Significado Semántico | Acción de Auditoría |
| :--- | :--- | :--- |
| **200 OK** | Insight inyectado / Datos retornados. | Verificar en Dashboard. |
| **202 Accepted** | Proceso asíncrono iniciado. | Verificar logs en NocoDB pasados 5s. |
| **400 Bad Request** | Payload malformado o faltan archivos. | Revisar mapeo de campos en el Hook. |
| **403 Forbidden** | Error de autenticación/token. | Validar API Keys en el contenedor. |
| **422 Unprocessable** | `empresa_id` no existe (Anti-Mapping-Error) o error de lógica PUC. | Verificar con `GET /api/empresas`. |
| **503 Unavailable** | DB pool no disponible. | Verificar conectividad PostgreSQL. |

---

## 7. Migración Automática (Auto-Migration Hook)

Al iniciar, el Worker ejecuta una migración SQL que:
1. Crea columnas `modulo` y `period_key` si no existen.
2. Clasifica insights sin módulo usando el catálogo (`indicador_catalogo`) — match directo y match con sufijo.
3. Aplica fallbacks ILIKE **solo a registros con `modulo IS NULL`** — nunca sobreescribe un módulo ya asignado.
4. Asigna `'general'` solo a registros verdaderamente inclasificables.

> [!IMPORTANT]
> **Certificación de Contrato**: La API v2.2-perf ha sido sincronizada con el motor de cálculo y la estructura de PostgreSQL. Los campos `modulo` y `period_key` se persisten en cada inyección, eliminando el bug sistémico de reclasificación entre módulos.

