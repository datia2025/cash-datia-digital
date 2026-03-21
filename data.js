// Datos de Liquidez consolidados
let liquidityData = [];

// Configuración de indicadores con metadatos
const indicators = {
    razon: {
        field: "razon",
        unit: "x",
        scaleMin: 0,
        scaleMax: 5
    },
    capital: {
        field: "capital",
        unit: " MM COP",
        scaleMin: 0,
        formatValue: (v) => (v / 1000000).toFixed(1) + " MM"
    },
    prueba: {
        field: "prueba",
        unit: "x",
        scaleMin: 0,
        scaleMax: 5
    },
    efectivo: {
        field: "efectivo",
        unit: "x",
        scaleMin: 0,
        scaleMax: 5
    }
};
