// Estado global
let charts = {};
let currentLanguage = 'es';
let dynamicDataError = false;

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
            ctx.font = 'bold 10px Segoe UI';
            ctx.fillStyle = '#2d3748';
            ctx.fillText(year, centerX, chart.chartArea.bottom + 35);

            // Dibujar Trimestres
            ctx.font = '8px Segoe UI';
            ctx.fillStyle = '#718096';
            Object.keys(group.quarters).forEach(q => {
                const qGroup = group.quarters[q];
                const qStartX = xAxis.getPixelForValue(qGroup.startIndex);
                const qEndX = xAxis.getPixelForValue(qGroup.endIndex);
                const qCenterX = (qStartX + qEndX) / 2;
                ctx.fillText(q, qCenterX, chart.chartArea.bottom + 22);
            });

            // Línea separadora de años
            if (group.startIndex > 0) {
                ctx.strokeStyle = '#e2e8f0';
                ctx.lineWidth = 1;
                ctx.beginPath();
                const lineX = startX - (xAxis.getPixelForValue(1) - xAxis.getPixelForValue(0)) / 2;
                ctx.moveTo(lineX, chart.chartArea.top);
                ctx.lineTo(lineX, chart.chartArea.bottom + 40);
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

    const analysisContainer = document.getElementById(`analysis-${indicatorKey}`);
    if (!analysisContainer) return;

    let itemToRender = null;
    let isComparative = false;
    let comparativeLabel = '';

    // COMPARATIVE MODE: All years + specific quarter or month
    if (isAllYears && (isSpecificQuarter || isSpecificMonth)) {
        isComparative = true;
        const comparative = auditRepository.Comparative;
        if (!comparative) {
            analysisContainer.innerHTML = '';
            return;
        }

        if (isSpecificMonth && comparative.Months && comparative.Months[monthFilter]) {
            const monthData = comparative.Months[monthFilter];
            if (monthData.indicators && monthData.indicators[indicatorKey]) {
                itemToRender = monthData.indicators[indicatorKey];
                comparativeLabel = `Mes ${monthFilter} (2023-2025)`;
            }
        } else if (isSpecificQuarter && comparative[quarterFilter]) {
            const quarterData = comparative[quarterFilter];
            if (quarterData.findings && quarterData.findings.length > 0) {
                // Use first finding for comparative quarters (general trend)
                itemToRender = quarterData.findings[0];
                comparativeLabel = `${quarterFilter} (2023-2025)`;
            }
        }

        if (!itemToRender) {
            analysisContainer.innerHTML = '';
            return;
        }
    } else {
        // STANDARD MODE: Specific year or default to 2025
        let yearKey = isAllYears ? "2025" : yearFilter;
        let periodKey = quarterFilter === 'all' || quarterFilter === 'Todos' ? "Annual" : quarterFilter;

        const yearData = auditRepository[yearKey];
        if (!yearData || !yearData[periodKey]) {
            analysisContainer.innerHTML = '';
            return;
        }

        const periodData = yearData[periodKey];

        // Map indicator keys to their corresponding index in the findings array
        const indicatorIndexMap = {
            'razon': 0,
            'capital': 1,
            'prueba': 2,
            'efectivo': 3
        };

        // Priority 1: Use the findings array (Quarterly view)
        if (periodData.findings && periodData.findings.length > 0) {
            const index = indicatorIndexMap[indicatorKey];
            if (index !== undefined && periodData.findings[index]) {
                itemToRender = periodData.findings[index];
            }
        }
        // Priority 2: Use the indicators object (Annual view)
        else if (periodData.indicators && periodData.indicators[indicatorKey]) {
            itemToRender = periodData.indicators[indicatorKey];
        }

        if (!itemToRender) {
            analysisContainer.innerHTML = '';
            return;
        }

        comparativeLabel = `${periodKey === 'Annual' ? 'Anual' : periodKey} ${yearKey}`;
    }

    // Parse the text into sections (Aspecto Positivo, Aspecto Negativo, Recomendación)
    const rawText = itemToRender.text || '';

    // Extract sections using regex
    const positivoMatch = rawText.match(/\*\*Aspecto Positivo:\*\*\s*([\s\S]*?)(?=\*\*Aspecto Negativo:|$)/);
    const negativoMatch = rawText.match(/\*\*Aspecto Negativo:\*\*\s*([\s\S]*?)(?=\*\*Recomendación:|$)/);
    const recomendacionMatch = rawText.match(/\*\*Recomendación:\*\*\s*([\s\S]*?)$/);

    const positivo = positivoMatch ? positivoMatch[1].trim() : '';
    const negativo = negativoMatch ? negativoMatch[1].trim() : '';
    const recomendacion = recomendacionMatch ? recomendacionMatch[1].trim() : '';

    let sections;

    // If no standard sections found, check for Tendencia format (comparative months)
    if (!positivo && !negativo && !recomendacion && rawText.trim()) {
        // Strip the **Tendencia 2023-2025:** prefix if present
        const tendenciaClean = rawText.replace(/^\*\*Tendencia\s*\d{4}-\d{4}:\*\*\s*/i, '').trim();
        sections = [
            {
                label: 'Análisis Interanual',
                icon: 'bar-chart-2',
                bg: '#dbeafe',
                border: '#1e3a8a',
                text: tendenciaClean
            }
        ];
    } else {
        // Section configurations with icons and colors
        sections = [
            {
                label: 'Aspecto Positivo',
                icon: 'check-circle',
                bg: '#c6f6d5',
                border: '#22543d',
                text: positivo
            },
            {
                label: 'Aspecto Negativo',
                icon: 'alert-triangle',
                bg: '#fed7d7',
                border: '#742a2a',
                text: negativo
            },
            {
                label: 'Recomendación',
                icon: 'lightbulb',
                bg: '#fefcbf',
                border: '#975a16',
                text: recomendacion
            }
        ];
    }

    // Build the HTML with separated sections
    let html = `
        <div class="audit-insight-card" style="margin-top: 1rem; border: 1px solid #e2e8f0; border-radius: 8px; overflow: hidden;">
            <div style="background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%); padding: 0.75rem 1rem; color: white;">
                <div style="font-size: 0.7rem; text-transform: uppercase; letter-spacing: 0.05em; opacity: 0.8;">
                    ${isComparative ? 'Análisis Comparativo Interanual' : 'Auditoría de Cierre'} ${comparativeLabel}
                </div>
                <div style="font-size: 0.9rem; font-weight: 600; margin-top: 0.25rem;">
                    ${itemToRender.title}
                </div>
            </div>
            <div style="padding: 0.75rem; display: flex; flex-direction: column; gap: 0.5rem;">
    `;

    sections.forEach(section => {
        if (section.text) {
            html += `
                <div style="display: flex; align-items: flex-start; gap: 0.6rem; padding: 0.6rem; background-color: ${section.bg}; border-radius: 6px; border-left: 3px solid ${section.border};">
                    <div style="min-width: 18px; color: ${section.border}; padding-top: 1px;">
                        <i data-lucide="${section.icon}" style="width: 16px; height: 16px;"></i>
                    </div>
                    <div>
                        <strong style="display: block; color: ${section.border}; font-size: 0.7rem; margin-bottom: 0.2rem; text-transform: uppercase;">
                            ${section.label}
                        </strong>
                        <span style="color: #2d3748; font-size: 0.72rem; line-height: 1.45; display: block;">
                            ${section.text}
                        </span>
                    </div>
                </div>
            `;
        }
    });

    html += `
            </div>
        </div>
    `;

    analysisContainer.innerHTML = html;

    // Refresh Lucide icons after inserting HTML
    if (typeof lucide !== 'undefined') {
        lucide.createIcons();
    }
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

    const formatValue = indicator.formatValue || ((v) => v.toFixed(2));
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
                                return `${monthLabel}: ${value.toFixed(2)}${indicator.unit}`;
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
                                return value;
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

        config = {
            type: 'line',
            data: {
                labels: labels,
                datasets: [{
                    label: metadata.name[currentLanguage] || metadata.name.es,
                    data: values,
                    borderColor: getIndicatorColor(indicatorKey),
                    backgroundColor: getIndicatorColor(indicatorKey, 0.1),
                    borderWidth: 2,
                    tension: 0.3,
                    fill: true,
                    pointRadius: 3,
                    pointBackgroundColor: getIndicatorColor(indicatorKey),
                    datalabels: {
                        display: true,
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
                                return `${context.dataset.label}: ${value.toFixed(2)}${indicator.unit}`;
                            }
                        }
                    }
                },
                scales: {
                    y: {
                        min: indicator.scaleMin,
                        max: indicator.scaleMax,
                        ticks: {
                            font: { size: 9 },
                            callback: function (value) {
                                if (indicatorKey === 'capital') {
                                    return (value / 1000000).toFixed(0) + ' MM';
                                }
                                return value;
                            }
                        },
                        grid: { borderDash: [2, 2] }
                    },
                    x: {
                        grid: { display: false },
                        ticks: { font: { size: 8 }, padding: 3 }
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

// Función para obtener color por indicador
function getIndicatorColor(key, alpha = 1) {
    const colors = {
        razon: `rgba(72, 187, 120, ${alpha})`,    // Verde
        capital: `rgba(66, 153, 225, ${alpha})`,   // Azul
        prueba: `rgba(237, 137, 54, ${alpha})`,    // Naranja
        efectivo: `rgba(159, 122, 234, ${alpha})` // Púrpura
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
function updateAnnualReality() {
    const container = document.getElementById('annual-reality-container');
    const yearFilter = document.getElementById('yearFilter').value;

    if (!container) return;

    // Lógica para determinar qué año mostrar:
    // Si se selecciona un año específico, mostrar ese.
    // Si se selecciona "all", mostrar el más reciente (2025) por defecto.
    let targetYear = yearFilter;
    if (targetYear === 'all' || targetYear === 'Todos') {
        targetYear = "2025";
    }

    const yearData = auditRepository[targetYear];

    // Solo mostrar si existe reporte anual para ese año (por ahora centrado en Anual para Liquidez)
    if (!yearData || !yearData.Annual || !yearData.Annual.report) {
        container.classList.add('hidden');
        container.innerHTML = '';
        return;
    }

    const report = yearData.Annual.report;
    const title = report.title[currentLanguage] || report.title.es;
    const text = report.text[currentLanguage] || report.text.es;

    container.classList.remove('hidden');

    // Determine status colors
    const statusColors = {
        success: {
            bg: 'linear-gradient(135deg, #065f46 0%, #10b981 100%)',
            badge: '#10b981',
            badgeBg: '#d1fae5',
            icon: 'file-check-2'
        },
        warning: {
            bg: 'linear-gradient(135deg, #92400e 0%, #f59e0b 100%)',
            badge: '#f59e0b',
            badgeBg: '#fef3c7',
            icon: 'alert-triangle'
        },
        danger: {
            bg: 'linear-gradient(135deg, #991b1b 0%, #ef4444 100%)',
            badge: '#ef4444',
            badgeBg: '#fee2e2',
            icon: 'alert-octagon'
        }
    };
    const colors = statusColors[report.status] || statusColors.warning;

    container.innerHTML = `
        <div style="margin-top: 2rem; border-radius: 12px; overflow: hidden; box-shadow: 0 10px 40px rgba(0,0,0,0.1); background: white;">
            <!-- Header con gradiente -->
            <div style="background: ${colors.bg}; padding: 1.25rem 1.5rem; color: white;">
                <div style="display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 1rem;">
                    <div style="display: flex; align-items: center; gap: 1rem;">
                        <div style="background: rgba(255,255,255,0.2); padding: 0.6rem; border-radius: 10px;">
                            <i data-lucide="${colors.icon}" style="width: 28px; height: 28px;"></i>
                        </div>
                        <div>
                            <div style="font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.15em; opacity: 0.9; font-weight: 700;">
                                ${currentLanguage === 'es' ? 'Dictamen de Auditoría' : 'Audit Opinion'}
                            </div>
                            <h2 style="margin: 0; font-size: 1.2rem; font-weight: 800; letter-spacing: -0.02em;">
                                ${title}
                            </h2>
                        </div>
                    </div>
                    <div style="text-align: center; background: white; padding: 0.6rem 1.2rem; border-radius: 12px; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);">
                        <div style="font-size: 0.65rem; text-transform: uppercase; color: #64748b; font-weight: 700; letter-spacing: 0.05em; margin-bottom: 2px;">Score</div>
                        <div style="font-size: 1.6rem; font-weight: 900; color: ${colors.badge}; line-height: 1;">
                            ${report.score}
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Body con contenido -->
            <div style="padding: 1.5rem 2rem;">
                <div class="prose max-w-none" style="font-size: 0.9rem; line-height: 1.8; color: #334155;">
                    ${typeof marked !== 'undefined' ? marked.parse(text) : text.replace(/\n/g, '<br>')}
                </div>
            </div>
            
            <!-- Footer profesional -->
            <div style="background: #f1f5f9; padding: 1rem 2rem; border-top: 1px solid #e2e8f0; display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 0.5rem;">
                <div style="display: flex; align-items: center; gap: 0.6rem;">
                    <i data-lucide="shield-check" style="width: 16px; height: 16px; color: #64748b;"></i>
                    <span style="color: #64748b; font-size: 0.75rem; font-weight: 500;">
                        ${currentLanguage === 'es' ? 'Informe verificado por Auditoría Financiera' : 'Report verified by Financial Audit'}
                    </span>
                </div>
                <div style="font-size: 0.7rem; color: #94a3b8; font-style: italic;">
                    ${new Date().toLocaleDateString()}
                </div>
            </div>
        </div>
    `;

    // Reinicializar iconos para este nuevo contenido
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
        const empresaId = 1;
        const apiData = await DashboardAPI.getIndicadoresData(empresaId, 'liquidez');
        if (apiData && apiData.length > 0) {
            liquidityData = apiData;
            console.log(`[Dashboard] Dynamically loaded ${apiData.length} records for Liquidez`);
        } else {
            console.warn("[Dashboard] API returned empty indicators. Using static fallback.");
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

document.addEventListener('DOMContentLoaded', initializeDashboard);

