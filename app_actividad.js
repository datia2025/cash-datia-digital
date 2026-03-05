// Estado global de Actividad
let charts = {};
let currentLanguage = 'es';
let dynamicDataError = false;

// Lista de 8 indicadores de actividad
const indicatorKeys = [
    'ciclo_efectivo', 'dso', 'dio', 'dpo',
    'rotacion_activos', 'rotacion_cartera', 'rotacion_inventarios', 'rotacion_proveedores'
];

// Metadatos de los indicadores para el Glosario y UI
const indicatorMetadata = {
    ciclo_efectivo: {
        name: { es: 'Ciclo de Conversión de Efectivo', en: 'Cash Conversion Cycle' },
        formula: 'DSO + DIO - DPO',
        target: '< 90 días'
    },
    dso: {
        name: { es: 'Días de Cartera (DSO)', en: 'Days Sales Outstanding' },
        formula: '(Cuentas por Cobrar / Ventas) * 365',
        target: '< 60 días'
    },
    dio: {
        name: { es: 'Días de Inventario (DIO)', en: 'Days Inventory Outstanding' },
        formula: '(Inventario / Costo de Ventas) * 365',
        target: '< 45 días'
    },
    dpo: {
        name: { es: 'Días de Proveedores (DPO)', en: 'Days Payables Outstanding' },
        formula: '(Cuentas por Pagar / Compras) * 365',
        target: '> 30 días'
    },
    rotacion_activos: {
        name: { es: 'Rotación de Activos Totales', en: 'Total Asset Turnover' },
        formula: 'Ventas / Activos Totales',
        target: '> 0.50 x'
    },
    rotacion_cartera: {
        name: { es: 'Rotación de Cartera', en: 'Receivables Turnover' },
        formula: 'Ventas / Cuentas por Cobrar',
        target: '> 6.0 x'
    },
    rotacion_inventarios: {
        name: { es: 'Rotación de Inventarios', en: 'Inventory Turnover' },
        formula: 'Costo de Ventas / Inventario',
        target: '> 8.0 x'
    },
    rotacion_proveedores: {
        name: { es: 'Rotación de Proveedores', en: 'Payables Turnover' },
        formula: 'Compras / Cuentas por Pagar',
        target: '4.0 - 6.0 x'
    }
};

// Función para filtrar datos de actividad
function filterData() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';

    let filtered = activityData.filter(d => d.year && d.period);

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


// Función para actualizar el análisis (Audit Insights) con segmentación por colores
function updateAnalysis(indicatorKey) {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';

    const analysisContainer = document.getElementById(`analysis-${indicatorKey}`);
    if (!analysisContainer) return;

    if (typeof auditRepositoryActividad === 'undefined') {
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
            { label: 'Análisis Interanual', icon: 'bar-chart-2', bg: '#dbeafe', border: '#1e3a8a', text: tendenciaClean }
        ];
    } else {
        sections = [
            { label: 'Aspecto Positivo', icon: 'check-circle', bg: '#c6f6d5', border: '#22543d', text: positivo },
            { label: 'Aspecto Negativo', icon: 'alert-triangle', bg: '#fed7d7', border: '#742a2a', text: negativo },
            { label: 'Recomendación', icon: 'lightbulb', bg: '#fefcbf', border: '#975a16', text: recomendacion }
        ];
    }

    const headerStyle = 'background: linear-gradient(to right, #1d4ed8, #1e3a8a);';
    const yearLabel = isComparative ? 'Análisis Comparativo Interanual' : `Auditoría de Cierre Anual ${yearFilter}`;

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

    html += `</div></div>`;
    analysisContainer.innerHTML = html;
    if (typeof lucide !== 'undefined') lucide.createIcons();
}

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
        const monthLabel = (monthNames[currentLanguage] || monthNames.es)[monthNum];

        config = {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: `${metadata.name} — ${monthLabel}`,
                    data: values,
                    backgroundColor: backgroundColors,
                    borderColor: borderColors,
                    borderWidth: 2,
                    borderRadius: 6,
                    datalabels: {
                        display: true,
                        anchor: 'end', align: 'top', offset: 4,
                        formatter: (v) => v.toFixed(2),
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
                        callbacks: { label: (ctx) => `${monthLabel} ${ctx.label}: ${ctx.raw.toFixed(2)}${metadata.unit}` }
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
                    label: metadata.name,
                    data: values,
                    borderColor: getIndicatorColor(indicatorKey),
                    backgroundColor: getIndicatorColor(indicatorKey, 0.1),
                    borderWidth: 2, tension: 0.3, fill: true, pointRadius: 3,
                    datalabels: {
                        display: values.length < 24,
                        align: 'top', font: { size: 9, weight: 'bold' },
                        formatter: (v) => v.toFixed(2)
                    }
                }]
            },
            plugins: [timeLabelsPlugin, ChartDataLabels],
            options: {
                responsive: true, maintainAspectRatio: false,
                layout: { padding: { bottom: 40, left: 10, right: 10, top: 20 } },
                plugins: {
                    legend: { display: false },
                    datalabels: { color: getIndicatorColor(indicatorKey) },
                    tooltip: {
                        callbacks: { label: (ctx) => `${metadata.name}: ${ctx.raw.toFixed(2)}${metadata.unit}` }
                    }
                },
                scales: {
                    y: { grid: { borderDash: [2, 2] }, ticks: { font: { size: 9 } } },
                    x: { grid: { display: false }, ticks: { display: false } }
                }
            }
        };
    }

    if (charts[indicatorKey]) charts[indicatorKey].destroy();
    charts[indicatorKey] = new Chart(canvas.getContext('2d'), config);
    updateAnalysis(indicatorKey);
}

// Función para actualizar el dictamen ejecutivo
function updateDictamen() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const container = document.getElementById('dictamen-container');

    if (!container) return;

    let targetYear = yearFilter;
    if (targetYear === 'all' || targetYear === 'Todos') targetYear = "2025";

    let data = auditRepositoryActividad[targetYear];
    if (quarterFilter !== 'all' && quarterFilter !== 'Todos') {
        data = data?.[quarterFilter];
    } else {
        data = data?.Annual;
    }

    if (!data || !data.report) {
        container.classList.add('hidden');
        return;
    }

    container.classList.remove('hidden');
    const report = data.report;
    const title = report.title[currentLanguage] || report.title.es;
    const text = report.text[currentLanguage] || report.text.es;

    const statusColors = {
        success: { bg: 'linear-gradient(135deg, #065f46 0%, #10b981 100%)', badge: '#10b981', icon: 'file-check-2' },
        warning: { bg: 'linear-gradient(135deg, #92400e 0%, #f59e0b 100%)', badge: '#f59e0b', icon: 'alert-triangle' },
        danger: { bg: 'linear-gradient(135deg, #991b1b 0%, #ef4444 100%)', badge: '#ef4444', icon: 'alert-octagon' }
    };
    const colors = statusColors[report.status] || statusColors.warning;

    container.innerHTML = `
        <div style="margin-top: 2rem; border-radius: 12px; overflow: hidden; box-shadow: 0 10px 40px rgba(0,0,0,0.1); background: white;">
            <div style="background: ${colors.bg}; padding: 1.25rem 1.5rem; color: white;">
                <div style="display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 1rem;">
                    <div style="display: flex; align-items: center; gap: 1rem;">
                        <div style="background: rgba(255,255,255,0.2); padding: 0.6rem; border-radius: 10px;">
                            <i data-lucide="${colors.icon}" style="width: 28px; height: 28px;"></i>
                        </div>
                        <div>
                            <div style="font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.15em; opacity: 0.9; font-weight: 700;">Dictamen de Auditoría de Gestión</div>
                            <h2 style="margin: 0; font-size: 1.2rem; font-weight: 800; letter-spacing: -0.02em;">${title}</h2>
                        </div>
                    </div>
                    <div style="text-align: center; background: white; padding: 0.6rem 1.2rem; border-radius: 12px; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);">
                        <div style="font-size: 0.65rem; text-transform: uppercase; color: #64748b; font-weight: 700; letter-spacing: 0.05em; margin-bottom: 2px;">Score</div>
                        <div style="font-size: 1.6rem; font-weight: 900; color: ${colors.badge}; line-height: 1;">${report.score}</div>
                    </div>
                </div>
            </div>
            <div style="padding: 1.5rem 2rem;">
                <div class="prose max-w-none" style="font-size: 0.9rem; line-height: 1.8; color: #334155;">
                    ${typeof marked !== 'undefined' ? marked.parse(text) : text.replace(/\n/g, '<br>')}
                </div>
            </div>
        </div>
    `;
    if (typeof lucide !== 'undefined') lucide.createIcons();
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
async function initializeDashboard() {
    try {
        const empresaId = 1;
        const apiData = await DashboardAPI.getIndicadoresData(empresaId, 'actividad');
        if (apiData && apiData.length > 0) {
            // Overwrite static data array
            activityData = apiData;
            console.log(`[Dashboard] Dynamically loaded ${apiData.length} records for Actividad`);
        } else {
            console.warn("[Dashboard] API returned empty indicators. Using static fallback.");
        }
    } catch (error) {
        dynamicDataError = true;
        console.error("[Dashboard] Failed to fetch indicators from DB. Using static fallback.", error);
    }
    updateAllCharts();
}

document.addEventListener('DOMContentLoaded', initializeDashboard);
