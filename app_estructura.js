let charts = {};
let currentLanguage = 'es';
let dynamicDataError = false;
let dbInsights = []; // Almacén para insights desde la BD

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

    let localData = window.liquidityDataEstructura && window.liquidityDataEstructura.length > 0 ? window.liquidityDataEstructura : (typeof liquidityDataEstructura !== 'undefined' ? liquidityDataEstructura : []);
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

// Función para mostrar el Dictamen (estilo Lean Premium - siempre visible)
// Función para mostrar el Dictamen (estilo Lean Premium - siempre visible)
function updateDictamen() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const container = document.getElementById('dictamen-container');

    if (!container) return;

    let targetYear = (yearFilter === 'all' || yearFilter === 'Todos') ? 2025 : parseInt(yearFilter);
    let periodKey = (quarterFilter === 'all' || quarterFilter === 'Todos') ? "Annual" : quarterFilter;

    // 1. PRIORIDAD: Buscar en Insights dinámicos (Base de Datos)
    let dynamicReport = null;
    if (dbInsights && dbInsights.length > 0) {
        dynamicReport = dbInsights.find(ins => 
            (ins.year === targetYear || ins.periodo_ano === targetYear) && 
            ins.period_key === periodKey &&
            (ins.indicador_key === 'report' || ins.indicador_key === 'insight-estructura-ai' || ins.indicador_key === 'estructura')
        );
    }

    const pos = dynamicReport?.analisis_positivo || (currentLanguage === 'es' ? "No se registran hallazgos positivos en estructura para este periodo." : "No positive structure findings recorded.");
    const neg = dynamicReport?.analisis_negativo || (currentLanguage === 'es' ? "No hay alertas criticas de estructura en este periodo." : "No critical structure alerts.");
    const acc = dynamicReport?.recomendacion || (currentLanguage === 'es' ? "Monitorear la composición del pasivo y capitalización." : "Monitor liability composition and capitalization.");

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
                    <span class="text-slate-400 font-normal ml-2 lowercase" style="font-size: 0.72rem">Sector: ${currentCompany.sector || 'Consultoría / Servicios'} | Diagnóstico de Estructura de Fondeo</span>
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

// -------------------------------------------------------------
// FUNCIONES DE INSIGHTS (LEAN PREMIUM OVERLAYS)
// -------------------------------------------------------------

function toggleInsightOverlay(indicatorKey, sectionLabel, text, icon, color, sectionTitle) {
    const overlay = document.getElementById(`insight-overlay-${indicatorKey}`);
    const titleEl = document.getElementById(`insight-title-${indicatorKey}`);
    const contentEl = document.getElementById(`insight-content-${indicatorKey}`);
    const iconEl = document.getElementById(`insight-icon-${indicatorKey}`);
    const btns = document.querySelectorAll(`#analysis-${indicatorKey} .insight-tab-btn`);

    if (!overlay) return;

    // Reset styles
    btns.forEach(b => {
        b.classList.remove('active');
    });

    // Check if already active and clicking same tab -> hide
    const isActive = overlay.classList.contains('active') && titleEl.textContent === sectionLabel;
    
    if (isActive) {
        hideInsightOverlay(indicatorKey);
        return;
    }

    // Set new content
    titleEl.textContent = sectionTitle || sectionLabel;
    
    // Parse markdown if marked is available
    if (typeof marked !== 'undefined') {
        contentEl.innerHTML = marked.parse(text);
    } else {
        contentEl.innerHTML = `<p>${text}</p>`;
    }
    
    // Update icon via lucide string
    if (iconEl && icon) {
        iconEl.setAttribute('data-lucide', icon);
        iconEl.style.color = color;
        if (typeof lucide !== 'undefined') lucide.createIcons();
    }

    // Add active state to clicked button
    const activeBtn = Array.from(btns).find(b => b.textContent.trim() === sectionLabel);
    if (activeBtn) {
        activeBtn.classList.add('active');
    }

    // Show overlay
    overlay.classList.add('active');
}

function hideInsightOverlay(indicatorKey) {
    const overlay = document.getElementById(`insight-overlay-${indicatorKey}`);
    if (overlay) overlay.classList.remove('active');
    
    const btns = document.querySelectorAll(`#analysis-${indicatorKey} .insight-tab-btn`);
    btns.forEach(b => {
        b.classList.remove('active');
    });
}

// Función para actualizar hallazgos por indicador
function updateAnalysis(indicatorKey) {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';
    const analysisContainer = document.getElementById(`analysis-${indicatorKey}`);

    // Check if the overlay mechanism is present for this indicator
    const hasOverlay = document.getElementById(`insight-overlay-${indicatorKey}`) !== null;

    if (!analysisContainer) return;
    hideInsightOverlay(indicatorKey); // reset any open overlay state

    if (typeof auditRepositoryEstructura === 'undefined') {
        analysisContainer.innerHTML = '';
        return;
    }

    let itemToRender = null;
    let isComparative = (yearFilter === 'all' || yearFilter === 'Todos');

    // 1. PRIORIDAD: Buscar en insights dinámicos de la BD
    if (!isComparative && dbInsights && dbInsights.length > 0) {
        const dynamicInsight = dbInsights.find(ins => 
            ins.year === parseInt(yearFilter) && 
            (ins.period_key === quarterFilter || (quarterFilter === 'all' && ins.period_key === 'Annual')) &&
            ins.indicador_key === indicatorKey
        );
        if (dynamicInsight) {
            itemToRender = {
                text: (
                    (dynamicInsight.analisis_positivo ? `**Aspecto Positivo:** ${dynamicInsight.analisis_positivo}\n\n` : '') +
                    (dynamicInsight.analisis_negativo ? `**Aspecto Negativo:** ${dynamicInsight.analisis_negativo}\n\n` : '') +
                    (dynamicInsight.recomendacion ? `**Recomendación:** ${dynamicInsight.recomendacion}` : '')
                ),
                status: dynamicInsight.status || 'info'
            };
        }
    }

    // 2. FALLBACK: Repositorio estático (solo empresaId 1)
    if (!itemToRender && empresaId === 1) {
        if (isComparative) {
            const compData = getComparativeInsights(monthFilter !== 'all' ? monthFilter : quarterFilter);
            if (compData && compData.indicators) itemToRender = compData.indicators[indicatorKey];
        } else {
            const yearData = getAuditInsights(yearFilter, quarterFilter);
            if (yearData && yearData.indicators) itemToRender = yearData.indicators[indicatorKey];
        }
    }

    // FALLBACK - Solo para MAS CONSULTA (empresaId 1)
    if (!itemToRender && empresaId === 1) {
        analysisContainer.innerHTML = `<span class="text-xs text-slate-400 italic font-mono bg-slate-100 px-2 py-1 rounded">No hay hallazgos disponibles para este periodo.</span>`;
        return;
    }

    if (!itemToRender || (!itemToRender.text && !itemToRender.es && !itemToRender.en)) return;

    // Extract text from object
    let rawText = '';
    if (typeof itemToRender === 'string') {
        rawText = itemToRender;
    } else if (itemToRender.text) {
        rawText = typeof itemToRender.text === 'string' ? itemToRender.text : (itemToRender.text[currentLanguage] || itemToRender.text.es);
    }

    // Parse Markdown to extract Positivo/Negativo/Recomendación matching Actividad's format
    const positivoMatch = rawText.match(/\*\*Aspecto Positivo:\*\*\s*([\s\S]*?)(?=\*\*Aspecto Negativo:|$)/i);
    const negativoMatch = rawText.match(/\*\*Aspecto Negativo:\*\*\s*([\s\S]*?)(?=\*\*Recomendación:|$)/i);
    const recomendacionMatch = rawText.match(/\*\*Recomendación:\*\*\s*([\s\S]*?)$/i);

    const positivo = positivoMatch ? positivoMatch[1].trim() : '';
    const negativo = negativoMatch ? negativoMatch[1].trim() : '';
    const recomendacion = recomendacionMatch ? recomendacionMatch[1].trim() : '';

    let sections = [];
    if (!positivo && !negativo && !recomendacion && rawText.trim()) {
        sections.push({ label: 'ANÁLISIS', icon: 'bar-chart-2', color: '#1e3a8a', title: 'ANÁLISIS DE AUDITORÍA', text: rawText.replace(/^\*\*Tendencia.*:\*\*\s*/i, '').trim() });
    } else {
        if (positivo) sections.push({ label: 'POSITIVO', icon: 'check-circle', color: '#059669', title: 'FORTALEZA DETECTADA', text: positivo });
        if (negativo) sections.push({ label: 'ALERTA', icon: 'alert-triangle', color: '#dc2626', title: 'ALERTA DE SEGURIDAD', text: negativo });
        if (recomendacion) sections.push({ label: 'ACCIÓN', icon: 'zap', color: '#2563eb', title: 'RECOMENDACIÓN DE AUDITORÍA', text: recomendacion });
    }

    // If overlay structure is not present (fallback)
    if (!hasOverlay) {
        let html = `<div class="mt-4 p-4 bg-slate-50 rounded-xl border border-slate-100 flex flex-col gap-3">`;
        sections.forEach(s => {
            html += `<div class="text-sm"><strong class="text-slate-800">${s.label}:</strong> <span class="text-slate-600">${s.text}</span></div>`;
        });
        html += `</div>`;
        analysisContainer.innerHTML = html;
        if (typeof lucide !== 'undefined') lucide.createIcons();
        return;
    }

    // Generate Tabs for Overlay (Lean Premium)
    analysisContainer.innerHTML = '';
    sections.forEach(s => {
        const btn = document.createElement('button');
        btn.className = 'insight-tab-btn';
        // HTML escape text for onclick passing
        const escText = s.text.replace(/'/g, "\\'").replace(/"/g, '&quot;').replace(/\n/g, '<br>');
        btn.setAttribute('onclick', `toggleInsightOverlay('${indicatorKey}', '${s.label}', '${escText}', '${s.icon}', '${s.color}', '${s.title || s.label}')`);
        btn.dataset.color = s.color; // store for hover effects
        
        btn.innerHTML = `<i data-lucide="${s.icon}" style="color: ${s.color}"></i> ${s.label}`;
        analysisContainer.appendChild(btn);
    });

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
                    datalabels: { display: true, anchor: 'end', align: 'top', formatter: (v) => v != null ? v.toFixed(2) : '-', font: { size: 10, weight: 'bold' }, color: getIndicatorColor(indicatorKey) }
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
                    datalabels: { display: data.length < 20, align: 'top', formatter: (v) => v != null ? v.toFixed(2) : '-', font: { size: 9, weight: 'bold' } }
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
async function initializeDashboard() {
    if (empresaId !== 1) {
        liquidityDataEstructura = [];
        window.liquidityDataEstructura = [];
    }
    updateAllCharts();

    try {
        const apiData = await DashboardAPI.getIndicadoresData(empresaId, 'estructura');
        if (apiData && apiData.length > 0) {
            liquidityDataEstructura = apiData;
            window.liquidityDataEstructura = apiData;
            console.log(`[Dashboard] Dynamically loaded ${apiData.length} records for Estructura`);
        } else {
            console.warn("[Dashboard] API returned empty indicators. Setting empty state.");
            liquidityDataEstructura = []; 
            window.liquidityDataEstructura = [];
        }

        // Cargar Insights desde la BD
        const insightsRes = await DashboardAPI.getInsights(empresaId, 'estructura');
        if (insightsRes && insightsRes.insights) {
            dbInsights = insightsRes.insights;
            console.log(`[Dashboard] Loaded ${dbInsights.length} AI insights for Estructura from DB`);
        }
    } catch (error) {
        dynamicDataError = true;
        console.error("[Dashboard] Failed to fetch dynamic data from DB. Using static fallback.", error);
    }
    updateAllCharts();
}

document.addEventListener('DOMContentLoaded', initializeDashboard);
