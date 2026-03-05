// Datos de Actividad consolidados (Rotación y Ciclos)
// Incluye: Ciclo Efectivo, DSO, DIO, DPO, Rotación Activos, Rotación Cartera, Rotación Inventarios, Rotación Proveedores
let activityData = [
    // 2023
    { year: 2023, quarter: "1Q", period: 1, ciclo_efectivo: 258.55, dso: 280.61, dio: 0, dpo: 22.06, rotacion_activos: 0.06, rotacion_cartera: 0.11, rotacion_inventarios: 0, rotacion_proveedores: 1.41 },
    { year: 2023, quarter: "1Q", period: 2, ciclo_efectivo: 27.22, dso: 57.36, dio: 0, dpo: 30.13, rotacion_activos: 0.35, rotacion_cartera: 0.49, rotacion_inventarios: 0, rotacion_proveedores: 0.93 },
    { year: 2023, quarter: "1Q", period: 3, ciclo_efectivo: 69.09, dso: 91.43, dio: 0, dpo: 22.34, rotacion_activos: 0.26, rotacion_cartera: 0.34, rotacion_inventarios: 0, rotacion_proveedores: 1.39 },
    { year: 2023, quarter: "2Q", period: 4, ciclo_efectivo: 74.23, dso: 86.67, dio: 0, dpo: 12.44, rotacion_activos: 0.25, rotacion_cartera: 0.35, rotacion_inventarios: 0, rotacion_proveedores: 2.41 },
    { year: 2023, quarter: "2Q", period: 5, ciclo_efectivo: 62.19, dso: 87.92, dio: 0, dpo: 25.73, rotacion_activos: 0.19, rotacion_cartera: 0.35, rotacion_inventarios: 0, rotacion_proveedores: 1.20 },
    { year: 2023, quarter: "2Q", period: 6, ciclo_efectivo: 96.17, dso: 123.43, dio: 0, dpo: 27.26, rotacion_activos: 0.09, rotacion_cartera: 0.24, rotacion_inventarios: 0, rotacion_proveedores: 1.10 },
    { year: 2023, quarter: "3Q", period: 7, ciclo_efectivo: 19.25, dso: 33.08, dio: 0, dpo: 13.83, rotacion_activos: 0.36, rotacion_cartera: 0.94, rotacion_inventarios: 0, rotacion_proveedores: 2.24 },
    { year: 2023, quarter: "3Q", period: 8, ciclo_efectivo: 90.23, dso: 117.51, dio: 0, dpo: 27.28, rotacion_activos: 0.11, rotacion_cartera: 0.26, rotacion_inventarios: 0, rotacion_proveedores: 1.14 },
    { year: 2023, quarter: "3Q", period: 9, ciclo_efectivo: 55.56, dso: 59.53, dio: 0, dpo: 3.97, rotacion_activos: 0.21, rotacion_cartera: 0.50, rotacion_inventarios: 0, rotacion_proveedores: 7.55 },
    { year: 2023, quarter: "4Q", period: 10, ciclo_efectivo: 135.63, dso: 150.58, dio: 0, dpo: 14.96, rotacion_activos: 0.09, rotacion_cartera: 0.21, rotacion_inventarios: 0, rotacion_proveedores: 2.07 },
    { year: 2023, quarter: "4Q", period: 11, ciclo_efectivo: 58.65, dso: 114.13, dio: 0, dpo: 55.48, rotacion_activos: 0.11, rotacion_cartera: 0.26, rotacion_inventarios: 0, rotacion_proveedores: 0.54 },
    { year: 2023, quarter: "4Q", period: 12, ciclo_efectivo: 135.20, dso: 141.86, dio: 0, dpo: 6.66, rotacion_activos: -2.10, rotacion_cartera: 0.22, rotacion_inventarios: 0, rotacion_proveedores: 4.65 },

    // 2024
    { year: 2024, quarter: "1Q", period: 1, ciclo_efectivo: 11.73, dso: 99.46, dio: 0, dpo: 87.73, rotacion_activos: 0.15, rotacion_cartera: 0.31, rotacion_inventarios: 0, rotacion_proveedores: 0.35 },
    { year: 2024, quarter: "1Q", period: 2, ciclo_efectivo: 43.55, dso: 74.08, dio: 0, dpo: 30.53, rotacion_activos: 0.20, rotacion_cartera: 0.39, rotacion_inventarios: 0, rotacion_proveedores: 0.95 },
    { year: 2024, quarter: "1Q", period: 3, ciclo_efectivo: 177.78, dso: 237.44, dio: 0, dpo: 59.66, rotacion_activos: 0.06, rotacion_cartera: 0.13, rotacion_inventarios: 0, rotacion_proveedores: 0.52 },
    { year: 2024, quarter: "2Q", period: 4, ciclo_efectivo: 47.72, dso: 57.64, dio: 0, dpo: 9.91, rotacion_activos: 0.24, rotacion_cartera: 0.52, rotacion_inventarios: 0, rotacion_proveedores: 3.03 },
    { year: 2024, quarter: "2Q", period: 5, ciclo_efectivo: 81.73, dso: 91.74, dio: 0, dpo: 10.00, rotacion_activos: 0.17, rotacion_cartera: 0.34, rotacion_inventarios: 0, rotacion_proveedores: 3.10 },
    { year: 2024, quarter: "2Q", period: 6, ciclo_efectivo: 55.17, dso: 73.82, dio: 0, dpo: 18.66, rotacion_activos: 0.24, rotacion_cartera: 0.41, rotacion_inventarios: 0, rotacion_proveedores: 1.61 },
    { year: 2024, quarter: "3Q", period: 7, ciclo_efectivo: 22.08, dso: 82.41, dio: 0, dpo: 60.33, rotacion_activos: 0.23, rotacion_cartera: 0.38, rotacion_inventarios: 0, rotacion_proveedores: 0.51 },
    { year: 2024, quarter: "3Q", period: 8, ciclo_efectivo: 0.82, dso: 48.87, dio: 0, dpo: 48.05, rotacion_activos: 0.39, rotacion_cartera: 0.63, rotacion_inventarios: 0, rotacion_proveedores: 0.65 },
    { year: 2024, quarter: "3Q", period: 9, ciclo_efectivo: -39.72, dso: 84.56, dio: 0, dpo: 124.28, rotacion_activos: 0.14, rotacion_cartera: 0.35, rotacion_inventarios: 0, rotacion_proveedores: 0.24 },
    { year: 2024, quarter: "4Q", period: 10, ciclo_efectivo: -63.35, dso: 99.29, dio: 0, dpo: 162.64, rotacion_activos: 0.07, rotacion_cartera: 0.31, rotacion_inventarios: 0, rotacion_proveedores: 0.19 },
    { year: 2024, quarter: "4Q", period: 11, ciclo_efectivo: -165.31, dso: 51.51, dio: 0, dpo: 216.82, rotacion_activos: 0.13, rotacion_cartera: 0.58, rotacion_inventarios: 0, rotacion_proveedores: 0.14 },
    { year: 2024, quarter: "4Q", period: 12, ciclo_efectivo: -100.09, dso: 40.76, dio: 0, dpo: 140.85, rotacion_activos: -0.79, rotacion_cartera: 0.76, rotacion_inventarios: 0, rotacion_proveedores: 0.22 },

    // 2025
    { year: 2025, quarter: "1Q", period: 1, ciclo_efectivo: 63.65, dso: 111.41, dio: 0, dpo: 47.76, rotacion_activos: 0.07, rotacion_cartera: 0.28, rotacion_inventarios: 0, rotacion_proveedores: 0.65 },
    { year: 2025, quarter: "1Q", period: 2, ciclo_efectivo: -98.93, dso: 80.04, dio: 0, dpo: 178.98, rotacion_activos: 0.08, rotacion_cartera: 0.35, rotacion_inventarios: 0, rotacion_proveedores: 0.16 },
    { year: 2025, quarter: "1Q", period: 3, ciclo_efectivo: 40.44, dso: 141.17, dio: 0, dpo: 100.73, rotacion_activos: 0.06, rotacion_cartera: 0.22, rotacion_inventarios: 0, rotacion_proveedores: 0.31 },
    { year: 2025, quarter: "2Q", period: 4, ciclo_efectivo: 22.15, dso: 95.08, dio: 0, dpo: 72.93, rotacion_activos: 0.08, rotacion_cartera: 0.32, rotacion_inventarios: 0, rotacion_proveedores: 0.41 },
    { year: 2025, quarter: "2Q", period: 5, ciclo_efectivo: 116.13, dso: 167.96, dio: 0, dpo: 51.84, rotacion_activos: 0.04, rotacion_cartera: 0.18, rotacion_inventarios: 0, rotacion_proveedores: 0.60 },
    { year: 2025, quarter: "2Q", period: 6, ciclo_efectivo: 53.60, dso: 99.44, dio: 0, dpo: 45.84, rotacion_activos: 0.07, rotacion_cartera: 0.30, rotacion_inventarios: 0, rotacion_proveedores: 0.65 },
    { year: 2025, quarter: "3Q", period: 7, ciclo_efectivo: 1.46, dso: 75.19, dio: 0, dpo: 73.73, rotacion_activos: 0.09, rotacion_cartera: 0.41, rotacion_inventarios: 0, rotacion_proveedores: 0.42 },
    { year: 2025, quarter: "3Q", period: 8, ciclo_efectivo: 17.52, dso: 73.75, dio: 0, dpo: 56.23, rotacion_activos: 0.09, rotacion_cartera: 0.42, rotacion_inventarios: 0, rotacion_proveedores: 0.55 },
    { year: 2025, quarter: "3Q", period: 9, ciclo_efectivo: 127.16, dso: 127.16, dio: 0, dpo: 0, rotacion_activos: 0.05, rotacion_cartera: 0.24, rotacion_inventarios: 0, rotacion_proveedores: -0.05 },
    { year: 2025, quarter: "4Q", period: 10, ciclo_efectivo: 130.00, dso: 168.45, dio: 0, dpo: 38.46, rotacion_activos: 0.04, rotacion_cartera: 0.18, rotacion_inventarios: 0, rotacion_proveedores: 0.81 },
    { year: 2025, quarter: "4Q", period: 11, ciclo_efectivo: 151.94, dso: 252.03, dio: 0, dpo: 100.09, rotacion_activos: 0.02, rotacion_cartera: 0.12, rotacion_inventarios: 0, rotacion_proveedores: 0.30 },
    { year: 2025, quarter: "4Q", period: 12, ciclo_efectivo: 64.48, dso: 64.48, dio: 0, dpo: 0, rotacion_activos: 0.09, rotacion_cartera: 0.48, rotacion_inventarios: 0, rotacion_proveedores: 0 }
];

// Configuración de indicadores de Actividad
const activityIndicators = {
    ciclo_efectivo: {
        field: "ciclo_efectivo",
        name: "Ciclo de Conversión de Efectivo",
        unit: " días",
        scaleMin: -200,
        scaleMax: 300
    },
    dso: {
        field: "dso",
        name: "Días de Cartera (DSO)",
        unit: " días",
        scaleMin: 0,
        scaleMax: 300
    },
    dio: {
        field: "dio",
        name: "Días de Inventario (DIO)",
        unit: " días",
        scaleMin: 0,
        scaleMax: 50
    },
    dpo: {
        field: "dpo",
        name: "Días de Proveedores (DPO)",
        unit: " días",
        scaleMin: 0,
        scaleMax: 250
    },
    rotacion_activos: {
        field: "rotacion_activos",
        name: "Rotación de Activos Totales",
        unit: " x",
        scaleMin: -3,
        scaleMax: 1
    },
    rotacion_cartera: {
        field: "rotacion_cartera",
        name: "Rotación de Cartera",
        unit: " x",
        scaleMin: 0,
        scaleMax: 1.5
    },
    rotacion_inventarios: {
        field: "rotacion_inventarios",
        name: "Rotación de Inventarios",
        unit: " x",
        scaleMin: 0,
        scaleMax: 1
    },
    rotacion_proveedores: {
        field: "rotacion_proveedores",
        name: "Rotación de Proveedores",
        unit: " x",
        scaleMin: -1,
        scaleMax: 10
    }
};
