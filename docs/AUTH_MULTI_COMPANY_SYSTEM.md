# 🔐 Sistema de Autenticación y Multi-Empresa (Autogestionable)
**Proyecto**: Liquidity Dashboard — Suite de Inteligencia Financiera
**Versión**: 2.0 (Modelo Self-Service)
**Estado**: Operativo - Producción

---

## 1. Introducción
Este documento detalla el modelo de **Autogestión de Accesos** implementado en el Liquidity Dashboard. A diferencia de las versiones previas, el sistema ahora integra la creación de identidades directamente en el flujo de procesamiento de datos financieros, permitiendo un escalamiento masivo sin intervención manual.

## 2. Flujo de Autoprovisionamiento (Self-Service)

El ciclo de vida del acceso de un usuario se activa de forma reactiva ante la carga de información:

1.  **Registro de Identidad**: El usuario registra su correo electrónico en el formulario de carga de NocoDB al subir sus estados financieros.
2.  **Detección en el Worker**: Durante el procesamiento, el motor verifica en PostgreSQL si el correo ya posee un usuario activo.
3.  **Generación Dinámica**: 
    - Si el usuario es nuevo: El sistema genera una **contraseña aleatoria de 8 caracteres**, crea el perfil en la tabla `usuarios` y vincula al nuevo cliente con su `empresa_id` único.
    - Si el usuario ya existe: El sistema mantiene las credenciales actuales.
4.  **Notificación de Credenciales**: Al finalizar el análisis, el sistema envía un email automátizado incluyendo:
    - Confirmación del éxito del cálculo.
    - **Bloque de Acceso**: Usuario (email) y contraseña temporal.
    - Enlace directo al portal de login.
5.  **Aprovisionamiento de Esquema (Self-Healing)**: El Worker verifica y crea la tabla `public.usuarios` automáticamente si no existe en la base de datos PostgreSQL, eliminando errores de despliegue inicial.

## 3. Componentes Técnicos

### 3.1 Base de Datos de Usuarios (`usuarios`)
Ubicación: PostgreSQL (Schema: `liquidity`)

| Columna | Tipo | Función |
| :--- | :--- | :--- |
| `id` | SERIAL | Identificador interno. |
| `empresa_id` | INT | FK que garantiza que el usuario solo vea SU empresa. |
| `email` | VARCHAR | Nombre de usuario único. |
| `password` | VARCHAR | Clave de acceso (Gestionada por el Worker). |
| `nombre` | VARCHAR | Razón social o Alias (extraído del formulario). |
| `rol` | VARCHAR | Nivel de permisos (predeterminado: 'Analista Financiero'). |
| `initials` | VARCHAR | Siglas generadas para la interfaz de usuario. |

### 3.2 Servicio de Validación (`/api/auth/login`)
Ubicación: `Python Worker / main.py`

Actúa como el núcleo de seguridad procesando peticiones `POST` asíncronas desde el frontend. Valida el par `email/password` contra la tabla relacional y devuelve un objeto de sesión enriquecido si los datos son correctos.

### 3.3 Módulo Cliente (`auth.js`)
Implementa una lógica de **doble validación**:
1. Intenta validar asíncronamente contra la API del Worker (Producción).
2. Mantiene una constante `AUTH_USERS` (Local Fallback) para asegurar acceso administrativo en caso de fallos de red.

---

## 4. Directorio de Acceso Administrativo

| Usuario | Contraseña | Rol | Uso |
| :--- | :--- | :--- | :--- |
| `admin` | `datia2026` | Superusuario | Acceso Global de Auditoría (Local) |
| `admin@datia.digital` | `datia2026` | Superusuario | Acceso Global de Auditoría (DB) |

---

## 5. Procedimiento para Soporte Técnico

Si un cliente pierde su acceso o requiere un reset:
1.  Localice al usuario en la tabla `usuarios` de PostgreSQL.
2.  Actualice el campo `password` con una nueva clave.
3.  El sistema reflejará el cambio de forma inmediata en el próximo login.
4.  Alternativamente, el cliente puede volver a realizar una carga; el sistema le enviará un recordatorio de que su cuenta ya existe.

---

> [!IMPORTANT]
> **Aislamiento Multi-Tenant**: El sistema garantiza que no existe "leakage" de datos entre empresas. El `empresa_id` se asigna a la sesión de forma inmutable desde el backend hacia el `start.html`, filtrando todos los indicadores de forma automática.

