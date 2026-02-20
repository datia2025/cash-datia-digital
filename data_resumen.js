/**
 * data_resumen.js
 * Datos narrativos y KPIs clave para el Resumen Ejecutivo.
 * Historia financiera de la compañía: 2023 → 2025.
 * Todos los valores provienen de los data_*.js de cada módulo.
 */

// ─── PERFIL DE LA EMPRESA ───────────────────────────────────────────────────
const empresaPerfil = {
    nombre: "Empresa de Servicios",
    sector: "Servicios Especializados",
    pais: "Colombia",
    moneda: "COP",
    periodoAnalisis: "2023 – 2025",
    descripcion:
        "Compañía colombiana del sector servicios sin manejo de inventarios, con clientes institucionales y ciclos de cobro extendidos. Atravesó una crisis de liquidez y solvencia en 2023–2024 y ejecutó una reestructuración financiera que derivó en una recuperación excepcional al cierre de 2025.",
};

// ─── SCORE GLOBAL POR AÑO ───────────────────────────────────────────────────
const scoreHistorico = [
    { year: 2023, score: 2.8, label: "Crisis Crítica", color: "#ef4444", icon: "alert-triangle" },
    { year: 2024, score: 4.2, label: "Estabilización", color: "#f59e0b", icon: "minus-circle" },
    { year: 2025, score: 9.6, label: "Recuperación", color: "#10b981", icon: "check-circle" },
];

// ─── KPIs TOP POR MÓDULO (CIERRE 2025) ───────────────────────────────────────
const kpisPorModulo = [
    {
        modulo: "Liquidez",
        definicion: "Capacidad para cumplir obligaciones financieras de corto plazo.",
        color: "#3b82f6",
        icono: "droplets",
        kpis: [
            {
                nombre: "Razón Corriente",
                valor2023: "2.37x",
                valor2024: "4.22x",
                valor2025: "5.59x",
                tendencia: "up",
                status: "success",
                descripcion: "Nivel de solvencia a corto plazo sumamente robusto tras la capitalización de 2024. Al situarse en 5.59x, la empresa tiene una capacidad excedente para cubrir sus pasivos corrientes casi seis veces, lo que reduce drásticamente el riesgo de impago y proporciona un colchón financiero excepcional frente a posibles retrasos en la facturación o picos de gasto operativo no previstos.",
                benchmark: "1.50 – 2.00x",
                etiqueta: "Motor"
            },
            {
                nombre: "Capital de Trabajo",
                valor2023: "-7.8 MM COP",
                valor2024: "+18.4 MM COP",
                valor2025: "+35.2 MM COP",
                tendencia: "up",
                status: "success",
                descripcion: "El giro de -7.8 MM COP en 2023 a +35.2 MM COP en 2025 marca el éxito del saneamiento. Este superávit permanente asegura que la operación diaria no dependa de líneas de crédito costosas, permitiendo a la gerencia negociar mejores condiciones con proveedores y aprovechar oportunidades de inversión inmediata sin comprometer la estabilidad de los flujos de caja operativos de la compañía.",
                benchmark: "> 0",
                etiqueta: "Motor"
            },
            {
                nombre: "Prueba Ácida",
                valor2023: "1.10x",
                valor2024: "1.85x",
                valor2025: "2.10x",
                tendencia: "up",
                status: "warning",
                descripcion: "Al excluir prepagados, la prueba ácida de 2.10x confirma una liquidez real muy alta. Sin embargo, en una empresa de servicios puros, este ratio está fuertemente indexado a la calidad de la cartera. La lentitud en el recaudo (DSO alto) actúa como un ancla latente; si la cartera se deteriora, esta liquidez 'en papel' podría no convertirse en efectivo con la velocidad que el negocio requiere.",
                benchmark: "> 1.0x",
                etiqueta: "Ancla"
            },
            {
                nombre: "Cash Ratio",
                valor2023: "0.05x",
                valor2024: "0.45x",
                valor2025: "0.95x",
                tendencia: "up",
                status: "success",
                descripcion: "Con 0.95x, la empresa puede pagar casi el 100% de sus deudas inmediatas usando solo el efectivo en bancos. Esta es la máxima prueba de fortaleza financiera tras la crisis de 2023. Elimina cualquier dependencia de terceros para la operación básica, otorgando una autonomía total y una posición de poder en el mercado frente a competidores con estructuras de flujo de caja más tensionadas.",
                benchmark: "> 0.20x",
                etiqueta: "Motor"
            },
        ],
    },
    {
        modulo: "Rentabilidad",
        definicion: "Capacidad del negocio para generar utilidades y crear valor.",
        color: "#10b981",
        icono: "trending-up",
        kpis: [
            {
                nombre: "ROE",
                valor2023: "-415%",
                valor2024: "-38%",
                valor2025: "+12%",
                tendencia: "up",
                status: "success",
                descripcion: "El retorno del 12% sobre el patrimonio marca el retorno a la creación de valor para el accionista. Tras dos años de erosión patrimonial severa, este indicador valida la tesis de recuperación. Representa no solo rentabilidad contable, sino la capacidad del nuevo modelo de negocio para generar dividendos potenciales y autofinanciar el crecimiento futuro, revirtiendo la tendencia de dependencia extrema de aportes externos de capital.",
                benchmark: "> 15%",
                etiqueta: "Motor"
            },
            {
                nombre: "Margen EBITDA",
                valor2023: "3.1%",
                valor2024: "8.4%",
                valor2025: "14.2%",
                tendencia: "up",
                status: "success",
                descripcion: "Un margen del 14.2% es el motor que garantiza la salud operacional. Refleja una estructura de costos optimizada y una capacidad de generación de caja genuina antes de intereses e impuestos. Este margen es fundamental para servir la deuda remanente y reinvertir en tecnología, asegurando que la empresa sea competitiva por su eficiencia interna y no solo por coyunturas favorables del mercado o capitalizaciones.",
                benchmark: "> 10%",
                etiqueta: "Motor"
            },
            {
                nombre: "Margen Operativo",
                valor2023: "-15.2%",
                valor2024: "8.1%",
                valor2025: "18.5%",
                tendencia: "up",
                status: "success",
                descripcion: "El 18.5% de margen operativo demuestra una eficiencia excepcional en la prestación de servicios. Al superar el benchmark del 10%, la empresa confirma que ha logrado escalar sus operaciones sin disparar los gastos administrativos. Este apalancamiento operativo es el principal motor de valor, permitiendo que cada nuevo contrato aporte significativamente más a la utilidad neta final, blindando la rentabilidad ante posibles incrementos de costos.",
                benchmark: "> 10%",
                etiqueta: "Motor"
            },
            {
                nombre: "ROA",
                valor2023: "-25.0%",
                valor2024: "-5.2%",
                valor2025: "4.2%",
                tendencia: "up",
                status: "warning",
                descripcion: "Aunque ha mejorado al 4.2%, el ROA sigue siendo un ancla relativa ya que no alcanza el ideal del 5%. Esto sugiere que la empresa aún posee activos que podrían ser más productivos o que el volumen de facturación todavía no es suficiente para maximizar la infraestructura instalada. Es necesario acelerar la captura de nuevos clientes para que la rentabilidad sobre los activos totales alcance niveles institucionales.",
                benchmark: "> 5%",
                etiqueta: "Ancla"
            },
        ],
    },
    {
        modulo: "Solvencia",
        definicion: "Capacidad para cumplir compromisos financieros a largo plazo.",
        color: "#8b5cf6",
        icono: "landmark",
        kpis: [
            {
                nombre: "Endeudamiento Total",
                valor2023: "94%",
                valor2024: "78%",
                valor2025: "62%",
                tendencia: "down",
                status: "warning",
                descripcion: "Un nivel de deuda del 62% es un ancla persistente que limita la flexibilidad financiera. Aunque el desapalancamiento ha sido notable desde el 94% inicial, la empresa sigue operando en un rango donde cambios imprevistos en las tasas de interés o una caída en los ingresos podrían presionar severamente el flujo de caja. Es imperativo continuar con la estrategia de amortización acelerada para bajar este ratio al 50%.",
                benchmark: "< 60%",
                etiqueta: "Ancla"
            },
            {
                nombre: "Cobertura de Intereses",
                valor2023: "0.8x",
                valor2024: "1.4x",
                valor2025: "3.2x",
                tendencia: "up",
                status: "success",
                descripcion: "La capacidad de 3.2x para cubrir gastos financieros es un motor de seguridad clave. Indica que el EBIT actual es más que suficiente para honrar los compromisos de deuda sin comprometer la operación. Esta holgura mejora la calificación crediticia implícita y abre la puerta a refinanciamientos en mejores términos, transformando lo que antes era un riesgo de quiebra en una gestión pasiva de la estructura de capital.",
                benchmark: "> 3.0x",
                etiqueta: "Motor"
            },
            {
                nombre: "Deuda / EBITDA",
                valor2023: "12.5x",
                valor2024: "6.2x",
                valor2025: "3.5x",
                tendencia: "down",
                status: "warning",
                descripcion: "Al situarse en 3.5x, este ratio sigue siendo un ancla técnica por superar el límite bancario preferente de 3.0x. Significa que la empresa aún es percibida como 'apalancada' por el sector financiero. Reducir este múltiplo es vital para recuperar la capacidad de acceso a crédito corporativo de bajo costo, lo cual soltará el freno que hoy representa la carga financiera sobre la utilidad neta distribuible.",
                benchmark: "< 3.0x",
                etiqueta: "Ancla"
            },
            {
                nombre: "Cobertura Cargos Fijos",
                valor2023: "0.25x",
                valor2024: "1.15x",
                valor2025: "2.80x",
                tendencia: "up",
                status: "success",
                descripcion: "El ratio de 2.80x es un motor que valida la viabilidad del plan de repago post-reestructuración. Demuestra que no solo hay para pagar intereses, sino también para amortizar capital regularmente. Esta solidez en el servicio de la deuda es lo que ha recuperado la confianza de los acreedores y garantiza que la empresa no caerá nuevamente en situaciones de impago técnico, asegurando la continuidad del negocio.",
                benchmark: "> 2.0x",
                etiqueta: "Motor"
            },
        ],
    },
    {
        modulo: "Actividad",
        definicion: "Eficiencia operativa en la gestión y uso de los activos.",
        color: "#ef4444",
        icono: "activity",
        kpis: [
            {
                nombre: "DSO (Días de Cobro)",
                valor2023: "280 días",
                valor2024: "184 días",
                valor2025: "98 días",
                tendencia: "down",
                status: "warning",
                descripcion: "Los 98 días de cobro son el ancla más pesada del reporte. Mientras el sector opera a 60 días, la empresa está financiando a sus clientes por 38 días adicionales sin cobrar intereses. Esto inmoviliza capital de trabajo que podría rendir en inversiones líquidas o reducir deuda. Es el principal riesgo de gestión; una crisis en los clientes institucionales podría congelar el flujo de caja de la compañía.",
                benchmark: "< 60 días",
                etiqueta: "Ancla"
            },
            {
                nombre: "Ciclo de Efectivo",
                valor2023: "258 días",
                valor2024: "163 días",
                valor2025: "87 días",
                tendencia: "down",
                status: "danger",
                descripcion: "Un ciclo de 87 días es un peligro latente para la salud financiera. El retraso entre el pago de insumos/nómina y el recaudo real crea una brecha que debe cubrirse con excedentes de caja. Esta ineficiencia operativa actúa como un impuesto invisible sobre el crecimiento; mientras no se reduzca drásticamente, la empresa estará obligada a mantener niveles de liquidez ociosamente altos para prevenir descalces operativos graves.",
                benchmark: "< 45 días",
                etiqueta: "Ancla"
            },
            {
                nombre: "Rotación Cartera",
                valor2023: "1.3x",
                valor2024: "2.0x",
                valor2025: "3.7x",
                tendencia: "up",
                status: "warning",
                descripcion: "La mejora a 3.7x es un motor de aceleración incipiente. Indica que los esfuerzos de gestión de recaudo están dando frutos, aumentando la frecuencia con la que la cartera se convierte en efectivo disponible. Si este ritmo se mantiene, la empresa podrá liberar millones en recursos que hoy están 'atrapados' en facturas pendientes, mejorando la liquidez dinámica y reduciendo la necesidad de depender de excedentes de caja estáticos.",
                benchmark: "> 6.0x",
                etiqueta: "Motor"
            },
            {
                nombre: "Rotación Activos",
                valor2023: "0.45x",
                valor2024: "0.82x",
                valor2025: "1.25x",
                tendencia: "up",
                status: "success",
                descripcion: "Generar 1.25 pesos por cada peso invertido es un motor de eficiencia productiva. Al superar la paridad, la empresa demuestra que su modelo de servicios es altamente escalable y que no requiere inversiones masivas en activos fijos para crecer. Esta agilidad es una ventaja competitiva enorme, permitiendo expandir la facturación con una base de activos relativamente ligera, optimizando así el retorno sobre el capital empleado.",
                benchmark: "> 1.0x",
                etiqueta: "Motor"
            },
        ],
    },
    {
        modulo: "Estructura",
        definicion: "Relación entre capital propio y financiamiento de terceros.",
        color: "#f59e0b",
        icono: "layers",
        kpis: [
            {
                nombre: "Deuda / Patrimonio",
                valor2023: "15.02x",
                valor2024: "4.8x",
                valor2025: "1.63x",
                tendencia: "down",
                status: "warning",
                descripcion: "Aunque bajó de 15x a 1.63x, este ratio sigue siendo un ancla estructural. La empresa aún debe más de lo que poseen sus accionistas, lo que implica que el riesgo financiero sigue concentrado en terceros. Al estar por encima del 1.0x, la estructura de capital permanece vulnerable ante cambios en el entorno macroeconómico, exigiendo una política de reinversión de utilidades estricta para fortalecer la base patrimonial propia.",
                benchmark: "< 1.50x",
                etiqueta: "Ancla"
            },
            {
                nombre: "Multiplicador de Capital",
                valor2023: "16.02x",
                valor2024: "5.8x",
                valor2025: "2.63x",
                tendencia: "down",
                status: "success",
                descripcion: "El valor de 2.63x es el motor que potencia el ROE. Al estar en un rango saludable, permite que la empresa se beneficie del uso inteligente de la deuda para amplificar los retornos a los accionistas sin incurrir en riesgos sistémicos de insolvencia. Es el equilibrio perfecto entre apalancamiento operativo y seguridad financiera, permitiendo que la capitalización de 2024 trabaje de manera óptima para los dueños del negocio.",
                benchmark: "< 3.0x",
                etiqueta: "Motor"
            },
            {
                nombre: "Propiedad y Autonomía",
                valor2023: "6.2%",
                valor2024: "22.5%",
                valor2025: "38.0%",
                tendencia: "up",
                status: "warning",
                descripcion: "El 38% de autonomía es un ancla que refleja el control compartido con los acreedores. Aunque es una mejora drástica, los terceros aún financian la mayor parte de la operación. Recuperar el control por encima del 50% es fundamental para la soberanía estratégica de la empresa, permitiendo tomar decisiones de largo plazo sin la supervisión constante de las entidades financieras que hoy vigilan el cumplimiento de los pactos de deuda.",
                benchmark: "> 40%",
                etiqueta: "Ancla"
            },
            {
                nombre: "Sostenibilidad",
                valor2023: "Crítica",
                valor2024: "Estable",
                valor2025: "Sólida",
                tendencia: "up",
                status: "success",
                descripcion: "Calificar la sostenibilidad como 'Sólida' es el motor de confianza definitivo. Refleja que el saneamiento no fue solo numérico, sino estructural. La empresa ha pasado de una situación de liquidación inminente en 2023 a ser una entidad con futuro previsible y capaz de atraer talento e inversión. Este intangible es el activo más valioso de la organización hoy, garantizando su permanencia y crecimiento en el sector de servicios.",
                benchmark: "Consolidada",
                etiqueta: "Motor"
            },
        ],
    },
];

// ─── SEÑALES DE ALERTA (PERSISTENTES O CRÍTICAS) ────────────────────────────
const senalesAlerta = [
    {
        tipo: "danger",
        titulo: "Ciclo de cobro históricamente crítico",
        descripcion:
            "En 2023, el DSO llegó a 280 días. Aunque mejoró a 98 días en 2025, sigue siendo el doble del benchmark sectorial. Riesgo de concentración en pocos clientes institucionales.",
        accion: "Implementar política de descuentos por pronto pago y diversificar cartera de clientes.",
        icono: "clock",
    },
    {
        tipo: "warning",
        titulo: "Endeudamiento aún elevado",
        descripcion:
            "El endeudamiento total cierra 2025 en 62%, rozando el límite seguro. Cualquier evento adverso (aumento de tasas o caída de ingresos) puede revertir la recuperación.",
        accion: "Priorizar amortización de deuda costosa y evitar nueva deuda financiera en 2026.",
        icono: "alert-triangle",
    },
    {
        tipo: "warning",
        titulo: "Sin inventarios: modelo frágil a variaciones de demanda",
        descripcion:
            "Al ser empresa de servicios puros, los ingresos dependen 100% de la capacidad de contratación. Una caída de contratos impacta directamente en caja sin amortiguadores.",
        accion: "Construir un backlog de contratos equivalente a 6 meses de ingresos proyectados.",
        icono: "package-x",
    },
    {
        tipo: "info",
        titulo: "Patrimonio creció de 2 MM a 129 MM COP (2023→2024)",
        descripcion:
            "La inyección de capital fue el detonante de la recuperación. Sin ella, la empresa habría entrado en insolvencia técnica. Este evento es no recurrente y no se debe presupuestar como fuente habitual de fondos.",
        accion: "Construir reservas patrimoniales propias a través de utilidades retenidas.",
        icono: "info",
    },
];

// ─── FORTALEZAS DETECTADAS ──────────────────────────────────────────────────
const fortalezas = [
    {
        titulo: "Recuperación excepcional en 24 meses",
        descripcion: "Score de auditoría global: 2.8 → 9.6 en dos años. Pocas empresas logran este nivel de saneamiento en tan poco tiempo.",
        icono: "award",
    },
    {
        titulo: "Liquidez sólida al cierre 2025",
        descripcion: "Razón corriente de 5.59x y capital de trabajo positivo (+35MM COP). La empresa puede operar sin crédito de corto plazo.",
        icono: "shield-check",
    },
    {
        titulo: "Generación positiva de EBITDA",
        descripcion: "Margen EBITDA de 14.2% en 2025 demuestra que el modelo de negocio es viable y genera caja operativa.",
        icono: "trending-up",
    },
    {
        titulo: "Desapalancamiento acelerado",
        descripcion: "Deuda/Patrimonio bajó de 15x a 1.63x. La estructura de capital está aproximándose a estándares internacionales.",
        icono: "arrow-down-circle",
    },
];

// ─── NARRATIVA: HISTORIA DE LA COMPAÑÍA ─────────────────────────────────────
const historiaNarrativa = [
    {
        año: 2023,
        titulo: "Crisis de Solvencia",
        subtitulo: "Score: 2.8 / 10",
        color: "#ef4444",
        hitos: [
            "Capital de trabajo negativo (-7.8 MM COP): la empresa operaba con déficit",
            "ROE de -415%: pérdidas masivas respecto al patrimonio",
            "DSO de 280 días: el dinero de los clientes tardaba casi 9 meses en cobrar",
            "Deuda/Patrimonio de 15x: apalancamiento extremo",
            "Cobertura de intereses < 1x: no alcanzaba a pagar sus propios intereses",
        ],
        conclusion: "La empresa enfrentó un riesgo real de insolvencia técnica. El modelo operativo generaba pérdidas y los acreedores estaban expuestos.",
    },
    {
        año: 2024,
        titulo: "Reestructuración y Capitalización",
        subtitulo: "Score: 4.2 / 10",
        color: "#f59e0b",
        hitos: [
            "Inyección de capital: patrimonio saltó de ~2 MM a ~129 MM COP",
            "Deuda/Patrimonio redujo de 15x a 4.8x gracias a la capitalización",
            "DSO mejoró a 184 días: inicio de gestión de cartera más rigurosa",
            "Margen EBITDA subió a 8.4%: el negocio comenzó a respirar",
            "Capital de trabajo pasó a positivo (+18.4 MM COP) por primera vez",
        ],
        conclusion: "La inyección de capital fue el punto de inflexión. Sin ella, la recuperación habría sido imposible. La empresa comenzó a normalizar su estructura financiera.",
    },
    {
        año: 2025,
        titulo: "Recuperación Financiera",
        subtitulo: "Score: 9.6 / 10",
        color: "#10b981",
        hitos: [
            "Razón corriente de 5.59x: liquidez excepcional para cubrir obligaciones",
            "ROE positivo (+12%): rentabilidad real para los accionistas por primera vez",
            "DSO redujo a 98 días: gestión de cartera mejorada significativamente",
            "Cobertura de intereses de 3.2x: holgura para servir la deuda",
            "Margen EBITDA de 14.2%: generación de caja operativa consolidada",
        ],
        conclusion: "La empresa completó su proceso de saneamiento y entra a 2026 con bases sólidas. El reto es sostener este desempeño sin depender de nuevas inyecciones de capital.",
    },
];

// ─── DICTAMEN EJECUTIVO FINAL ────────────────────────────────────────────────
const dictamenEjecutivo = {
    titulo: "Dictamen de Auditoría Integral · Cierre 2025",
    estado: "success",
    texto: `La entidad ha protagonizado una recuperación financiera excepcional en el período 2023–2025, 
transitando de una posición de crisis técnica — con patrimonio casi nulo, pérdidas acumuladas y ciclos 
de cobro de más de nueve meses — hacia una estructura saludable con liquidez sólida, rentabilidad 
positiva y desapalancamiento acelerado.

El catalizador principal fue la capitalización de 2024, que normalizó el balance y permitió que la 
gestión operativa generara resultados por méritos propios en 2025. Sin embargo, persisten dos vectores 
de riesgo que requieren atención prioritaria: (i) el ciclo de cobro, que aunque mejoró considerablemente 
sigue siendo el doble del benchmark sectorial, y (ii) el nivel de endeudamiento del 62%, que limita la 
capacidad de absorber shocks externos.

Para 2026, la prioridad estratégica debe ser convertir la recuperación en crecimiento sostenible: 
diversificar la base de clientes, construir reservas patrimoniales propias y acelerar el proceso de 
desapalancamiento hasta situar la deuda/patrimonio por debajo de 1.0x.`,
    recomendaciones: [
        "Implementar política de gestión de cartera con descuentos por pronto pago",
        "Priorizar amortización de deuda costosa y evitar nueva deuda financiera en 2026",
        "Diversificar base de clientes para reducir riesgo de concentración",
        "Construir reservas patrimoniales equivalentes al 20% de las utilidades anuales",
        "Establecer límite de DSO máximo de 60 días como meta operativa para 2026",
    ],
};
