// Datos de Estructura de Capital consolidados
// Incluye: Cobertura de Activos Fijos, Estructura de la Deuda, Multiplicador de Capital, Ratio de Capitalización, 
// Ratio de Deuda a Activos Tangibles, Ratio de Propiedad/Autonomía, Relación Deuda/Patrimonio
const liquidityDataEstructura = [
    // 2023
    { year: 2023, quarter: "1Q", period: 1, cobertura_fijos: -5.92, estructura_deuda: 15.02, multiplicador_capital: 16.017167661043782, capitalizacion: 0, deuda_tangibles: 15.02, propiedad_autonomia: 0.06, deuda_patrimonio: 15.01716766104378 },
    { year: 2023, quarter: "1Q", period: 2, cobertura_fijos: -15.4, estructura_deuda: 4.69, multiplicador_capital: 5.6868393610618915, capitalizacion: 0, deuda_tangibles: 4.69, propiedad_autonomia: 0.18, deuda_patrimonio: 4.6868393610618915 },
    { year: 2023, quarter: "1Q", period: 3, cobertura_fijos: -11.74, estructura_deuda: 4.22, multiplicador_capital: 5.22442490121542, capitalizacion: 0, deuda_tangibles: 4.22, propiedad_autonomia: 0.19, deuda_patrimonio: 4.22442490121542 },
    { year: 2023, quarter: "2Q", period: 4, cobertura_fijos: -1.17, estructura_deuda: 35.25, multiplicador_capital: 36.24889456657997, capitalizacion: 0, deuda_tangibles: 35.25, propiedad_autonomia: 0.03, deuda_patrimonio: 35.24889456657997 },
    { year: 2023, quarter: "2Q", period: 5, cobertura_fijos: -3.39, estructura_deuda: 28.5, multiplicador_capital: 29.50129767358863, capitalizacion: 0, deuda_tangibles: 28.5, propiedad_autonomia: 0.03, deuda_patrimonio: 28.50129767358863 },
    { year: 2023, quarter: "2Q", period: 6, cobertura_fijos: -0.64, estructura_deuda: 94.54, multiplicador_capital: -93.53586211293839, capitalizacion: 0, deuda_tangibles: -94.54, propiedad_autonomia: 0.01, deuda_patrimonio: -94.53586211293837 },
    { year: 2023, quarter: "3Q", period: 7, cobertura_fijos: -7.17, estructura_deuda: 7.06, multiplicador_capital: 8.059612797872674, capitalizacion: 0, deuda_tangibles: 7.06, propiedad_autonomia: 0.12, deuda_patrimonio: 7.059612797872674 },
    { year: 2023, quarter: "3Q", period: 8, cobertura_fijos: -7.79, estructura_deuda: 5.13, multiplicador_capital: 6.12733817282916, capitalizacion: 0, deuda_tangibles: 5.13, propiedad_autonomia: 0.16, deuda_patrimonio: 5.127338172829159 },
    { year: 2023, quarter: "3Q", period: 9, cobertura_fijos: -5.61, estructura_deuda: 5.4, multiplicador_capital: 6.404037612730704, capitalizacion: 0, deuda_tangibles: 5.4, propiedad_autonomia: 0.16, deuda_patrimonio: 5.404037612730704 },
    { year: 2023, quarter: "4Q", period: 10, cobertura_fijos: -0.16, estructura_deuda: 294.54, multiplicador_capital: -293.54460242745074, capitalizacion: 0, deuda_tangibles: -294.54, propiedad_autonomia: 0, deuda_patrimonio: -294.54460242745074 },
    { year: 2023, quarter: "4Q", period: 11, cobertura_fijos: -1.52, estructura_deuda: 21.08, multiplicador_capital: 22.080426563805876, capitalizacion: 0, deuda_tangibles: 21.08, propiedad_autonomia: 0.05, deuda_patrimonio: 21.080426563805872 },
    { year: 2023, quarter: "4Q", period: 12, cobertura_fijos: -0.16, estructura_deuda: 154.81, multiplicador_capital: 155.80536542112645, capitalizacion: 0, deuda_tangibles: 154.81, propiedad_autonomia: 0.01, deuda_patrimonio: 154.80536542112648 },

    // 2024
    { year: 2024, quarter: "1Q", period: 1, cobertura_fijos: -2.48, estructura_deuda: 8.09, multiplicador_capital: 9.092172889206445, capitalizacion: 0, deuda_tangibles: 8.09, propiedad_autonomia: 0.11, deuda_patrimonio: 8.092172889206445 },
    { year: 2024, quarter: "1Q", period: 2, cobertura_fijos: -4.59, estructura_deuda: 3.84, multiplicador_capital: 4.835971159689226, capitalizacion: 0, deuda_tangibles: 3.84, propiedad_autonomia: 0.21, deuda_patrimonio: 3.8359711596892256 },
    { year: 2024, quarter: "1Q", period: 3, cobertura_fijos: -4.52, estructura_deuda: 3.19, multiplicador_capital: 4.185667744824377, capitalizacion: 0, deuda_tangibles: 3.19, propiedad_autonomia: 0.24, deuda_patrimonio: 3.185667744824377 },
    { year: 2024, quarter: "2Q", period: 4, cobertura_fijos: -7.41, estructura_deuda: 1.63, multiplicador_capital: 2.6269078218859088, capitalizacion: 0, deuda_tangibles: 1.63, propiedad_autonomia: 0.38, deuda_patrimonio: 1.6269078218859085 },
    { year: 2024, quarter: "2Q", period: 5, cobertura_fijos: -5.23, estructura_deuda: 2.43, multiplicador_capital: 3.4319656346540524, capitalizacion: 0, deuda_tangibles: 2.43, propiedad_autonomia: 0.29, deuda_patrimonio: 2.431965634654052 },
    { year: 2024, quarter: "2Q", period: 6, cobertura_fijos: -2.64, estructura_deuda: 5.38, multiplicador_capital: 6.383424406025223, capitalizacion: 0, deuda_tangibles: 5.38, propiedad_autonomia: 0.16, deuda_patrimonio: 5.383424406025223 },
    { year: 2024, quarter: "3Q", period: 7, cobertura_fijos: -3.91, estructura_deuda: 3.08, multiplicador_capital: 4.0839924574453015, capitalizacion: 0, deuda_tangibles: 3.08, propiedad_autonomia: 0.24, deuda_patrimonio: 3.083992457445302 },
    { year: 2024, quarter: "3Q", period: 8, cobertura_fijos: -8.17, estructura_deuda: 1.45, multiplicador_capital: 2.453840675628877, capitalizacion: 0, deuda_tangibles: 1.45, propiedad_autonomia: 0.41, deuda_patrimonio: 1.4538406756288766 },
    { year: 2024, quarter: "3Q", period: 9, cobertura_fijos: 0.3, estructura_deuda: 4.86, multiplicador_capital: 5.860127355677814, capitalizacion: 0, deuda_tangibles: 4.86, propiedad_autonomia: 0.17, deuda_patrimonio: 4.860127355677814 },
    { year: 2024, quarter: "4Q", period: 10, cobertura_fijos: 0.16, estructura_deuda: 9.56, multiplicador_capital: 10.558060023592418, capitalizacion: 0, deuda_tangibles: 9.56, propiedad_autonomia: 0.09, deuda_patrimonio: 9.55806002359242 },
    { year: 2024, quarter: "4Q", period: 11, cobertura_fijos: 0.21, estructura_deuda: 8.23, multiplicador_capital: 9.23202308957063, capitalizacion: 0, deuda_tangibles: 8.23, propiedad_autonomia: 0.11, deuda_patrimonio: 8.232023089570632 },
    { year: 2024, quarter: "4Q", period: 12, cobertura_fijos: 1.45, estructura_deuda: 0.3, multiplicador_capital: 1.3034582577321345, capitalizacion: 0, deuda_tangibles: 0.31, propiedad_autonomia: 0.77, deuda_patrimonio: 0.3034582577321344 },

    // 2025
    { year: 2025, quarter: "1Q", period: 1, cobertura_fijos: 1.41, estructura_deuda: 0.28, multiplicador_capital: 1.279326874758742, capitalizacion: 0, deuda_tangibles: 0.28, propiedad_autonomia: 0.78, deuda_patrimonio: 0.279326874758742 },
    { year: 2025, quarter: "1Q", period: 2, cobertura_fijos: 1.5, estructura_deuda: 0.26, multiplicador_capital: 1.2635754727145203, capitalizacion: 0, deuda_tangibles: 0.27, propiedad_autonomia: 0.79, deuda_patrimonio: 0.2635754727145203 },
    { year: 2025, quarter: "1Q", period: 3, cobertura_fijos: 1.52, estructura_deuda: 0.3, multiplicador_capital: 1.2979968910889392, capitalizacion: 0, deuda_tangibles: 0.3, propiedad_autonomia: 0.77, deuda_patrimonio: 0.29799689108893906 },
    { year: 2025, quarter: "2Q", period: 4, cobertura_fijos: 1.57, estructura_deuda: 0.3, multiplicador_capital: 1.2968855230917868, capitalizacion: 0, deuda_tangibles: 0.3, propiedad_autonomia: 0.77, deuda_patrimonio: 0.29688552309178673 },
    { year: 2025, quarter: "2Q", period: 5, cobertura_fijos: 1.45, estructura_deuda: 0.35, multiplicador_capital: 1.3450373904836836, capitalizacion: 0, deuda_tangibles: 0.35, propiedad_autonomia: 0.74, deuda_patrimonio: 0.3450373904836836 },
    { year: 2025, quarter: "2Q", period: 6, cobertura_fijos: 1.35, estructura_deuda: 0.43, multiplicador_capital: 1.4339579666209417, capitalizacion: 0, deuda_tangibles: 0.44, propiedad_autonomia: 0.7, deuda_patrimonio: 0.43395796662094144 },
    { year: 2025, quarter: "3Q", period: 7, cobertura_fijos: 1.4, estructura_deuda: 0.4, multiplicador_capital: 1.4016369962104367, capitalizacion: 0, deuda_tangibles: 0.41, propiedad_autonomia: 0.71, deuda_patrimonio: 0.40163699621043647 },
    { year: 2025, quarter: "3Q", period: 8, cobertura_fijos: 1.41, estructura_deuda: 0.4, multiplicador_capital: 1.3977627577553453, capitalizacion: 0, deuda_tangibles: 0.41, propiedad_autonomia: 0.72, deuda_patrimonio: 0.3977627577553451 },
    { year: 2025, quarter: "3Q", period: 9, cobertura_fijos: 1.53, estructura_deuda: 0.33, multiplicador_capital: 1.3298391873816042, capitalizacion: 0, deuda_tangibles: 0.34, propiedad_autonomia: 0.75, deuda_patrimonio: 0.329839187381604 },
    { year: 2025, quarter: "4Q", period: 10, cobertura_fijos: 1.43, estructura_deuda: 0.35, multiplicador_capital: 1.3516109081819494, capitalizacion: 0, deuda_tangibles: 0.36, propiedad_autonomia: 0.74, deuda_patrimonio: 0.3516109081819494 },
    { year: 2025, quarter: "4Q", period: 11, cobertura_fijos: 1.41, estructura_deuda: 0.35, multiplicador_capital: 1.3504191101907128, capitalizacion: 0, deuda_tangibles: 0.36, propiedad_autonomia: 0.74, deuda_patrimonio: 0.35041911019071287 },
    { year: 2025, quarter: "4Q", period: 12, cobertura_fijos: 1.59, estructura_deuda: 0.33, multiplicador_capital: 1.3319043838068982, capitalizacion: 0, deuda_tangibles: 0.34, propiedad_autonomia: 0.75, deuda_patrimonio: 0.33190438380689824 }
];
