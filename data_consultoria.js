/**
 * data_consultoria.js
 * Datos del Informe de Consultoría Financiera y Plan de Ejecución 2026.
 * Todos los valores provienen de los data_*.js de cada módulo.
 * NO hardcodear datos en el HTML — todo se renderiza dinámicamente desde este archivo.
 */

// ─── SPIDER CHART: CALIFICACIONES POR VARIABLE ─────────────────────────────
const insightSpiderChart = "El perfil financiero de la organización muestra un desarrollo asimétrico: la Liquidez domina con 9.5/10, sustentada por la capitalización de 2024, mientras que la Actividad registra el puntaje más bajo (3.5/10) por un ciclo de cobro de 98 días. El equilibrio sostenible en 2026 exige convertir la fortaleza de caja en velocidad operativa.";

const saludFinanciera = [
    { variable: "Liquidez", score: 9.5, color: "#3b82f6", icono: "droplets", lectura: "Posición excepcionalmente robusta post-capitalización. Razón corriente de 5.59x y cash ratio de 0.95x superan ampliamente los benchmarks sectoriales." },
    { variable: "Rentabilidad", score: 7.5, color: "#10b981", icono: "trending-up", lectura: "Recuperación real con ROE del 12% y Margen EBITDA del 14.2%. Aún por debajo del benchmark sectorial (ROE > 15%)." },
    { variable: "Solvencia", score: 6.0, color: "#8b5cf6", icono: "landmark", lectura: "En zona de vigilancia. Endeudamiento Total al 62% (benchmark < 60%). Cobertura de intereses de 3.2x provee margen limitado." },
    { variable: "Actividad", score: 3.5, color: "#ef4444", icono: "activity", lectura: "Punto crítico. DSO de 98 días (benchmark < 60 días) y Ciclo de Efectivo de 87 días drenan la eficiencia operativa." },
    { variable: "Estructura", score: 5.0, color: "#f59e0b", icono: "layers", lectura: "En proceso de equilibrio. Autonomía del 38% (benchmark > 40%) y Deuda/Patrimonio de 1.63x (benchmark < 1.50x)." },
];

// ─── ENFOQUE METODOLÓGICO ───────────────────────────────────────────────────
const enfoqueMetodologico = {
    principio: "La liquidez es vanidad, la rentabilidad es sanidad, pero el flujo de caja es la realidad.",
    pilares: [
        {
            titulo: "Liquidez Dinámica",
            icono: "zap",
            descripcion: "Evalúa no cuánto efectivo tiene la empresa en un momento dado (balance estático), sino qué tan rápido ese dinero regresa tras convertirse en servicio facturado. Es decir, la velocidad del flujo, no el tamaño del tanque."
        },
        {
            titulo: "Optimización de Estructura de Capital",
            icono: "scale",
            descripcion: "Determina si la empresa utiliza el mínimo endeudamiento posible de terceros para generar el máximo valor posible para los accionistas. En términos sencillos: cuánto del negocio pertenece realmente a sus dueños."
        },
        {
            titulo: "Resiliencia Sistémica",
            icono: "shield",
            descripcion: "Mide la capacidad de la organización para absorber shocks externos —como la salida de un cliente clave, un alza de tasas de interés o una desaceleración de la demanda— sin comprometer la operación ni recurrir a capitalizaciones de emergencia."
        },
    ],
};

// ─── DIAGNÓSTICO TRANSVERSAL ────────────────────────────────────────────────
const diagnosticoTransversal = {
    titulo: "La Paradoja de la \"Robustez Frágil\"",
    subtitulo: "Análisis cross-indicator para Alta Dirección",
    parrafos: [
        "La empresa presenta al cierre de 2025 una Razón Corriente de 5.59x (excepcionalmente alta), lo cual proyecta una imagen de fortaleza incuestionable. Sin embargo, al cruzar este dato con el DSO de 98 días del módulo de Actividad, se revela que esta solidez proviene mayoritariamente de la inyección de capital realizada en 2024, y no de una generación orgánica de flujo de caja.",
        "Un DSO que casi duplica el benchmark sectorial (60 días) significa que la organización está financiando el capital de trabajo de sus clientes institucionales a costo cero, mientras simultáneamente mantiene un Endeudamiento Total del 62% con costos financieros reales. Esta ineficiencia genera un taponamiento operativo que, de no corregirse, consumirá progresivamente el excedente de caja disponible y podría requerir una nueva capitalización hacia 2027.",
        "El ROA de 4.2% (por debajo del ideal del 5%) confirma esta lectura: los activos de la empresa aún no están produciendo al ritmo que la inversión realizada exige. El ROE del 12% —aunque positivo por primera vez— se encuentra apalancado por el Multiplicador de Capital de 2.63x, lo cual indica que parte del retorno al accionista proviene de deuda, no de eficiencia operativa pura."
    ],
    conclusion: "La empresa ha salido de la zona de peligro, pero la recuperación no se ha consolidado de manera orgánica. La prioridad estratégica para 2026 es convertir la liquidez estática en velocidad operativa.",
    cruces: [
        { indicador1: "Razón Corriente", valor1: "5.59x", modulo1: "Liquidez", indicador2: "DSO", valor2: "98 días", modulo2: "Actividad", hallazgo: "Liquidez alta pero lenta: el dinero está, pero no fluye." },
        { indicador1: "ROE", valor1: "12%", modulo1: "Rentabilidad", indicador2: "Multiplicador Capital", valor2: "2.63x", modulo2: "Estructura", hallazgo: "Retorno apalancado: parte del ROE proviene de deuda, no de eficiencia." },
        { indicador1: "Endeudamiento", valor1: "62%", modulo1: "Solvencia", indicador2: "Cash Ratio", valor2: "0.95x", modulo2: "Liquidez", hallazgo: "Paradoja: paga intereses sobre deuda teniendo efectivo ocioso." },
    ],
};

// ─── PLAN DE EJECUCIÓN 2026 ─────────────────────────────────────────────────
const planEjecucion = [
    {
        fase: "Q1 2026",
        tipo: "Táctica",
        subtitulo: "Asegurar el Terreno",
        color: "#3b82f6",
        icono: "target",
        planes: [
            {
                titulo: "Programa de Tesorería Activa",
                etiqueta: "Costo de Oportunidad",
                icono: "piggy-bank",
                descripcion: "La empresa mantiene un Cash Ratio de 0.95x, lo que significa que casi el 100% de los pasivos corrientes están cubiertos con efectivo en bancos. Si bien esto elimina riesgo de impago, genera un costo de oportunidad significativo: ese dinero pierde valor frente a la inflación. Se recomienda trasladar el 40% de los excedentes a instrumentos de renta fija de alta liquidez (CDTs a 90 días, fondos de inversión colectiva), generando ingresos financieros no operativos que cubran al menos el 15% de los gastos administrativos del trimestre.",
                indicadorClave: "Cash Ratio",
                valorActual: "0.95x",
                meta: "0.55x (liberando 40%)",
            },
            {
                titulo: "Célula de Recaudo de Choque",
                etiqueta: "Aceleración de Flujo",
                icono: "clock",
                descripcion: "La organización presenta un DSO de 98 días que inmoviliza capital de trabajo equivalente a más de tres meses de facturación. Se recomienda constituir un equipo dedicado exclusivamente a normalizar la cartera con antigüedad superior a 60 días, ofreciendo descuentos por pronto pago (esquema 2/10 net 30). La meta es reducir el DSO de 98 a 80 días durante el primer trimestre, liberando aproximadamente 4 MM COP en liquidez atrapada que deberá destinarse inmediatamente a la amortización de deuda financiera costosa.",
                indicadorClave: "DSO",
                valorActual: "98 días",
                meta: "80 días",
            },
            {
                titulo: "Blindaje de Gasto Operativo",
                etiqueta: "Disciplina Zero-Base",
                icono: "shield-check",
                descripcion: "La solidez aparente de la caja genera un riesgo invisible: la relajación del control de costos. La empresa debe implementar un esquema donde cada egreso operativo esté directamente vinculado a la generación de ingreso facturable del mes en curso. El objetivo es sostener el Margen Operativo por encima del 18.5% alcanzado al cierre de 2025, asegurando que la rentabilidad se sostenga por mérito operativo y no exclusivamente por la fortaleza del balance heredado de la capitalización.",
                indicadorClave: "Margen Operativo",
                valorActual: "18.5%",
                meta: "> 18.5%",
            },
        ],
    },
    {
        fase: "H1 2026",
        tipo: "Operativa",
        subtitulo: "Limpiar la Estructura",
        color: "#8b5cf6",
        icono: "wrench",
        planes: [
            {
                titulo: "Desapalancamiento Selectivo",
                etiqueta: "Amortización Prioritaria",
                icono: "trending-down",
                descripcion: "La empresa debe utilizar el superávit operativo generado en el primer trimestre para reducir el Endeudamiento Total del 62% al 55%. La prioridad son las obligaciones con tasa variable, que representan el mayor riesgo financiero ante posibles alzas del Banco de la República. Reducir el apalancamiento mejorará automáticamente la Cobertura de Intereses (actualmente en 3.2x) hacia niveles de 4.5x, posicionando a la organización en un rango crediticio más favorable para futuras negociaciones bancarias.",
                indicadorClave: "Endeudamiento Total",
                valorActual: "62%",
                meta: "55%",
            },
            {
                titulo: "Optimización del ROA",
                etiqueta: "Productividad de Activos",
                icono: "cpu",
                descripcion: "Con un ROA de 4.2%, la empresa no alcanza el estándar del 5% que valida la eficiencia de sus activos. Se recomienda iniciar un proceso de depuración: todo activo que no contribuya directamente a la rotación actual de 1.25x debe ser evaluado para su liquidación o reconversión. El capital liberado deberá reinvertirse en tecnología de automatización de servicios, permitiendo escalar la facturación sin incrementar proporcionalmente la nómina, y elevando así el retorno de cada peso invertido en infraestructura.",
                indicadorClave: "ROA",
                valorActual: "4.2%",
                meta: "> 5.0%",
            },
            {
                titulo: "Renegociación del Ciclo con Proveedores",
                etiqueta: "Apalancamiento Comercial",
                icono: "handshake",
                descripcion: "La posición de liquidez excepcional (Razón Corriente de 5.59x) otorga a la empresa un poder de negociación significativo. Se recomienda ofrecer a los proveedores estratégicos pago de contado o a 15 días a cambio de descuentos comerciales del 3% al 5%. Este ahorro financiero por gestión de compras debe compensar, en el acumulado semestral, al menos el 30% del costo financiero de la deuda remanente, mejorando simultáneamente el Margen Bruto y fortaleciendo las relaciones comerciales de largo plazo.",
                indicadorClave: "Margen Bruto",
                valorActual: "Actual",
                meta: "+3% a +5%",
            },
        ],
    },
    {
        fase: "FY 2026",
        tipo: "Estratégica",
        subtitulo: "Crecimiento y Creación de Valor",
        color: "#10b981",
        icono: "rocket",
        planes: [
            {
                titulo: "Institucionalización de Reservas Patrimoniales",
                etiqueta: "Autonomía Financiera",
                icono: "vault",
                descripcion: "Para eliminar la dependencia de inyecciones externas de capital (como la ejecutada en 2024), la organización debe establecer una política obligatoria de retención del 20% de las utilidades netas anuales como reserva patrimonial. Esta medida elevará el indicador de Propiedad y Autonomía del 38% al 45% al cierre de 2026, acercando a la empresa al umbral del 50% que otorga soberanía estratégica real: la capacidad de financiar su propia expansión sin depender de la banca ni de nuevos aportes de los socios.",
                indicadorClave: "Propiedad y Autonomía",
                valorActual: "38%",
                meta: "45%",
            },
            {
                titulo: "Diversificación del Riesgo de Concentración",
                etiqueta: "Estabilidad de Ingresos",
                icono: "git-branch",
                descripcion: "Al ser una compañía de servicios puros sin inventarios, la totalidad de los ingresos depende de la capacidad de contratación. La empresa debe ejecutar una estrategia comercial donde ningún cliente individual represente más del 15% de la facturación anual. Esto protegerá el Margen EBITDA (14.2%) contra la salida accidental de un contrato grande y reducirá la volatilidad del flujo de caja operativo, proyectando una estabilidad de grado institucional que facilite la atracción de talento, inversión y nuevas líneas de crédito.",
                indicadorClave: "Margen EBITDA",
                valorActual: "14.2%",
                meta: "> 14.2% (protección)",
            },
            {
                titulo: "Consolidación del ROE Institucional",
                etiqueta: "Creación de Valor Sostenible",
                icono: "gem",
                descripcion: "La meta de cierre 2026 es estabilizar el ROE en un 15% sostenido (actualmente en 12%). Este objetivo se alcanzará mediante la convergencia de tres palancas: (a) mejora de los márgenes operativos por eficiencia de costos, (b) reducción de la carga financiera por amortización acelerada de deuda, y (c) uso disciplinado del Multiplicador de Capital de 2.63x. Al lograr esta cifra, la organización dejará de ser percibida como un negocio en fase de recuperación para posicionarse como un activo eficiente capaz de generar valor sostenible para sus accionistas.",
                indicadorClave: "ROE",
                valorActual: "12%",
                meta: "15%",
            },
        ],
    },
];
