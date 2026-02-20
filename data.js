// Datos de Liquidez consolidados de Power BI
// Incluye: Razón Corriente, Capital de Trabajo, Prueba Ácida, Ratio de Efectivo
const liquidityData = [
    // 2023
    { year: 2023, quarter: "1Q", period: 1, razon: 2.3682450166047233, capital: -7780710, prueba: 2.3682450166047233, efectivo: -0.013235947093492021 },
    { year: 2023, quarter: "1Q", period: 2, razon: -0.40758530971680174, capital: -1814514, prueba: -0.40758530971680174, efectivo: 2.7455660823041246 },
    { year: 2023, quarter: "1Q", period: 3, razon: 1.9651164563490038, capital: -1455966, prueba: 1.9651164563490038, efectivo: -0.604047750516873 },
    { year: 2023, quarter: "2Q", period: 4, razon: 55.099405350660284, capital: -8226139.18, prueba: 55.099405350660284, efectivo: -31.453298916188775 },
    { year: 2023, quarter: "2Q", period: 5, razon: 0.5710290158923746, capital: -7662074.67, prueba: 0.5710290158923746, efectivo: 0.6212652163684595 },
    { year: 2023, quarter: "2Q", period: 6, razon: 0.31511028407779446, capital: -9770846.88, prueba: 0.31511028407779446, efectivo: 1.7598094023899065 },
    { year: 2023, quarter: "3Q", period: 7, razon: 0.938524069144135, capital: -1217073.11, prueba: 0.938524069144135, efectivo: 1.1734106522084233 },
    { year: 2023, quarter: "3Q", period: 8, razon: 1.0954652140816281, capital: 1806604.79, prueba: 1.0954652140816281, efectivo: 1.4509312631778213 },
    { year: 2023, quarter: "3Q", period: 9, razon: 1.0151390819013124, capital: 181337.01, prueba: 1.0151390819013124, efectivo: 1.8612795266430109 },
    { year: 2023, quarter: "4Q", period: 10, razon: 0.608787549564446, capital: -8994336.42, prueba: 0.608787549564446, efectivo: 1.1528199695203225 },
    { year: 2023, quarter: "4Q", period: 11, razon: 0.5793391195960657, capital: -6162908.55, prueba: 0.5793391195960657, efectivo: 1.070112673944797 },
    { year: 2023, quarter: "4Q", period: 12, razon: 0.035593053750635956, capital: -8012592.84, prueba: 0.035593053750635956, efectivo: 2.1247778471460688 },
    // 2024
    { year: 2024, quarter: "1Q", period: 1, razon: 0.358297337858903, capital: -3139717.01, prueba: 0.358297337858903, efectivo: 1.6153927257469203 },
    { year: 2024, quarter: "1Q", period: 2, razon: 1.5930321238733534, capital: 2263256.10, prueba: 1.5930321238733534, efectivo: 2.568141218431753 },
    { year: 2024, quarter: "1Q", period: 3, razon: 82.95589786552051, capital: 3375025.83, prueba: 82.95589786552051, efectivo: 399.70687525800736 },
    { year: 2024, quarter: "2Q", period: 4, razon: -2.9370917818569424, capital: 12203622.29, prueba: -2.9370917818569424, efectivo: -4.420468636176811 },
    { year: 2024, quarter: "2Q", period: 5, razon: 6.154770870468422, capital: 7831272.24, prueba: 6.154770870468422, efectivo: 7.219879596742556 },
    { year: 2024, quarter: "2Q", period: 6, razon: 1.1241674539139548, capital: 1025728.96, prueba: 1.1241674539139548, efectivo: 0.3252027708522075 },
    { year: 2024, quarter: "3Q", period: 7, razon: 2.547314452104878, capital: 5687977.44, prueba: 2.547314452104878, efectivo: 2.215294763484105 },
    { year: 2024, quarter: "3Q", period: 8, razon: 5.338425656840483, capital: 20646211.95, prueba: 5.338425656840483, efectivo: 2.3000484458862287 },
    { year: 2024, quarter: "3Q", period: 9, razon: 0.24738239832543146, capital: -73850494.54, prueba: 0.24738239832543146, efectivo: 0.030585486203562058 },
    { year: 2024, quarter: "4Q", period: 10, razon: 0.19188015008570206, capital: -85554930.90, prueba: 0.19188015008570206, efectivo: 0.10642678385741064 },
    { year: 2024, quarter: "4Q", period: 11, razon: 0.3105409432281977, capital: -81825189.08, prueba: 0.3105409432281977, efectivo: 0.055179708931070624 },
    { year: 2024, quarter: "4Q", period: 12, razon: 7.414653971839521, capital: 27942906.24, prueba: 7.414653971839521, efectivo: 0.7711293093256476 },
    // 2025
    { year: 2025, quarter: "1Q", period: 1, razon: -102.155425472203, capital: 23707901.97, prueba: -102.155425472203, efectivo: -29.433230081757145 },
    { year: 2025, quarter: "1Q", period: 2, razon: -89.72423956749547, capital: 31565412.50, prueba: -89.72423956749547, efectivo: -13.403422269614028 },
    { year: 2025, quarter: "1Q", period: 3, razon: 8.632184866757225, capital: 33172161.96, prueba: 8.632184866757225, efectivo: 1.5896082415782247 },
    { year: 2025, quarter: "2Q", period: 4, razon: 8.501302164300558, capital: 36209205.62, prueba: 8.501302164300558, efectivo: 2.041592975097036 },
    { year: 2025, quarter: "2Q", period: 5, razon: 4.5033505736406445, capital: 25919048.75, prueba: 4.5033505736406445, efectivo: 2.027276686995496 },
    { year: 2025, quarter: "2Q", period: 6, razon: 2.2225815825468924, capital: 17399064.65, prueba: 2.2225815825468924, efectivo: 0.13846984213936858 },
    { year: 2025, quarter: "3Q", period: 7, razon: 2.8108551337647194, capital: 21109404.49, prueba: 2.8108551337647194, efectivo: 0.48178773845778905 },
    { year: 2025, quarter: "3Q", period: 8, razon: 2.962334437918785, capital: 21732349.58, prueba: 2.962334437918785, efectivo: 0.45753698573411594 },
    { year: 2025, quarter: "3Q", period: 9, razon: 6.22747393170593, capital: 30812932.12, prueba: 6.22747393170593, efectivo: 1.5317762168667628 },
    { year: 2025, quarter: "4Q", period: 10, razon: 4.959105262936734, capital: 22612382.20, prueba: 4.959105262936734, efectivo: 1.0748521558655117 },
    { year: 2025, quarter: "4Q", period: 11, razon: 5.203879433668637, capital: 20884129.15, prueba: 5.203879433668637, efectivo: 2.004220780367771 },
    { year: 2025, quarter: "4Q", period: 12, razon: 5.588201656582891, capital: 35772029.15, prueba: 5.588201656582891, efectivo: 1.2770579362148011 }
];

// Configuración de indicadores con metadatos
const indicators = {
    razon: {
        field: "razon",
        unit: "x",
        scaleMin: -150,
        scaleMax: 150
    },
    capital: {
        field: "capital",
        unit: " MM COP",
        scaleMin: -100000000,
        scaleMax: 50000000,
        formatValue: (v) => (v / 1000000).toFixed(1) + " MM"
    },
    prueba: {
        field: "prueba",
        unit: "x",
        scaleMin: -150,
        scaleMax: 150
    },
    efectivo: {
        field: "efectivo",
        unit: "x",
        scaleMin: -50,
        scaleMax: 450
    }
};


// ============================================================================
// NOTE: The auditRepository has been moved to a separate file: insights.js
// This allows editing audit insights without touching the main code.
// ============================================================================
