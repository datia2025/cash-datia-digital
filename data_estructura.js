// Datos de Estructura de Fondeo (Pasivos y Patrimonio)
let estructuraData = [];

// Configuración de indicadores para Estructura
const estructuraIndicators = {
    endeudamiento_total: {
        field: "endeudamiento_total",
        name: "Endeudamiento Total",
        unit: "%",
        scaleMin: 0,
        scaleMax: 100
    },
    endeudamiento_cp: {
        field: "endeudamiento_cp",
        name: "Endeudamiento CP",
        unit: "%",
        scaleMin: 0,
        scaleMax: 100
    },
    apalancamiento: {
        field: "apalancamiento",
        name: "Apalancamiento",
        unit: "x",
        scaleMin: 0,
        scaleMax: 10
    },
    cobertura_intereses: {
        field: "cobertura_intereses",
        name: "Cobertura de Intereses",
        unit: "x",
        scaleMin: 0,
        scaleMax: 50
    },
    deuda_patrimonio: {
        field: "deuda_patrimonio",
        name: "Deuda / Patrimonio",
        unit: "x",
        scaleMin: 0,
        scaleMax: 10
    },
    autonomia_financiera: {
        field: "autonomia_financiera",
        name: "Autonomía Financiera",
        unit: "%",
        scaleMin: 0,
        scaleMax: 100
    }
};
