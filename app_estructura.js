// Estado global de Estructura de Capital
let charts = {};
let currentLanguage = 'es';

// Lista de 7 indicadores de estructura
const indicatorKeys = [
    'cobertura_fijos',
    'estructura_deuda',
    'multiplicador_capital',
    'capitalizacion',
    'deuda_tangibles',
    'propiedad_autonomia',
    'deuda_patrimonio'
];

// Metadatos de los indicadores
const indicatorMetadata = {
    cobertura_fijos: {
        name: { es: 'Cobertura de Activos Fijos', en: 'Fixed Assets Coverage' },
        formula: 'Patrimonio / Activos fijos',
        target: '> 1.00 x'
    },
    estructura_deuda: {
        name: { es: 'Estructura de la Deuda', en: 'Debt Structure' },
        formula: 'Pasivo CP / Pasivo total',
        target: '< 50%'
    },
    multiplicador_capital: {
        name: { es: 'Multiplicador de Capital', en: 'Equity Multiplier' },
        formula: 'Activos / Patrimonio',
        target: '< 2.50 x'
    },
    capitalizacion: {
        name: { es: 'Ratio de Capitalización', en: 'Capitalization Ratio' },
        formula: 'Deuda LP / (Deuda LP + Patrimonio)',
        target: '< 40%'
    },
    deuda_tangibles: {
        name: { es: 'Deuda a Activos Tangibles', en: 'Debt to Tangible Assets' },
        formula: 'Pasivo total / Activos tangibles',
        target: '< 60%'
    },
    propiedad_autonomia: {
        name: { es: 'Ratio de Propiedad', en: 'Equity Ratio' },
        formula: 'Patrimonio / Activo total',
        target: '> 40%'
    },
    deuda_patrimonio: {
        name: { es: 'Relación Deuda / Patrimonio', en: 'Debt to Equity Ratio' },
        formula: 'Pasivo total / Patrimonio',
        target: '< 1.50 x'
    }
};

// Función para filtrar datos de estructura
function filterData() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';

    let filtered = liquidityDataEstructura.filter(d => d.year && d.period);

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

// Funciones de búsqueda en el repositorio de auditoría (Estructura)
function getAuditInsights(year, filter) {
    if (typeof auditRepositoryEstructura === 'undefined') return null;
    if (filter === 'all' || filter === 'Todos') {
        return auditRepositoryEstructura[year]?.Annual;
    }
    return auditRepositoryEstructura[year]?.[filter];
}

function getComparativeInsights(filter) {
    if (typeof auditRepositoryEstructura === 'undefined' || filter === 'all' || filter === 'Todos') return null;

    if (!isNaN(filter)) {
        return auditRepositoryEstructura.Comparative?.Months?.[filter];
    }
    return auditRepositoryEstructura.Comparative?.[filter];
}

// Actualización del Dictamen Ejecutivo
function updateDictamen() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const container = document.getElementById('dictamen-container');

    if (!container) return;

    if (typeof auditRepositoryEstructura === 'undefined') {
        container.classList.add('hidden');
        return;
    }

    let targetYear = yearFilter;
    if (targetYear === 'all' || targetYear === 'Todos') {
        targetYear = "2025";
    }

    let data = auditRepositoryEstructura[targetYear];
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
                            <div style="font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.15em; opacity: 0.9; font-weight: 700;">
                                ${currentLanguage === 'es' ? 'Dictamen de Auditoría' : 'Audit Opinion'}
                            </div>
                            <h2 style="margin: 0; font-size: 1.2rem; font-weight: 800; letter-spacing: -0.02em;">${title}</h2>
                        </div>
                    </div>
                    <div style="text-align: center; background: white; padding: 0.6rem 1.2rem; border-radius: 12px; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);">
                        <div style="font-size: 0.65rem; text-transform: uppercase; color: #64748b; font-weight: 700;">Score</div>
                        <div style="font-size: 1.6rem; font-weight: 900; color: ${colors.badge};">${report.score}</div>
                    </div>
                </div>
            </div>
            <div style="padding: 1.5rem 2rem;">
                <div class="prose max-w-none text-sm leading-relaxed text-slate-700">
                    ${typeof marked !== 'undefined' ? marked.parse(text) : text.replace(/\n/g, '<br>')}
                </div>
            </div>
            <div style="background: #f1f5f9; padding: 1rem 2rem; border-top: 1px solid #e2e8f0; display: flex; justify-content: space-between; align-items: center;">
                <span class="text-xs font-medium text-slate-500 italic">Verificado por Auditoría Financiera - Estructura</span>
                <span class="text-xs text-slate-400">${new Date().toLocaleDateString()}</span>
            </div>
        </div>
    `;
    if (typeof lucide !== 'undefined') lucide.createIcons();
}

// Función para actualizar hallazgos por indicador
function updateAnalysis(indicatorKey) {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';
    const analysisContainer = document.getElementById(`analysis-${indicatorKey}`);

    if (!analysisContainer) return;
    if (typeof auditRepositoryEstructura === 'undefined') {
        analysisContainer.innerHTML = '';
        return;
    }

    let itemToRender = null;
    let isComparative = (yearFilter === 'all' || yearFilter === 'Todos');

    if (isComparative) {
        const compData = getComparativeInsights(monthFilter !== 'all' ? monthFilter : quarterFilter);
        if (compData && compData.indicators) itemToRender = compData.indicators[indicatorKey];
    } else {
        const yearData = getAuditInsights(yearFilter, quarterFilter);
        if (yearData && yearData.indicators) itemToRender = yearData.indicators[indicatorKey];
    }

    if (!itemToRender) {
        analysisContainer.innerHTML = `<div class="bg-gray-50 p-4 rounded-lg border-l-4 border-gray-300 text-xs text-gray-400 italic">Sin hallazgos para este periodo.</div>`;
        return;
    }

    const rawText = itemToRender.text || '';
    const positivoMatch = rawText.match(/\*\*Aspecto Positivo:\*\*\s*([\s\S]*?)(?=\*\*Aspecto Negativo:|$)/);
    const negativoMatch = rawText.match(/\*\*Aspecto Negativo:\*\*\s*([\s\S]*?)(?=\*\*Recomendación:|$)/);
    const recomendacionMatch = rawText.match(/\*\*Recomendación:\*\*\s*([\s\S]*?)$/);

    const positivo = positivoMatch ? positivoMatch[1].trim() : '';
    const negativo = negativoMatch ? negativoMatch[1].trim() : '';
    const recomendacion = recomendacionMatch ? recomendacionMatch[1].trim() : '';

    let sections = [];
    if (!positivo && !negativo && !recomendacion && rawText.trim()) {
        sections.push({ label: 'Análisis Interanual', icon: 'bar-chart-2', bg: '#dbeafe', border: '#1e3a8a', text: rawText.replace(/^\*\*Tendencia.*:\*\*\s*/i, '').trim() });
    } else {
        sections.push(
            { label: 'Aspecto Positivo', icon: 'check-circle', bg: '#c6f6d5', border: '#22543d', text: positivo },
            { label: 'Aspecto Negativo', icon: 'alert-triangle', bg: '#fed7d7', border: '#742a2a', text: negativo },
            { label: 'Recomendación', icon: 'lightbulb', bg: '#fefcbf', border: '#975a16', text: recomendacion }
        );
    }

    const headerStyle = 'background: linear-gradient(to right, #1d4ed8, #1e3a8a);';
    const yearLabel = isComparative ? 'Análisis Comparativo' : `Auditoría ${yearFilter}`;

    let html = `
        <div class="mt-4 border border-slate-200 rounded-lg overflow-hidden shadow-sm">
            <div style="${headerStyle} padding: 0.6rem 1rem; color: white;">
                <div class="text-[10px] uppercase tracking-wider opacity-80 font-bold">${yearLabel}</div>
                <div class="text-xs font-semibold mt-1">${itemToRender.title}</div>
            </div>
            <div class="p-3 flex flex-col gap-2">
    `;

    sections.forEach(s => {
        if (s.text) {
            html += `
                <div class="flex items-start gap-3 p-3 rounded-md" style="background-color: ${s.bg}; border-left: 4px solid ${s.border};">
                    <i data-lucide="${s.icon}" class="w-4 h-4 mt-0.5" style="color: ${s.border};"></i>
                    <div>
                        <strong class="block text-[10px] uppercase mb-1" style="color: ${s.border};">${s.label}</strong>
                        <p class="text-[11px] leading-relaxed text-slate-800">${s.text}</p>
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
        cobertura_fijos: `rgba(30, 58, 138, ${alpha})`,
        estructura_deuda: `rgba(22, 101, 52, ${alpha})`,
        multiplicador_capital: `rgba(234, 88, 12, ${alpha})`,
        capitalizacion: `rgba(202, 138, 4, ${alpha})`,
        deuda_tangibles: `rgba(185, 28, 28, ${alpha})`,
        propiedad_autonomia: `rgba(67, 56, 202, ${alpha})`,
        deuda_patrimonio: `rgba(147, 51, 234, ${alpha})`
    };
    return colors[key] || `rgba(107, 114, 128, ${alpha})`;
}

const yearColors = {
    2023: { bg: 'rgba(59, 130, 246, 0.75)', border: 'rgba(59, 130, 246, 1)' },
    2024: { bg: 'rgba(16, 185, 129, 0.75)', border: 'rgba(16, 185, 129, 1)' },
    2025: { bg: 'rgba(245, 158, 11, 0.75)', border: 'rgba(245, 158, 11, 1)' },
};

const monthNames = {
    es: ['', 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    en: ['', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
};

// Función para actualizar gráfico individual
function updateSingleChart(indicatorKey) {
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';
    const yearFilter = document.getElementById('yearFilter').value;
    const isMonthSpecific = monthFilter !== 'all' && monthFilter !== 'Todos';

    const canvas = document.getElementById(`chart${indicatorKey.charAt(0).toUpperCase() + indicatorKey.slice(1)}`);
    const noDataOverlay = document.getElementById(`no-data-${indicatorKey}`);

    if (!canvas) return;

    let config;
    const metadata = indicatorMetadata[indicatorKey];

    if (isMonthSpecific) {
        const monthNum = parseInt(monthFilter);
        let monthData = liquidityDataEstructura.filter(d => d.period === monthNum);
        if (yearFilter !== 'all' && yearFilter !== 'Todos') monthData = monthData.filter(d => d.year === parseInt(yearFilter));
        monthData.sort((a, b) => a.year - b.year);

        if (monthData.length === 0) {
            if (noDataOverlay) noDataOverlay.classList.remove('hidden');
            canvas.classList.add('hidden');
            updateAnalysis(indicatorKey);
            return;
        } else {
            if (noDataOverlay) noDataOverlay.classList.add('hidden');
            canvas.classList.remove('hidden');
        }

        config = {
            type: 'bar',
            data: {
                labels: monthData.map(d => d.year.toString()),
                datasets: [{
                    label: `${metadata.name[currentLanguage]} — ${(monthNames[currentLanguage] || monthNames.es)[monthNum]}`,
                    data: monthData.map(d => d[indicatorKey]),
                    backgroundColor: monthData.map(d => (yearColors[d.year] || yearColors[2023]).bg),
                    borderColor: monthData.map(d => (yearColors[d.year] || yearColors[2023]).border),
                    borderWidth: 2,
                    borderRadius: 6,
                    datalabels: { display: true, anchor: 'end', align: 'top', formatter: (v) => v.toFixed(2), font: { size: 10, weight: 'bold' }, color: getIndicatorColor(indicatorKey) }
                }]
            },
            plugins: [ChartDataLabels],
            options: {
                responsive: true, maintainAspectRatio: false,
                layout: { padding: { top: 30 } },
                plugins: { legend: { display: true, position: 'top' } },
                scales: { y: { grid: { borderDash: [2, 2] } }, x: { grid: { display: false } } }
            }
        };
    } else {
        const data = filterData();
        if (data.length === 0) {
            if (noDataOverlay) noDataOverlay.classList.remove('hidden');
            canvas.classList.add('hidden');
            updateAnalysis(indicatorKey);
            return;
        } else {
            if (noDataOverlay) noDataOverlay.classList.add('hidden');
            canvas.classList.remove('hidden');
        }

        config = {
            type: 'line',
            data: {
                labels: data.map(d => d.period.toString()),
                datasets: [{
                    label: metadata.name[currentLanguage],
                    data: data.map(d => d[indicatorKey]),
                    borderColor: getIndicatorColor(indicatorKey),
                    backgroundColor: getIndicatorColor(indicatorKey, 0.1),
                    borderWidth: 2, tension: 0.3, fill: true, pointRadius: 3,
                    datalabels: { display: data.length < 20, align: 'top', formatter: (v) => v.toFixed(2), font: { size: 9, weight: 'bold' } }
                }]
            },
            plugins: [timeLabelsPlugin, ChartDataLabels],
            options: {
                responsive: true, maintainAspectRatio: false,
                layout: { padding: { bottom: 40, top: 20 } },
                plugins: { legend: { display: false }, datalabels: { color: getIndicatorColor(indicatorKey) } },
                scales: { y: { grid: { borderDash: [2, 2] } }, x: { grid: { display: false }, ticks: { display: false } } }
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
