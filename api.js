// URL base de la API del Worker (FastAPI)
const API_CONFIG = {
    BASE_URL: 'https://datia-liquidity-worker.coaba7.easypanel.host'
};

// Metadatos Globales de Empresas
// Metadatos Globales de Empresas (Neutralizados para evitar hardcode)
const companiesMetadata = {
    1: {
        name: "MAS CONSULTA SAS",
        sector: "Consultoría / Servicios Profesionales",
        description: "Firma de consultoría empresarial especializada en estrategia, finanzas y optimización operativa.",
        risks: {
            actividad: [
                { icon: 'clock', text: 'Ciclo de conversión de efectivo elevado' },
                { icon: 'users', text: 'Dependencia de consultores clave' }
            ],
            liquidez: [
                { icon: 'alert-circle', text: 'Concentración de caja en cuentas por cobrar' }
            ],
            rentabilidad: [
                { icon: 'trending-down', text: 'Presión en márgenes por costos de nómina' }
            ],
            solvencia: [],
            estructura: []
        }
    },
    3104: {
        name: "MAS CONSULTA SAS",
        sector: "Consultoría / Servicios Profesionales",
        description: "Firma de consultoría empresarial especializada en estrategia, finanzas y optimización operativa.",
        risks: {
            actividad: [],
            liquidez: [],
            rentabilidad: [],
            solvencia: [],
            estructura: []
        }
    },
    3099: {
        name: "CARLOS TAMAYO Y ASOCIADOS S.A.S",
        sector: "Consultoría / Servicios Profesionales",
        description: "Firma de consultoría técnica y servicios profesionales especializada en asesoría empresarial.",
        risks: {
            actividad: [],
            liquidez: [],
            rentabilidad: [],
            solvencia: [],
            estructura: []
        }
    },
    3105: {
        name: "COMPULEARNING SAS",
        sector: "Educación / Formación Profesional",
        description: "Líder en soluciones de e-learning y capacitación corporativa tecnológica.",
        risks: {
            actividad: [
                { icon: 'book', text: 'Caducidad de contenidos educativos' }
            ],
            liquidez: [],
            rentabilidad: [],
            solvencia: [],
            estructura: []
        }
    }
};

const urlParams = new URLSearchParams(window.location.search);
const empresaId = parseInt(urlParams.get('empresa')) || 1;
let currentCompany = companiesMetadata[empresaId] || companiesMetadata[1];

class DashboardAPI {
    /**
     * Fetch all companies from the API to get the current one's metadata.
     */
    static async fetchCompanyMetadata(id) {
        try {
            const response = await this.fetchWithRetry(`${API_CONFIG.BASE_URL}/api/empresas`);
            if (!response.ok) throw new Error('Failed to fetch companies');
            const data = await response.json();
            const found = data.empresas.find(e => parseInt(e.id) === parseInt(id));
            if (found) {
                return {
                    name: found.razon_social,
                    sector: "Consultoría / Servicios Profesionales", // Default or map if available
                    description: "Firma de servicios profesionales consultada vía API."
                };
            }
        } catch (error) {
            console.error("Error fetching company metadata:", error);
        }
        return companiesMetadata[id] || companiesMetadata[1];
    }
    /**
     * Helper to map a month to a quarter.
     */
    static getQuarter(month) {
        if (month <= 3) return "1Q";
        if (month <= 6) return "2Q";
        if (month <= 9) return "3Q";
        return "4Q";
    }


    /**
     * Transforms the API response (grouped by indicator_key) into an array of rows 
     * grouped by {year, period} exactly as data_*.js expects it.
     */
    static transformIndicadoresToRows(indicadoresList) {
        const rowsMap = {};

        indicadoresList.forEach((ind) => {
            const rawKey = ind.indicador_key;
            
            // Map DB indicador_key → short key used in app_*.js
            const keyMap = {
                // ── Liquidez ──────────────────────────────────────────
                'razon_corriente':          'razon',
                'capital_trabajo':          'capital',
                'prueba_acida':             'prueba',
                'ratio_efectivo':           'efectivo',

                // ── Actividad (claves reales que devuelve la API) ─────
                // La BD puede enviar ya el key corto o el largo; cubrimos ambos.
                'ciclo_conversion_efectivo':'ciclo_efectivo',
                'ciclo_efectivo':           'ciclo_efectivo',
                'dso':                      'dso',
                'dias_cartera':             'dso',
                'dio':                      'dio',
                'dias_inventario':          'dio',
                'dpo':                      'dpo',
                'dias_proveedores':         'dpo',
                'rotacion_activos':         'rotacion_activos',
                'rotacion_activos_totales': 'rotacion_activos',
                'rotacion_cartera':         'rotacion_cartera',
                'rotacion_inventarios':     'rotacion_inventarios',
                'rotacion_proveedores':     'rotacion_proveedores',

                // ── Rentabilidad ──────────────────────────────────────
                // 'ebitda' = valor absoluto en $ guardado en DB (error histórico mapeaba Utilidad a ebitda)
                // 'margen_ebitda' = porcentaje correcto → key 'ebitda' en app_rentabilidad
                'margen_ebitda':            'ebitda',
                'ebitda':                   'utilidad', // Fallback para datos guardados con el slug 'ebitda'
                'margen_neto':              'neto',
                'margen_operacional':       'operativo',
                'margen_bruto':             'bruto',
                'patrimonio_relativo':      'patrimonio',
                'roa':                      'roa',
                'roe':                      'roe',
                'utilidad_acumulada':       'utilidad',

                // ── Solvencia ─────────────────────────────────────────
                'cobertura_intereses':      'intereses',
                'endeudamiento_total':      'endeudamiento_total',
                // Fallbacks para slugs incorrectos de DB (error histórico en worker)
                'costos_gastos_totales':    'cargos_fijos',  
                'utilidad_neta':            'servicio_deuda',
                'ebit':                     'deuda_ebitda',   
                'utilidad_operacional':     'solvencia_patrimonial',
                // Mapeo corregido
                'cargos_fijos':             'cargos_fijos',
                'servicio_deuda':           'servicio_deuda',
                'deuda_ebitda':             'deuda_ebitda',
                'solvencia_patrimonial':    'solvencia_patrimonial',

                // ── Estructura ────────────────────────────────────────
                'deuda_patrimonio':         'deuda_patrimonio',
                // Fallbacks para slugs incorrectos de DB (error histórico en worker)
                'apalancamiento':           'multiplicador_capital',
                'autonomia_financiera':     'propiedad_autonomia',
                'endeudamiento_cp':         'capitalizacion',
                'solvencia_total':          'cobertura_fijos',
                'pasivo_corriente_ratio':   'estructura_deuda',
                'ingresos_totales':         'deuda_tangibles',
                // Mapeo corregido
                'cobertura_fijos':          'cobertura_fijos',
                'estructura_deuda':         'estructura_deuda',
                'multiplicador_capital':    'multiplicador_capital',
                'capitalizacion':           'capitalizacion',
                'deuda_tangibles':          'deuda_tangibles',
                'propiedad_autonomia':      'propiedad_autonomia'
            };
            const key = keyMap[rawKey] || rawKey;

            const dataPoints = ind.data || [];
            dataPoints.forEach((point) => {
                const year = point.year;
                const month = point.month;
                const rowKey = `${year}-${month}`;

                if (!rowsMap[rowKey]) {
                    rowsMap[rowKey] = {
                        year: year,
                        quarter: this.getQuarter(month),
                        period: month
                    };
                }

                rowsMap[rowKey][key] = point.valor;
            });
        });

        // Convert map to sorted array
        return Object.values(rowsMap).sort((a, b) => {
            if (a.year !== b.year) return a.year - b.year;
            return a.period - b.period;
        });
    }

    /**
     * BLINDAJE NIVEL 1: Verificación de Sesión vs URL
     * Asegura que el usuario solo pueda ver datos de su propia empresa.
     */
    static verifySession() {
        // Buscar la sesión en localStorage directamente si getSession no está definido localmente
        let session = null;
        if (typeof getSession === 'function') {
            session = getSession();
        } else {
            const raw = localStorage.getItem('df_session');
            if (raw) session = JSON.parse(raw);
        }

        if (!session) return true; // Si no hay sesión, permitimos que el login lo maneje

        const urlParams = new URLSearchParams(window.location.search);
        const urlEmpresaId = urlParams.get('empresa');

        if (urlEmpresaId && parseInt(urlEmpresaId) !== parseInt(session.empresa)) {
            // Permitir AdminID 1 si fuera necesario (opcional)
            if (parseInt(session.empresa) !== 1) {
                console.error("[SEGURIDAD] Violación detectada. ID URL != ID Sesión.");
                alert("Acceso no autorizado: No tiene permisos para ver los datos de esta empresa.");
                
                // Forzar salida
                localStorage.removeItem('df_session');
                if (window.parent) {
                    window.parent.location.href = 'login.html';
                } else {
                    window.location.href = 'login.html';
                }
                return false;
            }
        }
        return true;
    }

    /**
     * Helper with exponential backoff retry for spotty backend connections.
     */
    static async fetchWithRetry(url, options = {}, retries = 3, backoff = 1000) {
        for (let i = 0; i < retries; i++) {
            try {
                const response = await fetch(url, options);
                if (response.ok) return response;
                // Retry only on 5xx or 429
                if (response.status < 500 && response.status !== 429) {
                    return response;
                }
                console.warn(`[API] Retrying fetch (${i + 1}/${retries}) due to status ${response.status}`);
            } catch (error) {
                console.warn(`[API] Retrying fetch (${i + 1}/${retries}) due to network error:`, error);
                if (i === retries - 1) throw error;
            }
            await new Promise(res => setTimeout(res, backoff * Math.pow(1.5, i)));
        }
        throw new Error(`Falló la conexión con el servidor luego de múltiples intentos.`);
    }

    /**
     * Fetch all indicators for a specific company and transform them into the legacy row-based format.
     */
    static async getIndicadoresData(empresa_id = 1, modulo = null) {
        if (!this.verifySession()) throw new Error("Acceso no autorizado");
        
        try {
            let url = `${API_CONFIG.BASE_URL}/api/indicadores/${empresa_id}`;
            if (modulo) {
                url += `?modulo=${modulo}`;
            }
            const response = await this.fetchWithRetry(url);
            if (!response.ok) {
                throw new Error(`API returned status ${response.status}`);
            }

            const result = await response.json();
            return this.transformIndicadoresToRows(result.indicadores);
        } catch (error) {
            console.error("API Error - getIndicadoresData:", error);
            throw error;
        }
    }

    /**
     * Fetch Insights AI from the API.
     * Normalized to match frontend expectations (year, period_key).
     */
    static async getInsights(empresaId = 1, modulo = null) {
        try {
            let url = `${API_CONFIG.BASE_URL}/api/insights/${empresaId}`;
            if (modulo) {
                url += `?modulo=${modulo}`;
            }
            const response = await this.fetchWithRetry(url);
            if (!response.ok) {
                throw new Error(`API returned status ${response.status}`);
            }
            const result = await response.json();
            
            // Normalize for frontend: periodo_ano -> year, handle quarterly/monthly descriptors
            if (result.insights) {
                result.insights = result.insights.map(ins => {
                    let extracted = null;
                    let cleanKey = (ins.indicador_key || '');
                    
                    // 1. Detect period from indicador_key suffix
                    if (cleanKey.match(/_(1Q|2Q|3Q|4Q)$/i)) {
                        extracted = cleanKey.slice(-2).toUpperCase();
                        cleanKey = cleanKey.slice(0, -3);
                    } else if (cleanKey.match(/_M(1[0-2]|[1-9])$/i)) {
                        extracted = 'M' + RegExp.$1;
                        cleanKey = cleanKey.replace(/_M(1[0-2]|[1-9])$/i, '');
                    }
                    
                    // 2. Prioritize period_key from DB, then extracted suffix.
                    //    Only fall back to periodo_mes when a suffix was actually detected
                    //    (i.e., key had _M1, _1Q, etc.). Otherwise, treat as 'Annual'.
                    let pKey = ins.period_key || extracted || 'Annual';
                    
                    // 3. Standardize '1' / '1M' / 'M1' / 'M01'
                    if (typeof pKey === 'string' || typeof pKey === 'number') {
                        let sKey = String(pKey).toUpperCase();
                        // Handle '1', '2' ... '12'
                        if (sKey.match(/^([1-9]|1[0-2])$/)) {
                            pKey = 'M' + sKey;
                        }
                        // Standardize '1M' -> 'M1'
                        else if (sKey.match(/^([1-9]|1[0-2])M$/)) {
                            pKey = 'M' + sKey.replace('M', '');
                        }
                        // Standardize 'M01' -> 'M1'
                        else if (sKey.match(/^M0([1-9])$/)) {
                            pKey = 'M' + RegExp.$1;
                        }
                    }

                    const normalized = {
                        ...ins,
                        year: ins.year || ins.periodo_ano,
                        period_key: pKey,
                        indicador_key: cleanKey.toLowerCase()
                    };
                    console.log(`[API] Normalized Insight: ${ins.indicador_key} -> ${normalized.indicador_key} | Period: ${pKey}`);
                    return normalized;
                });
            }
            return result;
        } catch (error) {
            console.error("API Error - getInsights:", error);
            throw error;
        }
    }
}
