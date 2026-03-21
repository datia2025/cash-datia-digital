// Dashboard de Solvencia - Datos Consolidados
let solvencyData = [];

// Configuración estática de indicadores de Solvencia (Fallback local)
const solvencyIndicatorsStatic = {
    solvencia_total: {
        field: "solvencia_total",
        name: "Solvencia Total",
        unit: "x",
        scaleMin: 0,
        scaleMax: 10
    },
    pasivo_corriente_ratio: {
        field: "pasivo_corriente_ratio",
        name: "Ratio Pasivo Corriente",
        unit: "%",
        scaleMin: 0,
        scaleMax: 100
    },
    patrimonio_relativo: {
        field: "patrimonio_relativo",
        name: "Patrimonio Relativo",
        unit: "$",
        scaleMin: 0,
        scaleMax: 50000000
    },
    ingresos_totales: {
        field: "ingresos_totales",
        name: "Ingresos Totales",
        unit: "$",
        scaleMin: 0,
        scaleMax: 100000000
    },
    costos_gastos_totales: {
        field: "costos_gastos_totales",
        name: "Costos y Gastos Totales",
        unit: "$",
        scaleMin: 0,
        scaleMax: 100000000
    }
};
