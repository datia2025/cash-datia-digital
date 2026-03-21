// ============================================================================
// REPOSITORIO DE HALLAZGOS DE AUDITORÍA FINANCIERA (AUDIT INSIGHTS)
// Centraliza nombres, definiciones, fórmulas y objetivos.
// ============================================================================

const indicatorMetadata = {
    razon: {
        name: { es: "Razón Corriente", en: "Current Ratio" },
        definition: {
            es: "Capacidad de cubrir deudas de corto plazo con activos corrientes.",
            en: "Ability to cover short-term debts with current assets."
        },
        formula: "Activo Corriente / Pasivo Corriente",
        target: "1.50 - 2.00 x"
    },
    capital: {
        name: { es: "Capital de Trabajo", en: "Working Capital" },
        definition: {
            es: "Recursos disponibles para financiar las operaciones diarias después de cubrir obligaciones de corto plazo.",
            en: "Resources available to finance daily operations after covering short-term obligations."
        },
        formula: "Activo Corriente - Pasivo Corriente",
        target: "> 0 MM COP"
    },
    prueba: {
        name: { es: "Prueba Ácida", en: "Acid Test (Quick Ratio)" },
        definition: {
            es: "Capacidad de cubrir deudas de corto plazo sin depender de la venta de inventarios.",
            en: "Ability to cover short-term debts without relying on inventory sales."
        },
        formula: "(Activo Corriente - Inventarios) / Pasivo Corriente",
        target: "1.00 - 1.50 x"
    },
    efectivo: {
        name: { es: "Ratio de Efectivo", en: "Cash Ratio" },
        definition: {
            es: "Capacidad de cubrir deudas de corto plazo únicamente con efectivo y equivalentes.",
            en: "Ability to cover short-term debts using only cash and cash equivalents."
        },
        formula: "Efectivo y Equivalentes / Pasivo Corriente",
        target: "0.50 - 1.00 x"
    }
};

const auditRepository = {};
