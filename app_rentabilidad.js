// Estado global de Rentabilidad
let charts = {};
let currentLanguage = 'es';

// Lista de 8 indicadores de rentabilidad
const indicatorKeys = ['ebitda', 'neto', 'operativo', 'bruto', 'patrimonio', 'roa', 'roe', 'utilidad'];

// Metadatos de los indicadores
const indicatorMetadata = {
    ebitda: {
        name: { es: 'Margen EBITDA', en: 'EBITDA Margin' },
        formula: 'EBITDA / Ingresos Operacionales',
        target: '> 15%'
    },
    neto: {
        name: { es: 'Margen Neto', en: 'Net Margin' },
        formula: 'Utilidad Neta / Ingresos Totales',
        target: '> 10%'
    },
    operativo: {
        name: { es: 'Margen Operativo', en: 'Operating Margin' },
        formula: 'Utilidad Operacional / Ingresos Operacionales',
        target: '> 12%'
    },
    bruto: {
        name: { es: 'Margen de Utilidad Bruta', en: 'Gross Profit Margin' },
        formula: 'Utilidad Bruta / Ingresos Operacionales',
        target: '> 40%'
    },
    patrimonio: {
        name: { es: 'Patrimonio', en: 'Equity' },
        formula: 'Activo Total − Pasivo Total',
        target: 'Crecimiento sostenido'
    },
    roa: {
        name: { es: 'ROA (Retorno sobre Activos)', en: 'ROA (Return on Assets)' },
        formula: 'Utilidad Neta / Activo Total',
        target: '> 5%'
    },
    roe: {
        name: { es: 'ROE (Retorno sobre Patrimonio)', en: 'ROE (Return on Equity)' },
        formula: 'Utilidad Neta / Patrimonio',
        target: '> 15%'
    },
    utilidad: {
        name: { es: 'Utilidad Acumulada', en: 'Accumulated Profit' },
        formula: 'Resultado Neto Acumulado del Ejercicio',
        target: '> 0 MM COP'
    }
};

// Función para filtrar datos de rentabilidad
function filterData() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';

    let filtered = profitabilityData.filter(d => d.year && d.period);

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

// Plugin personalizado para etiquetas de tiempo
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

// Función para buscar hallazgos en el repositorio de rentabilidad
function getAuditInsights(year, filter) {
    if (typeof auditRepositoryRentabilidad === 'undefined') return null;
    if (filter === 'all' || filter === 'Todos') {
        return auditRepositoryRentabilidad[year]?.Annual;
    }
    return auditRepositoryRentabilidad[year]?.[filter];
}

// Función para buscar hallazgos comparativos
function getComparativeInsights(filter) {
    if (typeof auditRepositoryRentabilidad === 'undefined') return null;
    if (filter === 'all' || filter === 'Todos') return null;

    // Si es un mes (1-12)
    if (!isNaN(filter)) {
        return auditRepositoryRentabilidad.Comparative?.Months?.[filter];
    }

    // Si es un cuarto (1Q-4Q)
    return auditRepositoryRentabilidad.Comparative?.[filter];
}

// Función para actualizar el dictamen ejecutivo con diseño premium
function updateDictamen() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const container = document.getElementById('dictamen-container');

    if (!container) return;
    if (typeof auditRepositoryRentabilidad === 'undefined') {
        container.classList.add('hidden');
        container.innerHTML = '';
        return;
    }

    let targetYear = yearFilter;
    if (targetYear === 'all' || targetYear === 'Todos') {
        targetYear = "2025";
    }

    let data = auditRepositoryRentabilidad[targetYear];
    if (quarterFilter !== 'all' && quarterFilter !== 'Todos') {
        data = data?.[quarterFilter];
    } else {
        data = data?.Annual;
    }

    if (!data || !data.report) {
        container.classList.add('hidden');
        container.innerHTML = '';
        return;
    }

    container.classList.remove('hidden');
    const report = data.report;
    const title = report.title[currentLanguage] || report.title.es;
    const text = report.text[currentLanguage] || report.text.es;

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

    if (typeof lucide !== 'undefined') lucide.createIcons();
}

// Función para actualizar el análisis (Audit Insights)
function updateAnalysis(indicatorKey) {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';

    const analysisContainer = document.getElementById(`analysis-${indicatorKey}`);
    if (!analysisContainer) return;

    if (typeof auditRepositoryRentabilidad === 'undefined') {
        analysisContainer.innerHTML = '';
        return;
    }

    let itemToRender = null;
    let isComparative = (yearFilter === 'all' || yearFilter === 'Todos');

    if (isComparative) {
        const compData = getComparativeInsights(monthFilter !== 'all' ? monthFilter : quarterFilter);
        if (compData) {
            if (compData.indicators && compData.indicators[indicatorKey]) {
                itemToRender = compData.indicators[indicatorKey];
            } else if (compData.findings) {
                itemToRender = compData.findings[0];
            }
        }
    } else {
        const yearData = getAuditInsights(yearFilter, quarterFilter);
        if (yearData && yearData.indicators) {
            itemToRender = yearData.indicators[indicatorKey];
        }
    }

    if (!itemToRender) {
        analysisContainer.innerHTML = `
            <div class="bg-gray-50 p-4 rounded-lg border-l-4 border-gray-300 text-xs text-gray-500 italic">
                ${currentLanguage === 'es' ? 'Sin hallazgos específicos para este periodo.' : 'No specific findings for this period.'}
            </div>
        `;
        return;
    }

    // Parse the text into sections (Aspecto Positivo, Aspecto Negativo, Recomendación)
    const rawText = itemToRender.text || '';

    const positivoMatch = rawText.match(/\*\*Aspecto Positivo:\*\*\s*([\s\S]*?)(?=\*\*Aspecto Negativo:|$)/);
    const negativoMatch = rawText.match(/\*\*Aspecto Negativo:\*\*\s*([\s\S]*?)(?=\*\*Recomendación:|$)/);
    const recomendacionMatch = rawText.match(/\*\*Recomendación:\*\*\s*([\s\S]*?)$/);

    const positivo = positivoMatch ? positivoMatch[1].trim() : '';
    const negativo = negativoMatch ? negativoMatch[1].trim() : '';
    const recomendacion = recomendacionMatch ? recomendacionMatch[1].trim() : '';

    let sections;

    if (!positivo && !negativo && !recomendacion && rawText.trim()) {
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

    const headerStyle = 'background: linear-gradient(to right, #1d4ed8, #1e3a8a);';
    const yearLabel = isComparative ? 'Análisis Comparativo Interanual' : `Auditoría de Cierre Anual ${document.getElementById('yearFilter').value}`;

    let html = `
        <div style="margin-top: 1rem; border: 1px solid #e2e8f0; border-radius: 8px; overflow: hidden;">
            <div style="${headerStyle} padding: 0.75rem 1rem; color: white;">
                <div style="font-size: 0.7rem; text-transform: uppercase; letter-spacing: 0.05em; opacity: 0.8;">
                    ${yearLabel}
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

    if (typeof lucide !== 'undefined') lucide.createIcons();
}

// Colores por indicador
function getIndicatorColor(key, alpha = 1) {
    const colors = {
        ebitda: `rgba(30, 58, 138, ${alpha})`,          // Blue 800
        neto: `rgba(22, 101, 52, ${alpha})`,             // Green 800
        operativo: `rgba(234, 88, 12, ${alpha})`,        // Orange 600
        bruto: `rgba(202, 138, 4, ${alpha})`,            // Yellow 600
        patrimonio: `rgba(185, 28, 28, ${alpha})`,       // Red 700
        roa: `rgba(67, 56, 202, ${alpha})`,              // Indigo 700
        roe: `rgba(13, 148, 136, ${alpha})`,             // Teal 600
        utilidad: `rgba(147, 51, 234, ${alpha})`         // Purple 600
    };
    return colors[key] || `rgba(107, 114, 128, ${alpha})`;
}

// Colores por año para el modo comparativo mensual
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

// Función para formatear valores según el tipo de indicador
function formatChartValue(indicatorKey, value) {
    if (indicatorKey === 'patrimonio' || indicatorKey === 'utilidad') {
        return (value / 1000000).toFixed(1) + 'M';
    }
    return (value * 100).toFixed(1) + '%';
}

// Función para actualizar un gráfico individual
function updateSingleChart(indicatorKey) {
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';
    const yearFilter = document.getElementById('yearFilter').value;
    const isMonthSpecific = monthFilter !== 'all' && monthFilter !== 'Todos';

    // Build canvas ID: capitalize first letter
    const canvasId = `chart${indicatorKey.charAt(0).toUpperCase() + indicatorKey.slice(1)}`;
    const canvas = document.getElementById(canvasId);
    const noDataId = `no-data-${indicatorKey}`;
    const noDataOverlay = document.getElementById(noDataId);

    if (!canvas) return;

    let config;
    const metadata = indicatorMetadata[indicatorKey];
    const isAbsoluteValue = (indicatorKey === 'patrimonio' || indicatorKey === 'utilidad');

    if (isMonthSpecific) {
        // ===== MODO MES ESPECÍFICO: Barras por año =====
        const monthNum = parseInt(monthFilter);
        let monthData = profitabilityData.filter(d => d.period === monthNum);

        if (yearFilter !== 'all' && yearFilter !== 'Todos') {
            monthData = monthData.filter(d => d.year === parseInt(yearFilter));
        }

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
        const values = monthData.map(d => d[indicatorKey]);
        const backgroundColors = monthData.map(d => (yearColors[d.year] || yearColors[2023]).bg);
        const borderColors = monthData.map(d => (yearColors[d.year] || yearColors[2023]).border);
        const monthLabel = (monthNames[currentLanguage] || monthNames.es)[monthNum] || `Mes ${monthNum}`;

        config = {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: `${metadata.name[currentLanguage]} — ${monthLabel}`,
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
                        formatter: (v) => formatChartValue(indicatorKey, v),
                        font: { size: 10, weight: 'bold' },
                        color: getIndicatorColor(indicatorKey)
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
                    tooltip: {
                        callbacks: {
                            label: (ctx) => `${monthLabel} ${ctx.label}: ${formatChartValue(indicatorKey, ctx.raw)}`
                        }
                    }
                },
                scales: {
                    y: {
                        grid: { borderDash: [2, 2] },
                        ticks: {
                            font: { size: 9 },
                            callback: function (value) {
                                if (isAbsoluteValue) return (value / 1000000).toFixed(0) + 'M';
                                return (value * 100).toFixed(0) + '%';
                            }
                        }
                    },
                    x: { grid: { display: false }, ticks: { font: { size: 11, weight: 'bold' } } }
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

        const values = data.map(d => d[indicatorKey]);
        const labels = data.map(d => d.period.toString());

        config = {
            type: 'line',
            data: {
                labels: labels,
                datasets: [{
                    label: metadata.name[currentLanguage],
                    data: values,
                    borderColor: getIndicatorColor(indicatorKey),
                    backgroundColor: getIndicatorColor(indicatorKey, 0.1),
                    borderWidth: 2,
                    tension: 0.3,
                    fill: true,
                    pointRadius: 3,
                    datalabels: {
                        display: values.length < 20,
                        align: 'top',
                        font: { size: 9, weight: 'bold' },
                        formatter: (v) => formatChartValue(indicatorKey, v)
                    }
                }]
            },
            plugins: [timeLabelsPlugin, ChartDataLabels],
            options: {
                responsive: true,
                maintainAspectRatio: false,
                layout: { padding: { bottom: 40, left: 10, right: 10, top: 20 } },
                plugins: {
                    legend: { display: false },
                    datalabels: { color: getIndicatorColor(indicatorKey) },
                    tooltip: {
                        callbacks: {
                            label: (ctx) => `${metadata.name[currentLanguage]}: ${formatChartValue(indicatorKey, ctx.raw)}`
                        }
                    }
                },
                scales: {
                    y: {
                        grid: { borderDash: [2, 2] },
                        ticks: {
                            font: { size: 9 },
                            callback: function (value) {
                                if (isAbsoluteValue) return (value / 1000000).toFixed(0) + 'M';
                                return (value * 100).toFixed(0) + '%';
                            }
                        }
                    },
                    x: { grid: { display: false }, ticks: { display: false } }
                }
            }
        };
    }

    if (charts[indicatorKey]) charts[indicatorKey].destroy();
    charts[indicatorKey] = new Chart(canvas.getContext('2d'), config);
    updateAnalysis(indicatorKey);
}

function updateAllCharts() {
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

// Inicialización
document.addEventListener('DOMContentLoaded', updateAllCharts);
