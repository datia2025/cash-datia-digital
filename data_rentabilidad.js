// Datos de Rentabilidad consolidados de Power BI
// Incluye: Margen EBITDA, Margen Neto, Margen Operativo, Margen Bruto, Patrimonio, ROA, ROE, Utilidad Acumulada
let profitabilityData = [
    // 2023
    { year: 2023, quarter: "1Q", period: 1, ebitda: 3.06611874, neto: 3.27581220, operativo: -3.19947940, bruto: 1.00, patrimonio: 1953149, roa: -0.25926777, roe: -4.15273540, utilidad: -8110911 },
    { year: 2023, quarter: "1Q", period: 2, ebitda: 0.09790807, neto: 0.14653402, operativo: -0.12971560, bruto: 1.00, patrimonio: 7746478, roa: -0.05260898, roe: -0.29917880, utilidad: -2317582 },
    { year: 2023, quarter: "1Q", period: 3, ebitda: 0.04179228, neto: 0.07956042, operativo: -0.06701750, bruto: 1.00, patrimonio: 7932159, roa: -0.05144428, roe: -0.26876680, utilidad: -2131901 },
    { year: 2023, quarter: "2Q", period: 4, ebitda: 0.21048328, neto: 0.24847876, operativo: -0.23372412, bruto: 1.00, patrimonio: 989118.82, roa: -0.25310492, roe: -9.17477354, utilidad: -9074941.18 },
    { year: 2023, quarter: "2Q", period: 5, ebitda: 0.14569312, neto: 0.18261944, operativo: -0.17053559, bruto: 1.00, patrimonio: 1855316.33, roa: -0.14997456, roe: -4.42444425, utilidad: -8208743.67 },
    { year: 2023, quarter: "2Q", period: 6, ebitda: 0.17284267, neto: 0.21399082, operativo: -0.20083202, bruto: 1.00, patrimonio: -521322.88, roa: -0.21708091, roe: 20.30485000, utilidad: -10585382.88 },
    { year: 2023, quarter: "3Q", period: 7, ebitda: -0.00145419, neto: 0.03304295, operativo: -0.02229046, bruto: 1.00, patrimonio: 7764583.89, roa: -0.03674485, roe: -0.29614930, utilidad: -2299476.11 },
    { year: 2023, quarter: "3Q", period: 8, ebitda: -0.04198203, neto: -0.00594553, operativo: 0.01696305, bruto: 1.00, patrimonio: 10520394.79, roa: 0.00707913, roe: 0.04337620, utilidad: 456334.79 },
    { year: 2023, quarter: "3Q", period: 9, ebitda: -0.01898929, neto: 0.01532871, operativo: -0.00476017, bruto: 1.00, patrimonio: 8696363.01, roa: -0.02455830, roe: -0.15727230, utilidad: -1367696.99 },
    { year: 2023, quarter: "4Q", period: 10, ebitda: 0.07236789, neto: 0.10905921, operativo: -0.09800211, bruto: 1.00, patrimonio: -196942.42, roa: -0.17749103, roe: 52.10153516, utilidad: -10261002.42 },
    { year: 2023, quarter: "4Q", period: 11, ebitda: 0.03963601, neto: 0.07681173, operativo: -0.06644462, bruto: 1.00, patrimonio: 2356116.45, roa: -0.14816114, roe: -3.27146120, utilidad: -7707943.55 },
    { year: 2023, quarter: "4Q", period: 12, ebitda: 0.11123823, neto: 0.00, operativo: -0.13896135, bruto: 1.00, patrimonio: 279872.16, roa: 0.00, roe: 0.00, utilidad: 0.00 },

    // 2024
    { year: 2024, quarter: "1Q", period: 1, ebitda: -0.76154008, neto: -0.70057773, operativo: 0.72828909, bruto: 1.00, patrimonio: 4931949.99, roa: 0.10374343, roe: 0.94325324, utilidad: 4652077.83 },
    { year: 2024, quarter: "1Q", period: 2, ebitda: -0.64612158, neto: -0.60806167, operativo: 0.61942844, bruto: 1.00, patrimonio: 10123594.1, roa: 0.20106705, roe: 0.97235447, utilidad: 9843721.94 },
    { year: 2024, quarter: "1Q", period: 3, ebitda: -0.61024386, neto: -0.56140558, operativo: 0.57557123, bruto: 1.00, patrimonio: 11005096.83, roa: 0.23283474, roe: 0.97456886, utilidad: 10725224.67 },
    { year: 2024, quarter: "2Q", period: 4, ebitda: -0.62397413, neto: -0.63196732, operativo: 0.59530081, bruto: 1.00, patrimonio: 19618657.29, roa: 0.37524514, roe: 0.98573439, utilidad: 19338785.13 },
    { year: 2024, quarter: "2Q", period: 5, ebitda: -0.37580370, neto: -0.37635991, operativo: 0.34771792, bruto: 1.00, patrimonio: 15023497.24, roa: 0.28595014, roe: 0.98137104, utilidad: 14743625.08 },
    { year: 2024, quarter: "2Q", period: 6, ebitda: -0.15713151, neto: -0.15121123, operativo: 0.13220617, bruto: 1.00, patrimonio: 8039167.96, roa: 0.15120198, roe: 0.96518643, utilidad: 7759295.80 },
    { year: 2024, quarter: "3Q", period: 7, ebitda: -0.20254245, neto: -0.19424373, operativo: 0.17983648, bruto: 1.00, patrimonio: 12546539.44, roa: 0.23939645, roe: 0.97769328, utilidad: 12266667.28 },
    { year: 2024, quarter: "3Q", period: 8, ebitda: -0.32330672, neto: -0.31487587, operativo: 0.30494411, bruto: 1.00, patrimonio: 27359475.95, roa: 0.40335567, roe: 0.98977056, utilidad: 27079603.79 },
    { year: 2024, quarter: "3Q", period: 9, ebitda: -0.28168049, neto: -0.26651319, operativo: 0.25828041, bruto: 1.00, patrimonio: 27394808.46, roa: 0.16890141, roe: 0.98978375, utilidad: 27114936.30 },
    { year: 2024, quarter: "4Q", period: 10, ebitda: -0.16053015, neto: -0.12744067, operativo: 0.12165501, bruto: 1.00, patrimonio: 14740074.1, roa: 0.09291601, roe: 0.98101284, utilidad: 14460201.94 },
    { year: 2024, quarter: "4Q", period: 11, ebitda: -0.17195297, neto: -0.13631473, operativo: 0.13279135, bruto: 1.00, patrimonio: 18670704.92, roa: 0.10669493, roe: 0.98501009, utilidad: 18390832.76 },
    { year: 2024, quarter: "4Q", period: 12, ebitda: -0.25067754, neto: 0.00, operativo: 0.21408230, bruto: 1.00, patrimonio: 129749331.24, roa: 0.00, roe: 0.00, utilidad: 0.00 },

    // 2025
    { year: 2025, quarter: "1Q", period: 1, ebitda: 0.35702069, neto: 0.43960547, operativo: -0.43919191, bruto: 1.00, patrimonio: 124540733.97, roa: -0.03269097, roe: -0.04182244, utilidad: -5208597.27 },
    { year: 2025, quarter: "1Q", period: 2, ebitda: -0.19523889, neto: -0.07014386, operativo: 0.07033631, bruto: 1.00, patrimonio: 131535281.5, roa: 0.01074548, roe: 0.01357773, utilidad: 1785950.26 },
    { year: 2025, quarter: "1Q", period: 3, ebitda: -0.18789404, neto: -0.06698996, operativo: 0.06712993, bruto: 1.00, patrimonio: 132094508.96, roa: 0.01367783, roe: 0.01775379, utilidad: 2345177.72 },
    { year: 2025, quarter: "2Q", period: 4, ebitda: -0.19589638, neto: -0.09084586, operativo: 0.09094570, bruto: 1.00, patrimonio: 134208150.62, roa: 0.02561765, roe: 0.03322316, utilidad: 4458819.38 },
    { year: 2025, quarter: "2Q", period: 5, ebitda: 0.01154073, neto: 0.12142271, operativo: -0.12084974, bruto: 1.00, patrimonio: 122930911.75, roa: -0.04123711, roe: -0.05546546, utilidad: -6818419.49 },
    { year: 2025, quarter: "2Q", period: 6, ebitda: 0.13691625, neto: 0.24285497, operativo: -0.24237447, bruto: 1.00, patrimonio: 113487523.65, roa: -0.09992733, roe: -0.14329159, utilidad: -16261807.59 },
    { year: 2025, quarter: "3Q", period: 7, ebitda: 0.06632749, neto: 0.1645340, operativo: -0.16414296, bruto: 1.00, patrimonio: 116210778.49, roa: -0.08311708, roe: -0.11649997, utilidad: -13538552.75 },
    { year: 2025, quarter: "3Q", period: 8, ebitda: 0.04987468, neto: 0.14308961, operativo: -0.14275770, bruto: 1.00, patrimonio: 115878480.58, roa: -0.08563806, roe: -0.11970170, utilidad: -13870850.66 },
    { year: 2025, quarter: "3Q", period: 9, ebitda: -0.04040863, neto: 0.05437854, operativo: -0.05407232, bruto: 1.00, patrimonio: 124035662.12, roa: -0.03463932, roe: -0.04606473, utilidad: -5713669.12 },
    { year: 2025, quarter: "4Q", period: 10, ebitda: 0.03565558, neto: 0.12544969, operativo: -0.12515960, bruto: 1.00, patrimonio: 115835112.20, roa: -0.08887240, roe: -0.12012091, utilidad: -13914219.04 },
    { year: 2025, quarter: "4Q", period: 11, ebitda: 0.04984751, neto: 0.13720584, operativo: -0.13692362, bruto: 1.00, patrimonio: 114106859.15, roa: -0.10151379, roe: -0.13708617, utilidad: -15642472.09 },
    { year: 2025, quarter: "4Q", period: 12, ebitda: -0.07141395, neto: 0.00585415, operativo: -0.00560453, bruto: 1.00, patrimonio: 128994759.15, roa: -0.00439193, roe: -0.00584963, utilidad: -754572.09 }
];

// Configuración de indicadores de Rentabilidad con metadatos
const indicators = {
    ebitda: {
        field: "ebitda",
        name: "Margen EBITDA",
        unit: "%",
        formatValue: (v) => (v * 100).toFixed(2) + "%"
    },
    neto: {
        field: "neto",
        name: "Margen Neto",
        unit: "%",
        formatValue: (v) => (v * 100).toFixed(2) + "%"
    },
    operativo: {
        field: "operativo",
        name: "Margen Operativo",
        unit: "%",
        formatValue: (v) => (v * 100).toFixed(2) + "%"
    },
    bruto: {
        field: "bruto",
        name: "Margen Bruto",
        unit: "%",
        formatValue: (v) => (v * 100).toFixed(2) + "%"
    },
    patrimonio: {
        field: "patrimonio",
        name: "Patrimonio",
        unit: " MM COP",
        formatValue: (v) => (v / 1000000).toFixed(1) + " MM"
    },
    roa: {
        field: "roa",
        name: "ROA",
        unit: "%",
        formatValue: (v) => (v * 100).toFixed(2) + "%"
    },
    roe: {
        field: "roe",
        name: "ROE",
        unit: "%",
        formatValue: (v) => (v * 100).toFixed(2) + "%"
    },
    utilidad: {
        field: "utilidad",
        name: "Utilidad Acumulada",
        unit: " MM COP",
        formatValue: (v) => (v / 1000000).toFixed(1) + " MM"
    }
};
