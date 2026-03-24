// Módulo de Rentabilidad: Indicadores YTD y Mensuales
let profitabilityData = [];

// Configuración de indicadores para Rentabilidad
const profitabilityIndicators = {
    margen_bruto: {
      field: "margen_bruto",
      name: "Margen Bruto",
      unit: "%",
      scaleMin: 0,
      scaleMax: 100
    },
    margen_operacional: {
      field: "margen_operacional",
      name: "Margen Operacional",
      unit: "%",
      scaleMin: 0,
      scaleMax: 50
    },
    margen_neto: {
      field: "margen_neto",
      name: "Margen Neto",
      unit: "%",
      scaleMin: 0,
      scaleMax: 50
    },
    margen_ebitda: {
      field: "margen_ebitda",
      name: "Margen EBITDA",
      unit: "%",
      scaleMin: 0,
      scaleMax: 50
    },
    roe: {
      field: "roe",
      name: "ROE (Retorno sobre Patrimonio)",
      unit: "%",
      scaleMin: 0,
      scaleMax: 100
    },
    roa: {
      field: "roa",
      name: "ROA (Retorno sobre Activos)",
      unit: "%",
      scaleMin: 0,
      scaleMax: 50
    },
    patrimonio: {
      field: "patrimonio",
      name: "Patrimonio",
      unit: "MM",
      scaleMin: 0,
      scaleMax: null
    },
    utilidad: {
      field: "utilidad",
      name: "Utilidad Acumulada",
      unit: "MM",
      scaleMin: null,
      scaleMax: null
    }
};
