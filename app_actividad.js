// Estado global de Actividad
let charts = {};
let currentLanguage = 'es';
let dynamicDataError = false;
let dbInsights = []; // Almacén para insights desde la BD

// El empresaId y currentCompany ya se definen en api.js

// Lista de 8 indicadores de actividad
const indicatorKeys = [
    'ciclo_efectivo', 'dso', 'dio', 'dpo',
    'rotacion_activos', 'rotacion_cartera', 'rotacion_inventarios', 'rotacion_proveedores'
];

// Metadatos de los indicadores para el Glosario y UI
const activityIndicators = {
    ciclo_efectivo: {
        name: { es: 'Ciclo de Conversión de Efectivo', en: 'Cash Conversion Cycle' },
        definition: {
            es: 'Mide el tiempo en días que transcurre desde la inversión en inventarios hasta el cobro efectivo.',
            en: 'Measures the time in days from inventory investment to effective collection.'
        },
        formula: 'DSO + DIO - DPO',
        target: '< 60 días',
        unit: ' días'
    },
    dso: {
        name: { es: 'Días de Cartera (DSO)', en: 'Days Sales Outstanding' },
        definition: {
            es: 'Indica el número promedio de días que tarda la empresa en cobrar sus cuentas.',
            en: 'Indicates the average number of days the company takes to collect its accounts.'
        },
        formula: '(Cuentas por Cobrar / Ventas) * 365',
        target: '< 90 días',
        unit: ' días'
    },
    dio: {
        name: { es: 'Días de Inventario (DIO)', en: 'Days Inventory Outstanding' },
        definition: {
            es: 'Representa el número promedio de días que el inventario permanece almacenado.',
            en: 'Represents the average number of days inventory remains stored.'
        },
        formula: '(Inventario / Costo de Ventas) * 365',
        target: '< 45 días',
        unit: ' días'
    },
    dpo: {
        name: { es: 'Días de Proveedores (DPO)', en: 'Days Payables Outstanding' },
        definition: {
            es: 'Mide el número promedio de días que la empresa tarda en pagar a sus proveedores.',
            en: 'Measures the average number of days the company takes to pay its suppliers.'
        },
        formula: '(Cuentas por Pagar / Compras) * 365',
        target: '> 30 días',
        unit: ' días'
    },
    rotacion_activos: {
        name: { es: 'Rotación de Activos Totales', en: 'Total Asset Turnover' },
        definition: {
            es: 'Eficiencia con la que la empresa utiliza sus activos para generar ventas.',
            en: 'Efficiency with which the company uses its assets to generate sales.'
        },
        formula: 'Ventas / Activos Totales',
        target: '> 0.50 x',
        unit: ' x'
    },
    rotacion_cartera: {
        name: { es: 'Rotación de Cartera', en: 'Receivables Turnover' },
        definition: {
            es: 'Velocidad con que las cuentas por cobrar se convierten en efectivo.',
            en: 'Speed at which receivables are converted into cash.'
        },
        formula: 'Ventas / Cuentas por Cobrar',
        target: '> 0.80 x',
        unit: ' x'
    },
    rotacion_inventarios: {
        name: { es: 'Rotación de Inventarios', en: 'Inventory Turnover' },
        definition: {
            es: 'Número de veces que se renueva el inventario durante un periodo.',
            en: 'Number of times inventory is renewed during a period.'
        },
        formula: 'Costo de Ventas / Inventario',
        target: '> 4.00 x',
        unit: ' x'
    },
    rotacion_proveedores: {
        name: { es: 'Rotación de Proveedores', en: 'Payables Turnover' },
        definition: {
            es: 'Velocidad con que la empresa liquida sus cuentas por pagar.',
            en: 'Speed at which the company settles its payables.'
        },
        formula: 'Compras / Cuentas por Pagar',
        target: '< 6.00 x',
        unit: ' x'
    }
};

// Función para filtrar datos de actividad
function filterData() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';

    // Usar window.activityData o la global (ahora se actualizan juntas en initializeDashboard)
    let localData = window.activityData && window.activityData.length > 0 ? window.activityData : 
                   (typeof activityData !== 'undefined' ? activityData : []);
    
    if (!localData || localData.length === 0) return [];

    let filtered = localData.filter(d => d.year && d.period);

    if (yearFilter !== 'all' && yearFilter !== 'Todos') {
        filtered = filtered.filter(d => d.year === parseInt(yearFilter));
    }

    if (quarterFilter !== 'all' && quarterFilter !== 'Todos') {
        filtered = filtered.filter(d => d.quarter === quarterFilter);
    }

    if (monthFilter !== 'all' && monthFilter !== 'Todos') {
        filtered = filtered.filter(d => d.period === parseInt(monthFilter));
    }

    return filtered.sort((a, b) => {
        if (a.year !== b.year) return a.year - b.year;
        return a.period - b.period;
    });
}

// Plugin personalizado para etiquetas de tiempo (Años y Trimestres en el eje X)
const timeLabelsPlugin = {
    id: 'timeLabels',
    afterDraw: (chart) => {
        const ctx = chart.ctx;
        const xAxis = chart.scales.x;
        if (!chart.data.datasets[0]?.data.length) return;

        const data = filterData();
        const yearGroups = {};
        data.forEach((d, index) => {
            if (!yearGroups[d.year]) yearGroups[d.year] = { startIndex: index, endIndex: index, quarters: {} };
            yearGroups[d.year].endIndex = index;
            if (!yearGroups[d.year].quarters[d.quarter]) yearGroups[d.year].quarters[d.quarter] = { startIndex: index, endIndex: index };
            yearGroups[d.year].quarters[d.quarter].endIndex = index;
        });

        ctx.save();
        ctx.textAlign = 'center';
        Object.keys(yearGroups).forEach(year => {
            const group = yearGroups[year];
            const startX = xAxis.getPixelForValue(group.startIndex);
            const endX = xAxis.getPixelForValue(group.endIndex);
            const centerX = (startX + endX) / 2;

            ctx.font = 'bold 10px sans-serif';
            ctx.fillStyle = '#2d3748';
            ctx.fillText(year, centerX, chart.chartArea.bottom + 35);

            ctx.font = '8px sans-serif';
            ctx.fillStyle = '#718096';
            Object.keys(group.quarters).forEach(q => {
                const qGroup = group.quarters[q];
                const qCenterX = (xAxis.getPixelForValue(qGroup.startIndex) + xAxis.getPixelForValue(qGroup.endIndex)) / 2;
                ctx.fillText(q, qCenterX, chart.chartArea.bottom + 22);
            });
        });
        ctx.restore();
    }
};

// Función para buscar hallazgos en el repositorio de actividad
function getAuditInsights(year, filter) {
    if (typeof auditRepositoryActividad === 'undefined') return null;
    if (filter === 'all' || filter === 'Todos') {
        return auditRepositoryActividad[year]?.Annual;
    }
    return auditRepositoryActividad[year]?.[filter];
}

// Función para buscar hallazgos comparativos
function getComparativeInsights(filter) {
    if (typeof auditRepositoryActividad === 'undefined') return null;
    if (filter === 'all' || filter === 'Todos') return null;

    // Los meses y trimestres comparativos están directamente bajo Comparative
    return auditRepositoryActividad.Comparative?.[filter] || null;
}


// Función para actualizar el análisis (Audit Insights) con el diseño de pestañas (TV Style)
function updateAnalysis(indicatorKey, hasData = true) {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';
    
    const tabsContainer = document.getElementById(`tabs-${indicatorKey}`);
    if (!tabsContainer) return;
    tabsContainer.innerHTML = '';

    if (!hasData) {
        const btn = document.createElement('button');
        btn.className = 'insight-tab-btn';
        btn.innerHTML = `<i data-lucide="file-warning" style="color: #64748b"></i> ANÁLISIS NO DISPONIBLE`;
        btn.onclick = () => toggleInsightOverlay(indicatorKey, { 
            id: 'nodata', label: 'ANÁLISIS NO DISPONIBLE', icon: 'file-warning', color: '#64748b', 
            title: 'DATOS NUMÉRICOS INSUFICIENTES', 
            text: 'No hay registros numéricos suficientes en el periodo seleccionado para emitir un dictamen de Inteligencia Artificial.' 
        }, btn);
        tabsContainer.appendChild(btn);
        if (typeof lucide !== 'undefined') lucide.createIcons();
        return;
    }

    let itemToRender = null;
    let isComparative = (yearFilter === 'all' || yearFilter === 'Todos');

    // 1. PRIORIDAD: Búsqueda dinámica en BD
    if (dbInsights && dbInsights.length > 0) {
        let dbKey = indicatorKey === 'ciclo_efectivo' ? 'ciclo_conversion_efectivo' : indicatorKey;
        const targetYear = (yearFilter === 'all' || yearFilter === 'Todos') ? 2025 : parseInt(yearFilter);
        const isMonthSpecific = monthFilter !== 'all' && monthFilter !== 'Todos';
        const expectedPeriodKey = isMonthSpecific ? ('M' + monthFilter) : (quarterFilter === 'all' || quarterFilter === 'Todos' ? 'Annual' : quarterFilter);

        let dynamicInsight = dbInsights.find(ins => 
            (ins.year == targetYear || ins.periodo_ano == targetYear) && 
            ins.period_key === expectedPeriodKey &&
            (ins.indicador_key.toLowerCase() === indicatorKey.toLowerCase() || ins.indicador_key.toLowerCase() === dbKey.toLowerCase())
        );

        if (dynamicInsight) {
            itemToRender = {
                title: dynamicInsight.titulo || "Análisis de Indicador",
                text: dynamicInsight.contenido || (
                    (dynamicInsight.analisis_positivo ? `**Aspecto Positivo:** ${dynamicInsight.analisis_positivo}\n\n` : '') +
                    (dynamicInsight.analisis_negativo ? `**Aspecto Negativo:** ${dynamicInsight.analisis_negativo}\n\n` : '') +
                    (dynamicInsight.recomendacion ? `**Recomendación:** ${dynamicInsight.recomendacion}` : '')
                ),
                type: dynamicInsight.tipo || dynamicInsight.status || 'info'
            };
        }
    }

    // 2. Fallback al repositorio estático si no hay    // FALLBACK - Only for MAS CONSULTA (empresaId 1)
    if (!itemToRender && empresaId === 1) {
        if (isComparative) {
            const compData = getComparativeInsights(monthFilter !== 'all' ? monthFilter : quarterFilter);
            if (compData && compData.indicators) {
                itemToRender = compData.indicators[indicatorKey];
            }
        } else {
            const yearData = getAuditInsights(yearFilter, quarterFilter);
            if (yearData && yearData.indicators) {
                itemToRender = yearData.indicators[indicatorKey];
            }
        }
    }

    if (!itemToRender) return;

    const rawText = itemToRender.text || '';
    const sections = [
        { id: 'positivo', label: 'POSITIVO', icon: 'check-circle', color: '#059669', title: 'FORTALEZA DETECTADA', regex: /\*\*Aspecto Positivo:\*\*\s*([\s\S]*?)(?=\*\*Aspecto Negativo:|\*\*Recomendación:|$)/ },
        { id: 'negativo', label: 'ALERTA', icon: 'alert-triangle', color: '#dc2626', title: 'ALERTA DE SEGURIDAD', regex: /\*\*Aspecto Negativo:\*\*\s*([\s\S]*?)(?=\*\*Recomendación:|$)/ },
        { id: 'recomendacion', label: 'ACCIÓN', icon: 'zap', color: '#2563eb', title: 'RECOMENDACIÓN DE AUDITORÍA', regex: /\*\*Recomendación:\*\*\s*([\s\S]*?)$/ }
    ];

    sections.forEach(section => {
        const match = rawText.match(section.regex);
        const text = match ? match[1].trim() : '';
        
        if (text) {
            const btn = document.createElement('button');
            btn.className = 'insight-tab-btn';
            btn.innerHTML = `<i data-lucide="${section.icon}" style="color: ${section.color}"></i> ${section.label}`;
            btn.onclick = () => toggleInsightOverlay(indicatorKey, { ...section, text }, btn);
            tabsContainer.appendChild(btn);
        }
    });

    // Fallback para texto plano si no hay secciones pero sí texto
    if (tabsContainer.innerHTML === '' && rawText.trim()) {
        const btn = document.createElement('button');
        btn.className = 'insight-tab-btn';
        btn.innerHTML = `<i data-lucide="info" style="color: #1e3a8a"></i> ANÁLISIS`;
        btn.onclick = () => toggleInsightOverlay(indicatorKey, { id: 'general', label: 'ANÁLISIS', icon: 'info', color: '#1e3a8a', title: 'Análisis de Auditoría', text: rawText }, btn);
        tabsContainer.appendChild(btn);
    }

    if (typeof lucide !== 'undefined') lucide.createIcons();
}

// Función global corregida (estilo Liquidez) para manejar el overlay y pestañas
window.toggleInsightOverlay = function(indicatorKey, section, btn) {
    const overlay = document.getElementById(`analysis-${indicatorKey}`);
    const tabs = document.getElementById(`tabs-${indicatorKey}`).querySelectorAll('.insight-tab-btn');
    const isActive = btn.classList.contains('active');

    // Resetear todas las pestañas de esta tarjeta
    tabs.forEach(t => t.classList.remove('active'));

    if (isActive) {
        overlay.classList.remove('active');
    } else {
        btn.classList.add('active');
        overlay.innerHTML = `
            <div class="glow-bar" style="background: linear-gradient(90deg, ${section.color}, transparent);"></div>
            <div class="close-overlay" onclick="event.stopPropagation(); hideInsightOverlay('${indicatorKey}');">
                <i data-lucide="x" style="width: 14px; height: 14px; color: #1e293b;"></i>
            </div>
            <div style="display: flex; align-items: center; gap: 10px; margin-bottom: 12px;">
                <div style="color: ${section.color}; display: flex; align-items: center; justify-content: center;">
                    <i data-lucide="${section.icon}" style="width: 18px; height: 18px;"></i>
                </div>
                <div style="font-size: 0.7rem; text-transform: uppercase; letter-spacing: 0.12em; font-weight: 800; color: #1e293b;">
                    ${section.title}
                </div>
            </div>
            <div style="color: #475569; font-size: 0.85rem; line-height: 1.65; font-weight: 500; padding-right: 25px;">
                ${typeof marked !== 'undefined' ? marked.parse(section.text) : section.text}
            </div>
        `;
        overlay.classList.add('active');
        if (typeof lucide !== 'undefined') lucide.createIcons();
    }
};

window.hideInsightOverlay = function(indicatorKey) {
    const overlay = document.getElementById(`analysis-${indicatorKey}`);
    if (overlay) overlay.classList.remove('active');
    
    // También quitar clase active de las pestañas
    const tabs = document.getElementById(`tabs-${indicatorKey}`)?.querySelectorAll('.insight-tab-btn');
    if (tabs) tabs.forEach(t => t.classList.remove('active'));
};

// Colores por indicador
function getIndicatorColor(key, alpha = 1) {
    const colors = {
        ciclo_efectivo: `rgba(30, 58, 138, ${alpha})`,      // Blue 800
        dso: `rgba(22, 101, 52, ${alpha})`,              // Green 800
        dio: `rgba(234, 88, 12, ${alpha})`,             // Orange 600
        dpo: `rgba(202, 138, 4, ${alpha})`,             // Yellow 600
        rotacion_activos: `rgba(185, 28, 28, ${alpha})`, // Red 700
        rotacion_cartera: `rgba(67, 56, 202, ${alpha})`, // Indigo 700
        rotacion_inventarios: `rgba(107, 70, 193, ${alpha})`, // Purple 700
        rotacion_proveedores: `rgba(219, 39, 119, ${alpha})` // Pink 600
    };
    return colors[key] || `rgba(107, 114, 128, ${alpha})`;
}

// Colores por año para el modo comparativo interanual
const yearColors = {
    2023: { bg: 'rgba(59, 130, 246, 0.75)', border: 'rgba(59, 130, 246, 1)' },   // Azul
    2024: { bg: 'rgba(16, 185, 129, 0.75)', border: 'rgba(16, 185, 129, 1)' },   // Verde
    2025: { bg: 'rgba(245, 158, 11, 0.75)', border: 'rgba(245, 158, 11, 1)' },   // Ámbar
};

// Nombres de meses
const monthNames = {
    es: ['', 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    en: ['', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
};

// Función para actualizar un gráfico individual
function updateSingleChart(indicatorKey) {
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';
    const yearFilter = document.getElementById('yearFilter').value;
    const isMonthSpecific = monthFilter !== 'all' && monthFilter !== 'Todos';
    let hasData = true;

    const canvas = document.getElementById(`chart${indicatorKey.charAt(0).toUpperCase() + indicatorKey.slice(1)}`);
    const noDataId = `no-data-${indicatorKey}`;
    const noDataOverlay = document.getElementById(noDataId);

    if (!canvas) return;

    let config;
    const metadata = activityIndicators[indicatorKey] || { name: indicatorKey, unit: '' };

    if (isMonthSpecific) {
        // MODO COMPARATIVO INTERANUAL POR MES
        const monthNum = parseInt(monthFilter);
        let monthData = activityData.filter(d => d.period === monthNum);

        if (yearFilter !== 'all' && yearFilter !== 'Todos') {
            monthData = monthData.filter(d => d.year === parseInt(yearFilter));
        }

        monthData.sort((a, b) => a.year - b.year);

        if (!monthData || monthData.length === 0) {
            if (noDataOverlay) noDataOverlay.classList.remove('hidden');
            canvas.classList.add('hidden');
            updateAnalysis(indicatorKey, false);
            return;
        } else {
            if (noDataOverlay) noDataOverlay.classList.add('hidden');
            canvas.classList.remove('hidden');
        }

        const labels = monthData.map(d => d.year.toString());
        const values = monthData.map(d => d[indicatorKey]);
        hasData = values.some(v => v !== null && v !== undefined && Math.abs(v) > 0.001);
        const backgroundColors = monthData.map(d => (yearColors[d.year] || yearColors[2023]).bg);
        const borderColors = monthData.map(d => (yearColors[d.year] || yearColors[2023]).border);
        const monthLabel = (monthNames[currentLanguage] || monthNames.es)[monthNum];

        config = {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: `${metadata.name[currentLanguage] || metadata.name.es} — ${monthLabel}`,
                    data: values,
                    backgroundColor: backgroundColors,
                    borderColor: borderColors,
                    borderWidth: 2,
                    borderRadius: 6,
                    datalabels: {
                        display: true,
                        anchor: 'end', align: 'top', offset: 4,
                        formatter: (v) => {
                            if (v === null || v === undefined) return '0.0';
                            return typeof v === 'number' ? v.toFixed(2) : v;
                        },
                        font: { size: 10, weight: 'bold' },
                        color: getIndicatorColor(indicatorKey)
                    }
                }]
            },
            plugins: [ChartDataLabels],
            options: {
                responsive: true, maintainAspectRatio: false,
                layout: { padding: { top: 30, left: 5, right: 5, bottom: 10 } },
                plugins: {
                    legend: { display: true, position: 'top', labels: { font: { size: 10 } } },
                    tooltip: {
                        callbacks: { label: (ctx) => `${monthLabel} ${ctx.label}: ${ctx.raw != null ? ctx.raw.toFixed(2) : '-'}${metadata.unit}` }
                    }
                },
                scales: {
                    y: { grid: { borderDash: [2, 2] }, ticks: { font: { size: 9 } } },
                    x: { grid: { display: false }, ticks: { font: { size: 11, weight: 'bold' } } }
                }
            }
        };
    } else {
        // MODO TENDENCIA (Líneas)
        const data = filterData();

        if (!data || data.length === 0) {
            if (noDataOverlay) noDataOverlay.classList.remove('hidden');
            canvas.classList.add('hidden');
            updateAnalysis(indicatorKey, false);
            return;
        } else {
            if (noDataOverlay) noDataOverlay.classList.add('hidden');
            canvas.classList.remove('hidden');
        }

        const values = data.map(d => d[indicatorKey]);
        hasData = values.some(v => v !== null && v !== undefined && Math.abs(v) > 0.001);
        const labels = data.map(d => d.period.toString());

        config = {
            type: 'line',
            data: {
                labels: labels,
                datasets: [{
                    label: metadata.name[currentLanguage] || metadata.name.es,
                    data: values,
                    borderColor: getIndicatorColor(indicatorKey),
                    backgroundColor: getIndicatorColor(indicatorKey, 0.1),
                    borderWidth: 3,
                    tension: 0.4,
                    fill: {
                        target: 'origin',
                        above: getIndicatorColor(indicatorKey, 0.05)
                    },
                    pointRadius: 4,
                    pointBackgroundColor: '#fff',
                    pointBorderWidth: 2,
                    pointHoverRadius: 6,
                    datalabels: {
                        display: values.length < 24,
                        align: 'top',
                        font: { size: 10, weight: '600', family: 'Inter' },
                        formatter: (v) => {
                            if (v === null || v === undefined) return '0.0' + (metadata.unit || '');
                            return (typeof v === 'number' ? v.toFixed(1) : v) + (metadata.unit || '');
                        },
                        color: getIndicatorColor(indicatorKey),
                        padding: 4
                    }
                }]
            },
            plugins: [timeLabelsPlugin, ChartDataLabels],
            options: {
                responsive: true,
                maintainAspectRatio: false,
                layout: { padding: { bottom: 45, left: 10, right: 10, top: 25 } },
                plugins: {
                    legend: { display: false },
                    tooltip: {
                        backgroundColor: 'rgba(255, 255, 255, 0.95)',
                        titleColor: '#1e293b',
                        bodyColor: '#1e293b',
                        borderColor: '#e2e8f0',
                        borderWidth: 1,
                        padding: 12,
                        boxPadding: 6,
                        usePointStyle: true,
                        callbacks: {
                            label: (ctx) => {
                                const val = ctx.raw;
                                const formattedVal = (val !== null && val !== undefined) ? (typeof val === 'number' ? val.toFixed(2) : val) : '0.00';
                                return ` ${metadata.name[currentLanguage] || metadata.name.es}: ${formattedVal}${metadata.unit || ''}`;
                            }
                        }
                    }
                },
                scales: {
                    y: {
                        grid: { color: '#f1f5f9', borderDash: [4, 4], drawBorder: false },
                        ticks: { font: { size: 10, family: 'Inter' }, color: '#64748b' }
                    },
                    x: {
                        grid: { display: false },
                        ticks: { display: false }
                    }
                }
            }
        };
    }

    if (charts[indicatorKey]) charts[indicatorKey].destroy();
    charts[indicatorKey] = new Chart(canvas.getContext('2d'), config);
    updateAnalysis(indicatorKey, hasData);
}

// Función para mostrar el Reporte de Realida// Función para mostrar el Reporte de Realidad Financiera Anual (estilo Lean Premium - siempre visible)
function updateDictamen() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const container = document.getElementById('dictamen-container');

    if (!container) return;

    const monthFilter = document.getElementById('monthFilter')?.value || 'all';
    const isMonthSpecific = monthFilter !== 'all' && monthFilter !== 'Todos';

    let targetYear = (yearFilter === 'all' || yearFilter === 'Todos') ? 2025 : parseInt(yearFilter);
    let periodKey = isMonthSpecific ? ('M' + monthFilter) : (quarterFilter === 'all' || quarterFilter === 'Todos' ? 'Annual' : quarterFilter);

    // 1. PRIORIDAD: Buscar en Insights dinámicos (Base de Datos)
    let dynamicReport = null;
    if (dbInsights && dbInsights.length > 0) {
        dynamicReport = dbInsights.find(ins => {
            const insYear = ins.year || ins.periodo_ano;
            const insKey = (ins.indicador_key || '').toLowerCase();
            return (insYear == targetYear) && 
                   (ins.period_key === periodKey) &&
                   (insKey === 'report' || insKey === 'insight-actividad-ai' || insKey === 'actividad');
        });
    }

    const pos = dynamicReport?.analisis_positivo || (currentLanguage === 'es' ? "No se registran hallazgos positivos." : "No positive findings.");
    const neg = dynamicReport?.analisis_negativo || (currentLanguage === 'es' ? "No hay alertas criticas en este periodo." : "No critical alerts.");
    const acc = dynamicReport?.recomendacion || (currentLanguage === 'es' ? "Mantener monitoreo operativo mensual." : "Maintain monthly monitoring.");

    container.innerHTML = `
        <style>
            .dictamen-lean {
                background: white;
                border-radius: 12px;
                padding: 24px;
                box-shadow: 0 4px 20px rgba(0,0,0,0.03);
                border: 1px solid #f1f5f9;
                margin-bottom: 20px;
                animation: fadeIn 0.4s ease-out;
            }
            .lean-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
                padding-bottom: 12px;
                border-bottom: 1px solid #f8fafc;
            }
            .company-name-lean {
                font-size: 0.9rem;
                font-weight: 800;
                color: #0f172a;
                text-transform: uppercase;
                letter-spacing: -0.01em;
            }
            .status-tag {
                font-size: 0.65rem;
                font-weight: 700;
                color: #10b981;
                display: flex;
                align-items: center;
                gap: 5px;
            }
            .insight-columns-grid {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 20px;
            }
            .insight-card {
                padding: 16px;
                border-radius: 10px;
                font-size: 0.85rem;
                line-height: 1.6;
                color: #475569;
                border-left: 4px solid #e2e8f0;
                background: #fbfcfd;
                transition: all 0.2s ease;
                display: flex;
                flex-direction: column;
                gap: 8px;
            }
            .insight-card:hover {
                background: white;
                box-shadow: 0 6px 15px rgba(0,0,0,0.05);
                transform: translateY(-2px);
            }
            .card-header-icon {
                display: flex;
                align-items: center;
                gap: 8px;
                font-weight: 800;
                font-size: 0.75rem;
                text-transform: uppercase;
            }
            .card-pos { border-color: #10b981; }
            .card-neg { border-color: #f59e0b; }
            .card-acc { border-color: #3b82f6; }
            .insight-text-render {
                text-align: justify;
                hyphens: auto;
            }
            @keyframes fadeIn { from { opacity: 0; transform: translateY(10px); } to { opacity: 1; transform: translateY(0); } }
        </style>
        
        <div class="dictamen-lean">
            <div class="lean-header">
                <div class="company-name-lean">
                    ${currentCompany.name.toUpperCase()}
                    <span class="text-slate-400 font-normal ml-2 lowercase" style="font-size: 0.72rem">Sector: ${currentCompany.sector || 'Consultoría / Servicios'} | Diagnóstico de Actividad</span>
                </div>
                <div class="status-tag">
                    <div style="width: 5px; height: 5px; border-radius: 50%; background: #10b981; box-shadow: 0 0 6px #10b981"></div>
                    PERFIL ACTIVO
                </div>
            </div>

            <div class="insight-columns-grid">
                
                <!-- POSITIVO -->
                <div class="insight-card card-pos">
                    <div class="card-header-icon" style="color: #059669">
                        <i data-lucide="check-circle" size="16"></i> POSITIVO
                    </div>
                    <div class="insight-text-render">${pos}</div>
                </div>

                <!-- ALERTA -->
                <div class="insight-card card-neg">
                    <div class="card-header-icon" style="color: #d97706">
                        <i data-lucide="alert-triangle" size="16"></i> ALERTA
                    </div>
                    <div class="insight-text-render">${neg}</div>
                </div>

                <!-- ACCION -->
                <div class="insight-card card-acc">
                    <div class="card-header-icon" style="color: #2563eb">
                        <i data-lucide="zap" size="16"></i> ACCIÓN
                    </div>
                    <div class="insight-text-render">${acc}</div>
                </div>

            </div>
        </div>
    `;

    if (typeof lucide !== 'undefined') lucide.createIcons();
}


// Función para sincronizar metadatos con la UI (Títulos, Subtítulos y Targets)
function updateDashboardMetadata() {
    indicatorKeys.forEach(key => {
        const metadata = activityIndicators[key];
        if (!metadata) return;

        const titleEl = document.getElementById(`chart-title-${key}`);
        const cardHeader = titleEl?.closest('.card-header');
        const badge = cardHeader?.querySelector('.card-badge');
        const subtitle = titleEl?.nextElementSibling;

        if (titleEl) titleEl.textContent = metadata.name[currentLanguage] || metadata.name.es;
        if (subtitle) subtitle.textContent = metadata.definition[currentLanguage] || metadata.definition.es;
        if (badge) badge.textContent = `Target: ${metadata.target}`;
    });
}

function updateAllCharts() {
    updateDashboardMetadata();
    indicatorKeys.forEach(updateSingleChart);
    updateDictamen();
    if (typeof lucide !== 'undefined') lucide.createIcons();
}

// Event Listeners
document.getElementById('yearFilter').addEventListener('change', updateAllCharts);
document.getElementById('quarterFilter').addEventListener('change', updateAllCharts);
document.getElementById('monthFilter').addEventListener('change', updateAllCharts);
document.getElementById('languageFilter').addEventListener('change', (e) => {
    currentLanguage = e.target.value;
    updateAllCharts();
});

// Asegurar que activityData sea global si no existe
if (typeof window.activityData === 'undefined') {
    window.activityData = typeof activityData !== 'undefined' ? activityData : [];
}

// Inicialización
async function initializeDashboard() {
    console.log("[Dashboard] Initializing...");
    
    // Clear static fallback if not MAS CONSULTA (Empresa 1)
    if (empresaId !== 1) {
        activityData = [];
        window.activityData = [];
        dbInsights = [];
    }
    
    updateAllCharts();

    try {
        console.log(`[Dashboard] Fetching indicators from API for Empresa ${empresaId}...`);
        const apiData = await DashboardAPI.getIndicadoresData(empresaId, 'actividad');
        
        if (apiData && apiData.length > 0) {
            activityData = apiData;
            window.activityData = apiData; // << FIX MISSING WINDOW UPDATE
            console.log(`[Dashboard] Dynamically loaded ${apiData.length} records for Actividad`);
            updateAllCharts(); 
        } else {
            console.warn("[Dashboard] API returned empty indicators. Setting empty state.");
            activityData = []; // Clear hardcoded fallback
            window.activityData = [];
            updateAllCharts();
        }

        console.log(`[Dashboard] Fetching insights from API for Empresa ${empresaId}...`);
        const insightsRes = await DashboardAPI.getInsights(empresaId, 'actividad');
        if (insightsRes && insightsRes.insights && insightsRes.insights.length > 0) {
            dbInsights = insightsRes.insights;
            console.log(`[Dashboard] Loaded ${dbInsights.length} AI insights for Actividad from DB`);
            updateAllCharts(); 
        } else {
            dbInsights = []; // Clear
            updateAllCharts();
        }
    } catch (error) {
        dynamicDataError = true;
        console.error("[Dashboard] Error loading dynamic data:", error);
    }
}

document.addEventListener('DOMContentLoaded', initializeDashboard);
