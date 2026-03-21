/**
 * auth.js — Sistema de Autenticación Multi-Empresa (Autogestionable)
 * Liquidity Dashboard · Datia Digital © 2026
 *
 * Este módulo ahora soporta la validación dinámica contra la API de usuarios.
 */

// URL del Worker (detectada desde api.js si estuviera disponible, o hardcodeada)
const AUTH_CONFIG = {
    API_URL: 'https://datia-liquidity-worker.coaba7.easypanel.host/api/auth/login'
};

// Usuarios Legacy / Desarrollo (Siguen funcionando como fallback o para admins)
const AUTH_USERS = [
    {
        usuario:   "fernando@datia.digital",
        password:  "D@tia2026!",
        empresa:   3099,
        nombre:    "CARLOS TAMAYO Y ASOCIADOS S.A.S.",
        rol:       "Dirección General",
        initials:  "CT"
    },
    {
        usuario:   "admin",
        password:  "datia2026",
        empresa:   1,
        nombre:    "Administrador Datia",
        rol:       "Superusuario",
        initials:  "AD"
    }
];

/**
 * Valida credenciales contra la API de Autogestión o el fallback local.
 */
async function authenticateUser(usuario, password) {
    // 1. Intentar validación vía API (Autogestión activa)
    try {
        const response = await fetch(AUTH_CONFIG.API_URL, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ usuario, password })
        });

        if (response.ok) {
            const data = await response.json();
            return data.user; // Retorna {empresa, nombre, rol, initials}
        }
    } catch (error) {
        console.warn("Auth API no disponible, intentando fallback local...", error);
    }

    // 2. Fallback a usuarios locales (Admin / Demo)
    const found = AUTH_USERS.find(
        u => u.usuario.toLowerCase() === usuario.toLowerCase() &&
             u.password === password
    );
    
    if (found) {
        return {
            empresa:  found.empresa,
            nombre:   found.nombre,
            rol:      found.rol,
            initials: found.initials
        };
    }

    return null;
}

/**
 * Almacena la sesión en localStorage.
 */
function saveSession(user) {
    const payload = {
        ...user,
        ts: Date.now()
    };
    localStorage.setItem('df_session', JSON.stringify(payload));
}

/**
 * Recupera la sesión activa.
 */
function getSession() {
    try {
        const raw = localStorage.getItem('df_session');
        if (!raw) return null;

        const session = JSON.parse(raw);
        // Expira en 24 horas
        if (Date.now() - session.ts > 24 * 60 * 60 * 1000) {
            localStorage.removeItem('df_session');
            return null;
        }
        return session;
    } catch (_) {
        localStorage.removeItem('df_session');
        return null;
    }
}

/**
 * Cierra la sesión activa.
 */
function logout() {
    localStorage.removeItem('df_session');
}
