// Datos de Solvencia consolidados (Endeudamiento)
// Incluye: Cobertura de Cargos Fijos, Intereses, Servicio de la Deuda, Deuda Neta a EBITDA, Endeudamiento Total, Ratio de Solvencia Patrimonial
const liquidityDataSolvency = [
    // 2023
    { year: 2023, quarter: "1Q", period: 1, cargos_fijos: -41.91, intereses: -41.91, servicio_deuda: -40.17, deuda_ebitda: 0.01, endeudamiento_total: 0.9375669892978549, solvencia_patrimonial: -0.27 },
    { year: 2023, quarter: "1Q", period: 2, cargos_fijos: -7.71, intereses: -7.71, servicio_deuda: -5.82, deuda_ebitda: 2.29, endeudamiento_total: 0.8241553987181252, solvencia_patrimonial: -0.05 },
    { year: 2023, quarter: "1Q", period: 3, cargos_fijos: -5.34, intereses: -5.34, servicio_deuda: -3.33, deuda_ebitda: 0.81, endeudamiento_total: 0.8085913724652529, solvencia_patrimonial: -0.04 },
    { year: 2023, quarter: "2Q", period: 4, cargos_fijos: -15.84, intereses: -15.84, servicio_deuda: -14.27, deuda_ebitda: 0.62, endeudamiento_total: 0.9724129518442761, solvencia_patrimonial: -0.24 },
    { year: 2023, quarter: "2Q", period: 5, cargos_fijos: -14.11, intereses: -14.11, servicio_deuda: -0.32, deuda_ebitda: -1.36, endeudamiento_total: 0.9661031860000091, solvencia_patrimonial: -0.13 },
    { year: 2023, quarter: "2Q", period: 6, cargos_fijos: -15.26, intereses: -15.26, servicio_deuda: -0.41, deuda_ebitda: 0.6, endeudamiento_total: 1.0106910865780288, solvencia_patrimonial: -0.19 },
    { year: 2023, quarter: "3Q", period: 7, cargos_fijos: -2.07, intereses: -2.07, servicio_deuda: 0.0, deuda_ebitda: -31.92, endeudamiento_total: 0.8759245605118959, solvencia_patrimonial: -0.01 },
    { year: 2023, quarter: "3Q", period: 8, cargos_fijos: 1.54, intereses: 1.54, servicio_deuda: 0.15, deuda_ebitda: -2.31, endeudamiento_total: 0.836796995400978, solvencia_patrimonial: 0.04 },
    { year: 2023, quarter: "3Q", period: 9, cargos_fijos: -0.45, intereses: -0.45, servicio_deuda: 0.08, deuda_ebitda: -1.35, endeudamiento_total: 0.8438485123803642, solvencia_patrimonial: 0.02 },
    { year: 2023, quarter: "4Q", period: 10, cargos_fijos: -8.86, intereses: -8.86, servicio_deuda: -0.32, deuda_ebitda: 0.96, endeudamiento_total: 1.0034066373277877, solvencia_patrimonial: -0.14 },
    { year: 2023, quarter: "4Q", period: 11, cargos_fijos: -6.41, intereses: -6.41, servicio_deuda: -0.19, deuda_ebitda: -1.09, endeudamiento_total: 0.9547110198659298, solvencia_patrimonial: -0.1 },
    { year: 2023, quarter: "4Q", period: 12, cargos_fijos: -12.86, intereses: -12.86, servicio_deuda: -0.58, deuda_ebitda: -0.11, endeudamiento_total: 0.9935817357939049, solvencia_patrimonial: -0.39 },
    // 2024
    { year: 2024, quarter: "1Q", period: 1, cargos_fijos: 26.28, intereses: 26.28, servicio_deuda: 2.17, deuda_ebitda: 1.76, endeudamiento_total: 0.8900152898338387, solvencia_patrimonial: 0.12 },
    { year: 2024, quarter: "1Q", period: 2, cargos_fijos: 15.39, intereses: 54.49, servicio_deuda: 4.49, deuda_ebitda: 0.67, endeudamiento_total: 0.7932163019631691, solvencia_patrimonial: 0.26 },
    { year: 2024, quarter: "1Q", period: 3, cargos_fijos: 14.92, intereses: 40.63, servicio_deuda: 3.33, deuda_ebitda: -0.06, endeudamiento_total: 0.7610894937285668, solvencia_patrimonial: 0.32 },
    { year: 2024, quarter: "2Q", period: 4, cargos_fijos: 10.65, intereses: 51.76, servicio_deuda: 4.09, deuda_ebitda: 0.05, endeudamiento_total: 0.619324290076505, solvencia_patrimonial: 0.63 },
    { year: 2024, quarter: "2Q", period: 5, cargos_fijos: 6.64, intereses: 38.7, servicio_deuda: 3.15, deuda_ebitda: 0.25, endeudamiento_total: 0.7086217909927289, solvencia_patrimonial: 0.43 },
    { year: 2024, quarter: "2Q", period: 6, cargos_fijos: 3.1, intereses: 13.6, servicio_deuda: 1.15, deuda_ebitda: 1.21, endeudamiento_total: 0.843344271601914, solvencia_patrimonial: 0.21 },
    { year: 2024, quarter: "3Q", period: 7, cargos_fijos: 4.03, intereses: 20.13, servicio_deuda: 1.57, deuda_ebitda: 0.25, endeudamiento_total: 0.7551415654118178, solvencia_patrimonial: 0.35 },
    { year: 2024, quarter: "3Q", period: 8, cargos_fijos: 7.22, intereses: 42.31, servicio_deuda: 2.98, deuda_ebitda: -0.03, endeudamiento_total: 0.5924755792289907, solvencia_patrimonial: 0.72 },
    { year: 2024, quarter: "3Q", period: 9, cargos_fijos: 6.53, intereses: 41.29, servicio_deuda: 2.74, deuda_ebitda: 0.21, endeudamiento_total: 0.8293552444673218, solvencia_patrimonial: 0.22 },
    { year: 2024, quarter: "4Q", period: 10, cargos_fijos: 3.44, intereses: 16.88, servicio_deuda: 1.55, deuda_ebitda: -0.18, endeudamiento_total: 0.9052856303368745, solvencia_patrimonial: 0.13 },
    { year: 2024, quarter: "4Q", period: 11, cargos_fijos: 3.82, intereses: 17.94, servicio_deuda: 1.78, deuda_ebitda: 0.01, endeudamiento_total: 0.8916813800942835, solvencia_patrimonial: 0.15 },
    { year: 2024, quarter: "4Q", period: 12, cargos_fijos: 36.44, intereses: 36.44, servicio_deuda: 3.04, deuda_ebitda: 0.06, endeudamiento_total: 0.23281010798160612, solvencia_patrimonial: 0.91 },
    // 2025
    { year: 2025, quarter: "1Q", period: 1, cargos_fijos: -1061.98, intereses: -1061.98, servicio_deuda: -3.71, deuda_ebitda: 0.48, endeudamiento_total: 0.21833894078979468, solvencia_patrimonial: -0.12 },
    { year: 2025, quarter: "1Q", period: 2, cargos_fijos: 365.48, intereses: 365.48, servicio_deuda: 4.36, deuda_ebitda: 0.01, endeudamiento_total: 0.2085949580425814, solvencia_patrimonial: 0.14 },
    { year: 2025, quarter: "1Q", period: 3, cargos_fijos: 479.61, intereses: 479.61, servicio_deuda: 5.77, deuda_ebitda: -0.33, endeudamiento_total: 0.22958213007655054, solvencia_patrimonial: 0.17 },
    { year: 2025, quarter: "2Q", period: 4, cargos_fijos: 910.96, intereses: 910.96, servicio_deuda: 8.43, deuda_ebitda: -0.53, endeudamiento_total: 0.22892191932562325, solvencia_patrimonial: 0.24 },
    { year: 2025, quarter: "2Q", period: 5, cargos_fijos: -210.92, intereses: -210.92, servicio_deuda: -0.3, deuda_ebitda: 17.35, endeudamiento_total: 0.25652624449317807, solvencia_patrimonial: -0.02 },
    { year: 2025, quarter: "2Q", period: 6, cargos_fijos: -504.42, intereses: -504.42, servicio_deuda: -4.29, deuda_ebitda: -0.19, endeudamiento_total: 0.3026294889546478, solvencia_patrimonial: -0.19 },
    { year: 2025, quarter: "3Q", period: 7, cargos_fijos: -419.78, intereses: -419.78, servicio_deuda: -2.55, deuda_ebitda: 0.34, endeudamiento_total: 0.2865485124153616, solvencia_patrimonial: -0.12 },
    { year: 2025, quarter: "3Q", period: 8, cargos_fijos: -430.11, intereses: -430.11, servicio_deuda: -2.26, deuda_ebitda: 0.27, endeudamiento_total: 0.28457100859813206, solvencia_patrimonial: -0.11 },
    { year: 2025, quarter: "3Q", period: 9, cargos_fijos: -176.58, intereses: -176.58, servicio_deuda: 1.99, deuda_ebitda: -1.24, endeudamiento_total: 0.2480293786732538, solvencia_patrimonial: 0.1 },
    { year: 2025, quarter: "4Q", period: 10, cargos_fijos: -431.45, intereses: -431.45, servicio_deuda: -1.85, deuda_ebitda: 0.6, endeudamiento_total: 0.2601421060258391, solvencia_patrimonial: -0.1 },
    { year: 2025, quarter: "4Q", period: 11, cargos_fijos: -485.17, intereses: -485.17, servicio_deuda: -2.66, deuda_ebitda: 1.09, endeudamiento_total: 0.25948915232784653, solvencia_patrimonial: -0.15 },
    { year: 2025, quarter: "4Q", period: 12, cargos_fijos: -22.45, intereses: -22.45, servicio_deuda: 4.31, deuda_ebitda: -0.67, endeudamiento_total: 0.24919535354199893, solvencia_patrimonial: 0.21 }
];
