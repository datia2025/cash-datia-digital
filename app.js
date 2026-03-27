// Estado global
let charts = {};
let currentLanguage = 'es';
let dynamicDataError = false;
let dbInsights = []; // Almacén para insights desde la BD

// Lista de indicadores
const indicatorKeys = ['razon', 'capital', 'prueba', 'efectivo'];

// Función para filtrar datos
function filterData() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';

    let filtered = liquidityData.filter(d => d.year && d.period);

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

// Plugin personalizado para dibujar las etiquetas de año y trimestre
const yearQuarterPlugin = {
    id: 'yearQuarterLabels',
    afterDraw: (chart) => {
        const ctx = chart.ctx;
        const xAxis = chart.scales.x;

        if (!chart.data.datasets[0] || !chart.data.datasets[0].data.length) return;

        const data = filterData();
        const yearGroups = {};
        data.forEach((d, index) => {
            if (!yearGroups[d.year]) {
                yearGroups[d.year] = { startIndex: index, endIndex: index, quarters: {} };
            }
            yearGroups[d.year].endIndex = index;
            if (!yearGroups[d.year].quarters[d.quarter]) {
                yearGroups[d.year].quarters[d.quarter] = { startIndex: index, endIndex: index };
            }
            yearGroups[d.year].quarters[d.quarter].endIndex = index;
        });

        ctx.save();
        ctx.textAlign = 'center';

        Object.keys(yearGroups).forEach(year => {
            const group = yearGroups[year];
            const startX = xAxis.getPixelForValue(group.startIndex);
            const endX = xAxis.getPixelForValue(group.endIndex);
            const centerX = (startX + endX) / 2;

            // Dibujar Año
            ctx.font = '800 10px Inter';
            ctx.fillStyle = '#1E4E79';
            ctx.fillText(year, centerX, chart.chartArea.bottom + 32);

            // Dibujar Trimestres
            ctx.font = '600 8px Inter';
            ctx.fillStyle = '#7A7A7A';
            Object.keys(group.quarters).forEach(q => {
                const qGroup = group.quarters[q];
                const qStartX = xAxis.getPixelForValue(qGroup.startIndex);
                const qEndX = xAxis.getPixelForValue(qGroup.endIndex);
                const qCenterX = (qStartX + qEndX) / 2;
                ctx.fillText(q, qCenterX, chart.chartArea.bottom + 20);
            });

            // Línea separadora de años
            if (group.startIndex > 0) {
                ctx.strokeStyle = '#F1F1F1';
                ctx.lineWidth = 1;
                ctx.beginPath();
                const barSpacing = (xAxis.getPixelForValue(1) - xAxis.getPixelForValue(0)) / 2;
                const lineX = startX - barSpacing;
                ctx.moveTo(lineX, chart.chartArea.top);
                ctx.lineTo(lineX, chart.chartArea.bottom + 36);
                ctx.stroke();
            }
        });
        ctx.restore();
    }
};

// Función para obtener contenido de análisis desde el Audit Repository
function getAnalysisContent(indicatorKey) {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;

    // Determinar el año clave
    let yearKey = yearFilter;
    if (yearKey === 'all' || yearKey === 'Todos') {
        // Por defecto mostramos el año más reciente si se seleccionan todos
        yearKey = "2025";
    }

    // Determinar el periodo clave (Quarter o Annual)
    let periodKey = quarterFilter;
    if (periodKey === 'all' || periodKey === 'Todos') {
        periodKey = "Annual";
    }

    // Acceder al repositorio
    const yearData = auditRepository[yearKey];
    if (!yearData) return null;

    const periodData = yearData[periodKey];
    if (!periodData || !periodData.indicators) return null;

    return periodData.indicators[indicatorKey];
}

// Función para actualizar el análisis de un indicador
// STRATEGY: 1:1 mapping from the shared auditRepository findings array to indicator cards
// Finding index 0 → razon, 1 → capital, 2 → prueba, 3 → efectivo
// NEW: Also supports Comparative mode when yearFilter is 'all' and quarter/month is specific
function updateAnalysis(indicatorKey) {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';
    const isAllYears = yearFilter === 'all' || yearFilter === 'Todos';
    const isSpecificQuarter = quarterFilter !== 'all' && quarterFilter !== 'Todos';
    const isSpecificMonth = monthFilter !== 'all' && monthFilter !== 'Todos';

    const overlayContainer = document.getElementById(`analysis-${indicatorKey}`);
    const tabsContainer = document.getElementById(`tabs-${indicatorKey}`);
    
    if (!overlayContainer || !tabsContainer) return;

    // Reset containers
    overlayContainer.innerHTML = '';
    tabsContainer.innerHTML = '';
    overlayContainer.classList.remove('active');

    let itemToRender = null;
    let isComparative = false;

    const keyMapping = {
        'razon': 'razon_corriente',
        'capital': 'capital_trabajo',
        'prueba': 'prueba_acida',
        'efectivo': 'ratio_efectivo'
    };
    const dbKey = keyMapping[indicatorKey] || indicatorKey;

    // Helper interno: transforma un insight de BD al formato itemToRender
    const mapDbInsight = (ins) => ({
        title: ins.titulo || "Análisis AI",
        text: (
            (ins.analisis_positivo ? `**Aspecto Positivo:** ${ins.analisis_positivo}\n\n` : '') +
            (ins.analisis_negativo ? `**Aspecto Negativo:** ${ins.analisis_negativo}\n\n` : '') +
            (ins.recomendacion ? `**Recomendación:** ${ins.recomendacion}` : '')
        ),
        type: ins.tipo || ins.status || 'info'
    });

    // 1. PRIORIDAD: Búsqueda dinámica en BD
    if (dbInsights && dbInsights.length > 0) {
        const targetYear = isAllYears ? 2025 : parseInt(yearFilter);
        const expectedPeriodKey = isSpecificMonth ? ('M' + monthFilter) : (quarterFilter === 'all' || quarterFilter === 'Todos' ? 'Annual' : quarterFilter);

        let dynamicInsight = dbInsights.find(ins => {
            const insYear = ins.year || ins.periodo_ano;
            const insKey = (ins.indicador_key || '').toLowerCase();
            return (insYear == targetYear) && 
                   (ins.period_key === expectedPeriodKey) &&
                   (insKey === indicatorKey.toLowerCase() || insKey === dbKey.toLowerCase());
        });

        if (dynamicInsight) {
            itemToRender = mapDbInsight(dynamicInsight);
        }
    }

    // 1b. MODO INTERANUAL (todos los años + mes/trimestre específico):
    //     Usar el insight anual más reciente disponible en BD como referencia contextual.
    //     Aplica también cuando isAllYears=true sin mes/trimestre específico (vista histórica completa).
    if (!itemToRender && isAllYears && dbInsights && dbInsights.length > 0) {
        // Candidatos: insights anuales (period_key=Annual) o trimestrales que coincidan
        const candidates = dbInsights
            .filter(ins => ins.indicador_key === dbKey && ins.period_key === 'Annual')
            .sort((a, b) => b.year - a.year); // más reciente primero

        if (candidates.length > 0) {
            const ref = candidates[0]; // insight anual más reciente
            const refYear = ref.year;
            // Añadimos nota de contexto interanual al texto
            const contextNote = `*(Referencia: análisis anual ${refYear} — seleccione un año específico para el detalle completo de cada periodo.)*`;
            itemToRender = {
                title: ref.titulo || `Análisis Interanual — Ref. ${refYear}`,
                text: (
                    (ref.analisis_positivo ? `**Aspecto Positivo:** ${ref.analisis_positivo}\n\n` : '') +
                    (ref.analisis_negativo ? `**Aspecto Negativo:** ${ref.analisis_negativo}\n\n` : '') +
                    (ref.recomendacion ? `**Recomendación:** ${ref.recomendacion}\n\n` : '') +
                    contextNote
                ),
                type: ref.tipo || ref.status || 'info'
            };
        }
    }

    // 2. FALLBACK: Repositorio estático (solo empresaId 1)
    if (!itemToRender && empresaId === 1 && typeof auditRepository !== 'undefined') {
        if (isAllYears && (isSpecificQuarter || isSpecificMonth)) {
            const comparative = auditRepository.Comparative;
            if (isSpecificMonth && comparative?.Months?.[monthFilter]) {
                const monthData = comparative.Months[monthFilter];
                if (monthData.indicators && monthData.indicators[indicatorKey]) {
                    itemToRender = monthData.indicators[indicatorKey];
                }
            } else if (isSpecificQuarter && comparative?.[quarterFilter]) {
                const quarterData = comparative[quarterFilter];
                if (quarterData.findings?.[0]) {
                    itemToRender = quarterData.findings[0];
                }
            }
        } else {
            let yearKey = isAllYears ? "2025" : yearFilter;
            let periodKey = quarterFilter === 'all' || quarterFilter === 'Todos' ? "Annual" : quarterFilter;
            const periodData = auditRepository[yearKey]?.[periodKey];

            if (periodData) {
                const indicatorIndexMap = { 'razon': 0, 'capital': 1, 'prueba': 2, 'efectivo': 3 };
                if (periodData.findings && periodData.findings.length > 0) {
                    itemToRender = periodData.findings[indicatorIndexMap[indicatorKey]];
                } else if (periodData.indicators && periodData.indicators[indicatorKey]) {
                    itemToRender = periodData.indicators[indicatorKey];
                }
            }
        }
    }

    if (!itemToRender) return;

    const rawText = itemToRender.text || '';
    const positivoMatch = rawText.match(/\*\*Aspecto Positivo:\*\*\s*([\s\S]*?)(?=\*\*Aspecto Negativo:|$)/);
    const negativoMatch = rawText.match(/\*\*Aspecto Negativo:\*\*\s*([\s\S]*?)(?=\*\*Recomendación:|$)/);
    const recomendacionMatch = rawText.match(/\*\*Recomendación:\*\*\s*([\s\S]*?)$/);

    const sections = [
        { id: 'pos', label: 'Positivo', icon: 'check-circle', color: '#059669', title: 'Aspecto Positivo', text: positivoMatch ? positivoMatch[1].trim() : '' },
        { id: 'neg', label: 'Alerta', icon: 'alert-triangle', color: '#dc2626', title: 'Aspecto Negativo', text: negativoMatch ? negativoMatch[1].trim() : '' },
        { id: 'rec', label: 'Acción', icon: 'zap', color: '#2563eb', title: 'Recomendación de Auditoría', text: recomendacionMatch ? recomendacionMatch[1].trim() : '' }
    ];

    // If no standard sections, it might be a general trend text
    if (!sections.some(s => s.text) && rawText.trim()) {
        sections.push({ id: 'trend', label: 'Tendencia', icon: 'bar-chart-2', color: '#1e3a8a', title: 'Análisis Interanual', text: rawText.replace(/^\*\*Tendencia.*?\*\* /i, '').trim() });
    }

    // Build Tabs
    sections.forEach(section => {
        if (!section.text) return;
        
        const btn = document.createElement('button');
        btn.className = 'insight-tab-btn';
        btn.innerHTML = `<i data-lucide="${section.icon}" style="color: ${section.color}"></i> ${section.label}`;
        btn.onclick = () => toggleInsightOverlay(indicatorKey, section, btn);
        tabsContainer.appendChild(btn);
    });

    // Helper function to toggle overlay
    window.toggleInsightOverlay = (key, section, btn) => {
        const overlay = document.getElementById(`analysis-${key}`);
        const tabs = document.getElementById(`tabs-${key}`).querySelectorAll('.insight-tab-btn');
        const isActive = btn.classList.contains('active');

        // Reset all tabs in this card
        tabs.forEach(t => t.classList.remove('active'));

        if (isActive) {
            overlay.classList.remove('active');
        } else {
            btn.classList.add('active');
            overlay.innerHTML = `
                <div class="glow-bar" style="background: linear-gradient(90deg, ${section.color}, transparent);"></div>
                <div class="close-overlay" onclick="event.stopPropagation(); document.getElementById('analysis-${key}').classList.remove('active'); document.getElementById('tabs-${key}').querySelectorAll('.insight-tab-btn').forEach(t => t.classList.remove('active'));">
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
                    ${section.text}
                </div>
                </div>
            `;
            overlay.classList.add('active');
            if (typeof lucide !== 'undefined') lucide.createIcons();
        }
    };

    if (typeof lucide !== 'undefined') lucide.createIcons();
}

// Colores por año para el modo comparativo mensual
const yearColors = {
    2023: { bg: 'rgba(59, 130, 246, 0.75)', border: 'rgba(59, 130, 246, 1)' },   // Azul
    2024: { bg: 'rgba(16, 185, 129, 0.75)', border: 'rgba(16, 185, 129, 1)' },   // Verde
    2025: { bg: 'rgba(245, 158, 11, 0.75)', border: 'rgba(245, 158, 11, 1)' },   // Ámbar
    2026: { bg: 'rgba(139, 92, 246, 0.75)', border: 'rgba(139, 92, 246, 1)' }    // Púrpura (futuro)
};

// Nombres de meses
const monthNames = {
    es: ['', 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    en: ['', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
};

// Función para crear o actualizar un gráfico
function updateSingleChart(indicatorKey) {
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';
    const yearFilter = document.getElementById('yearFilter').value;
    const isMonthSpecific = monthFilter !== 'all' && monthFilter !== 'Todos';

    const indicator = indicators[indicatorKey];
    const canvasId = `chart${indicatorKey.charAt(0).toUpperCase() + indicatorKey.slice(1)}`;
    const noDataId = `no-data-${indicatorKey}`;

    const canvas = document.getElementById(canvasId);
    const noDataOverlay = document.getElementById(noDataId);

    if (!canvas) return;

    const formatValue = indicator.formatValue || ((v) => v != null ? v.toFixed(2) : '-');
    const metadata = indicatorMetadata[indicatorKey];

    let config;

    if (isMonthSpecific) {
        // ===== MODO MES ESPECÍFICO: Barras por año =====
        const monthNum = parseInt(monthFilter);
        let monthData = liquidityData.filter(d => d.period === monthNum);

        // Si también hay un año específico, filtrar por él
        if (yearFilter !== 'all' && yearFilter !== 'Todos') {
            monthData = monthData.filter(d => d.year === parseInt(yearFilter));
        }

        // Ordenar por año
        monthData.sort((a, b) => a.year - b.year);

        if (!monthData || monthData.length === 0) {
            if (noDataOverlay) noDataOverlay.classList.remove('hidden');
            canvas.classList.add('hidden');
            updateAnalysis(indicatorKey);
            return;
        } else {
            if (noDataOverlay) noDataOverlay.classList.add('hidden');
            canvas.classList.remove('hidden');
        }

        const labels = monthData.map(d => d.year.toString());
        const values = monthData.map(d => d[indicator.field]);
        const backgroundColors = monthData.map(d => (yearColors[d.year] || yearColors[2023]).bg);
        const borderColors = monthData.map(d => (yearColors[d.year] || yearColors[2023]).border);

        const monthLabel = (monthNames[currentLanguage] || monthNames.es)[monthNum] || `Mes ${monthNum}`;

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
                        anchor: 'end',
                        align: 'top',
                        offset: 4,
                        formatter: (v) => formatValue(v),
                        font: { size: 10, weight: 'bold' },
                        color: '#1e3a5f'
                    }
                }]
            },
            plugins: [ChartDataLabels],
            options: {
                responsive: true,
                maintainAspectRatio: false,
                layout: { padding: { top: 30, left: 5, right: 5, bottom: 10 } },
                plugins: {
                    legend: { display: true, position: 'top', labels: { font: { size: 10 } } },
                    datalabels: { color: '#1e3a5f' },
                    tooltip: {
                        callbacks: {
                            title: function (items) {
                                return `Año ${items[0].label}`;
                            },
                            label: function (context) {
                                const value = context.raw;
                                if (indicator.formatValue) {
                                    return `${monthLabel}: ${indicator.formatValue(value)}`;
                                }
                                return `${monthLabel}: ${value != null ? value.toFixed(2) : '-'}${indicator.unit}`;
                            }
                        }
                    }
                },
                scales: {
                    y: {
                        ticks: {
                            font: { size: 9 },
                            callback: function (value) {
                                if (indicatorKey === 'capital') {
                                    return (value / 1000000).toFixed(0) + ' MM';
                                }
                                return Number.isInteger(value) ? value : Number(value.toFixed(2));
                            }
                        },
                        grid: { borderDash: [2, 2] }
                    },
                    x: {
                        grid: { display: false },
                        ticks: { font: { size: 11, weight: 'bold' } }
                    }
                }
            }
        };
    } else {
        // ===== MODO NORMAL: Gráfico de línea =====
        const data = filterData();

        if (!data || data.length === 0) {
            if (noDataOverlay) noDataOverlay.classList.remove('hidden');
            canvas.classList.add('hidden');
            updateAnalysis(indicatorKey);
            return;
        } else {
            if (noDataOverlay) noDataOverlay.classList.add('hidden');
            canvas.classList.remove('hidden');
        }

        const labels = data.map(d => d.period.toString());
        const values = data.map(d => d[indicator.field]);

        // Si hay muchos puntos (todos los años), reducir densidad visual
        const isManyPoints = data.length > 20;
        const dynamicPointRadius = isManyPoints ? 2 : 3;
        const dynamicDatalabels = isManyPoints ? false : true;

        config = {
            type: 'line',
            data: {
                labels: labels,
                datasets: [{
                    label: metadata.name[currentLanguage] || metadata.name.es,
                    data: values,
                    borderColor: getIndicatorColor(indicatorKey),
                    backgroundColor: getIndicatorColor(indicatorKey, 0.1),
                    borderWidth: isManyPoints ? 1.5 : 2,
                    tension: 0.3,
                    fill: true,
                    pointRadius: dynamicPointRadius,
                    pointBackgroundColor: getIndicatorColor(indicatorKey),
                    datalabels: {
                        display: dynamicDatalabels,
                        align: 'top',
                        offset: 3,
                        formatter: (v) => formatValue(v),
                        font: { size: 8, weight: 'bold' }
                    }
                }]
            },
            plugins: [yearQuarterPlugin, ChartDataLabels],
            options: {
                responsive: true,
                maintainAspectRatio: false,
                layout: { padding: { bottom: 40, left: 5, right: 5 } },
                plugins: {
                    legend: { display: false },
                    datalabels: { color: '#2d3748' },
                    tooltip: {
                        callbacks: {
                            label: function (context) {
                                const value = context.raw;
                                if (indicator.formatValue) {
                                    return `${context.dataset.label}: ${indicator.formatValue(value)}`;
                                }
                                return `${context.dataset.label}: ${value != null ? value.toFixed(2) : '-'}${indicator.unit}`;
                            }
                        }
                    }
                },
                scales: {
                    y: {
                        ticks: {
                            font: { size: 9 },
                            callback: function (value) {
                                if (indicatorKey === 'capital') {
                                    return (value / 1000000).toFixed(0) + ' MM';
                                }
                                return Number.isInteger(value) ? value : Number(value.toFixed(2));
                            }
                        },
                        grid: { borderDash: [2, 2] }
                    },
                    x: {
                        grid: { display: false },
                        ticks: {
                            font: { size: 8 },
                            padding: 3,
                            maxTicksLimit: isManyPoints ? 12 : 20,
                            autoSkip: true,
                            maxRotation: 0,
                            minRotation: 0
                        }
                    }
                }
            }
        };
    }

    // Destruir gráfico existente si hay uno
    if (charts[indicatorKey]) {
        charts[indicatorKey].destroy();
    }

    const ctx = canvas.getContext('2d');
    charts[indicatorKey] = new Chart(ctx, config);

    // Actualizar análisis
    updateAnalysis(indicatorKey);

    // Actualizar fórmula y target en el UI
    const container = document.getElementById(`chart-title-${indicatorKey}`)?.parentElement;
    if (container) {
        const formulaTargetRow = container.querySelector('.text-sm.text-gray-500');
        if (formulaTargetRow) {
            formulaTargetRow.innerHTML = `
                <span>${metadata.formula}</span>
                <span class="ml-3">Target: ${metadata.target}</span>
            `;
        }
    }
}

// Función para obtener color por indicador (SIGNUM PALETTE)
function getIndicatorColor(key, alpha = 1) {
    const colors = {
        razon: `rgba(30, 78, 121, ${alpha})`,     // Blue Vibrant
        capital: `rgba(10, 31, 68, ${alpha})`,    // Deep Blue
        prueba: `rgba(217, 119, 6, ${alpha})`,    // Orange Audit
        efectivo: `rgba(5, 150, 105, ${alpha})`   // Green Success
    };
    return colors[key] || `rgba(128, 128, 128, ${alpha})`;
}

// Función para actualizar todos los gráficos
function updateAllCharts() {
    indicatorKeys.forEach(key => {
        updateSingleChart(key);
    });

    // Re-inicializar iconos de Lucide
    if (typeof lucide !== 'undefined') {
        lucide.createIcons();
    }

    // Actualizar Reporte de Realidad Financiera Anual
    updateAnnualReality();
}


// Función para mostrar el Reporte de Realidad Financiera Anual con diseño premium
// Función para mostrar el Reporte de Realidad Financiera Anual con diseño de 3 columnas FULL WIDTH (dictamen)
function updateAnnualReality() {
    const container = document.getElementById('annual-reality-container');
    const yearFilter = document.getElementById('yearFilter')?.value || 'all';
    const quarterFilter = document.getElementById('quarterFilter')?.value || 'all';
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';
    
    if (!container) return;

    const isMonthSpecific = monthFilter !== 'all' && monthFilter !== 'Todos';

    let targetYear = (yearFilter === 'all' || yearFilter === 'Todos') ? 2025 : parseInt(yearFilter);
    let periodKey = isMonthSpecific ? ('M' + monthFilter) : (quarterFilter === 'all' || quarterFilter === 'Todos' ? 'Annual' : quarterFilter);

    let dynamicDictamen = null;

    if (typeof dbInsights !== 'undefined' && dbInsights.length > 0) {
        dynamicDictamen = dbInsights.find(ins => {
            const insYear = ins.year || ins.periodo_ano;
            const insKey = (ins.indicador_key || '').toLowerCase();
            return (insYear == targetYear) && 
                   (ins.period_key === periodKey) &&
                   (insKey === 'insight-liquidez-ai' || insKey === 'report' || insKey === 'liquidez');
        });
    }

    const pos = dynamicDictamen?.analisis_positivo || (currentLanguage === 'es' ? "No se registran hallazgos positivos." : "No positive findings.");
    const neg = dynamicDictamen?.analisis_negativo || (currentLanguage === 'es' ? "No hay alertas criticas en este periodo." : "No critical alerts.");
    const acc = dynamicDictamen?.recomendacion || (currentLanguage === 'es' ? "Mantener monitoreo operativo mensual." : "Maintain monthly monitoring.");

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
        </style>
        
        <div class="dictamen-lean">
            <div class="lean-header">
                <div class="company-name-lean">
                    ${typeof currentCompany !== 'undefined' && currentCompany.name ? currentCompany.name.toUpperCase() : 'MAS CONSULTA SAS'}
                    <span class="text-slate-400 font-normal ml-2 lowercase" style="font-size: 0.72rem">Sector: Servicios / Consultoría</span>
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

    if (typeof lucide !== 'undefined') {
        lucide.createIcons();
    }
}

// Función para actualizar títulos según idioma
function updateTitles() {
    indicatorKeys.forEach(key => {
        const titleEl = document.getElementById(`chart-title-${key}`);
        if (titleEl && indicatorMetadata[key]) {
            titleEl.textContent = indicatorMetadata[key].name[currentLanguage] || indicatorMetadata[key].name.es;
        }
    });

    // Actualizar título principal
    const mainTitle = document.querySelector('.header-title h1');
    if (mainTitle) {
        mainTitle.textContent = currentLanguage === 'es' ? 'Indicadores Financieros' : 'Financial Indicators';
    }

    // Actualizar badge
    const badge = document.querySelector('.indicator-badge');
    if (badge) {
        badge.textContent = currentLanguage === 'es' ? 'Liquidez' : 'Liquidity';
    }

    // Actualizar etiquetas de controles
    const labels = {
        es: { year: 'Año', quarter: 'Trimestre', month: 'Mes', language: 'Lenguaje' },
        en: { year: 'Year', quarter: 'Quarter', month: 'Month', language: 'Language' }
    };

    const lang = labels[currentLanguage];
    const controlLabels = document.querySelectorAll('.control-group label');
    if (controlLabels.length >= 4) {
        controlLabels[0].textContent = lang.year;
        controlLabels[1].textContent = lang.quarter;
        controlLabels[2].textContent = lang.month;
        controlLabels[3].textContent = lang.language;
    }
}

// Event Listeners
document.getElementById('yearFilter').addEventListener('change', updateAllCharts);

document.getElementById('quarterFilter').addEventListener('change', updateAllCharts);

const monthFilterEl = document.getElementById('monthFilter');
if (monthFilterEl) {
    monthFilterEl.addEventListener('change', updateAllCharts);
}

document.getElementById('languageFilter').addEventListener('change', (e) => {
    currentLanguage = e.target.value;
    updateTitles();
    updateAllCharts();
});


// Inicialización
async function initializeDashboard() {
    try {
        const apiData = await DashboardAPI.getIndicadoresData(empresaId, 'liquidez');
        if (apiData && apiData.length > 0) {
            liquidityData = apiData;
            console.log(`[Dashboard] Dynamically loaded ${apiData.length} records for Liquidez`);
        } else {
            console.warn("[Dashboard] API returned empty indicators. Setting empty state.");
            liquidityData = []; // Clear hardcoded fallback
        }
        
        // Cargar Insights desde la BD
        const insightsRes = await DashboardAPI.getInsights(empresaId, 'liquidez');
        if (insightsRes && insightsRes.insights) {
            dbInsights = insightsRes.insights;
            console.log(`[Dashboard] Loaded ${dbInsights.length} AI insights from DB`);
        } else {
            dbInsights = []; // Clear
        }
    } catch (error) {
        dynamicDataError = true;
        console.error("[Dashboard] Failed to fetch indicators from DB. Using static fallback.", error);
    }

    updateTitles();
    updateAllCharts();
    if (typeof lucide !== 'undefined') {
        lucide.createIcons();
    }
}

// Iniciar Dashboard
document.addEventListener('DOMContentLoaded', initializeDashboard);

