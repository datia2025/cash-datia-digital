// Datos de Actividad consolidados (Rotación y Ciclos)
let activityData = [];

const activityIndicatorsStatic = {
    ciclo_efectivo: {
        field: "ciclo_efectivo",
        name: "Ciclo de Conversión de Efectivo",
        unit: " días",
        scaleMin: 0,
        scaleMax: 365
    },
    dso: {
        field: "dso",
        name: "Días de Cartera (DSO)",
        unit: " días",
        scaleMin: 0,
        scaleMax: 365
    },
    dio: {
        field: "dio",
        name: "Días de Inventario (DIO)",
        unit: " días",
        scaleMin: 0,
        scaleMax: 365
    },
    dpo: {
        field: "dpo",
        name: "Días de Pago (DPO)",
        unit: " días",
        scaleMin: 0,
        scaleMax: 365
    },
    rotacion_activos: {
        field: "rotacion_activos",
        name: "Rotación de Activos Totales",
        unit: " x",
        scaleMin: 0,
        scaleMax: 5
    },
    rotacion_cartera: {
        field: "rotacion_cartera",
        name: "Rotación de Cartera",
        unit: " x",
        scaleMin: 0,
        scaleMax: 5
    },
    rotacion_inventarios: {
        field: "rotacion_inventarios",
        name: "Rotación de Inventarios",
        unit: " x",
        scaleMin: 0,
        scaleMax: 5
    },
    rotacion_proveedores: {
        field: "rotacion_proveedores",
        name: "Rotación de Proveedores",
        unit: " x",
        scaleMin: 0,
        scaleMax: 5
    }
};
