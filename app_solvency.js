let charts = {};
let currentLanguage = 'es';
let dynamicDataError = false;
let dbInsights = []; // Almacén para insights desde la BD

// Lista de 6 indicadores de solvencia
const indicatorKeys = ['cargos_fijos', 'intereses', 'servicio_deuda', 'deuda_ebitda', 'endeudamiento_total', 'solvencia_patrimonial'];

// Metadatos de los indicadores
const indicatorMetadata = {
    cargos_fijos: {
        name: { es: 'Cobertura de Cargos Fijos', en: 'Fixed Charge Coverage' },
        formula: '(EBIT + Arrendamientos) / (Cargos Fijos)',
        target: '> 1.50 x'
    },
    intereses: {
        name: { es: 'Cobertura de Intereses', en: 'Interest Coverage' },
        formula: 'EBIT / Gastos por Intereses',
        target: '> 2.00 x'
    },
    servicio_deuda: {
        name: { es: 'Cobertura Servicio Deuda', en: 'Debt Service Coverage' },
        formula: 'EBITDA / Servicio de la Deuda',
        target: '> 1.20 x'
    },
    deuda_ebitda: {
        name: { es: 'Deuda Neta / EBITDA', en: 'Net Debt / EBITDA' },
        formula: 'Deuda Neta / EBITDA',
        target: '< 3.00 x'
    },
    endeudamiento_total: {
        name: { es: 'Endeudamiento Total', en: 'Total Debt Ratio' },
        formula: 'Pasivo Total / Activo Total',
        target: '< 70%'
    },
    solvencia_patrimonial: {
        name: { es: 'Solvencia Patrimonial', en: 'Equity to Debt Ratio' },
        formula: 'Patrimonio / Pasivo Total',
        target: '> 0.40 x'
    }
};

// Función para filtrar datos de solvencia
function filterData() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';

    let localData = window.liquidityDataSolvency && window.liquidityDataSolvency.length > 0 ? window.liquidityDataSolvency : (typeof liquidityDataSolvency !== 'undefined' ? liquidityDataSolvency : []);
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

// Función para buscar hallazgos en el repositorio de solvencia
function getAuditInsights(year, filter) {
    if (typeof auditRepositorySolvency === 'undefined') return null;
    if (filter === 'all' || filter === 'Todos') {
        return auditRepositorySolvency[year]?.Annual;
    }
    // Para cuartos e.g. "1Q"
    return auditRepositorySolvency[year]?.[filter];
}

// Función para buscar hallazgos comparativos
function getComparativeInsights(filter) {
    if (filter === 'all' || filter === 'Todos') return null;
    if (typeof auditRepositorySolvency === 'undefined') return null;

    // Si es un mes (1-12)
    if (!isNaN(filter)) {
        return auditRepositorySolvency.Comparative?.Months?.[filter];
    }

    // Si es un cuarto (1Q-4Q)
    return auditRepositorySolvency.Comparative?.[filter];
}


function updateDictamen() {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const container = document.getElementById('dictamen-container');

    if (!container) return;

    let targetYear = (yearFilter === 'all' || yearFilter === 'Todos') ? "2025" : yearFilter;
    let periodKey = (quarterFilter === 'all' || quarterFilter === 'Todos') ? "Annual" : quarterFilter;

    const yearData = (typeof auditRepositorySolvency !== 'undefined' && empresaId === 1) ? auditRepositorySolvency[targetYear] : null;
    const report = yearData?.[periodKey]?.report;

    const statusColors = {
        success: { accent: '#10b981', bg: 'rgba(16, 185, 129, 0.1)', text: '#059669' },
        warning: { accent: '#f59e0b', bg: 'rgba(245, 158, 11, 0.1)', text: '#92400e' },
        danger:  { accent: '#ef4444', bg: 'rgba(239, 68, 68, 0.1)',  text: '#991b1b'  }
    };

    const status = report?.status || 'warning';
    const c = statusColors[status] || statusColors.warning;
    const title = report ? (report.title[currentLanguage] || report.title.es) : (currentLanguage === 'es' ? 'Diagnóstico No Disponible' : 'Diagnosis Not Available');
    const text = report ? (report.text[currentLanguage] || report.text.es) : (currentLanguage === 'es' ? 'No se han generado hallazgos de auditoría para este periodo aún. Los indicadores técnicos se muestran a continuación.' : 'No audit findings have been generated for this period yet. Technical indicators are shown below.');
    const parsedText = typeof marked !== 'undefined' ? marked.parse(text) : text.replace(/\n/g, '<br>');

    container.innerHTML = `
        <style>
            .dictamen-lean {
                background: white;
                border-radius: 12px;
                padding: 24px;
                box-shadow: 0 4px 20px rgba(0,0,0,0.05);
                border: 1px solid #e0e0e0;
                margin-bottom: 20px;
                animation: fadeSlideIn 0.5s ease-out;
                font-family: 'Inter', sans-serif;
            }
            .lean-header {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
                margin-bottom: 12px;
                padding-bottom: 8px;
                border-bottom: 1px solid #f1f2f6;
            }
            .lean-company-meta h2 {
                font-size: 0.95rem;
                font-weight: 800;
                color: #0A1F44;
                margin: 0;
                letter-spacing: -0.02em;
            }
            .lean-company-meta p {
                font-size: 0.72rem;
                color: #94a3b8;
                margin: 0;
            }
            .lean-status-badge {
                font-size: 0.65rem;
                font-weight: 700;
                padding: 4px 12px;
                border-radius: 20px;
                background: ${c.bg};
                color: ${c.text};
                display: flex;
                align-items: center;
                gap: 6px;
                height: fit-content;
            }
            .lean-badge-dot {
                width: 6px;
                height: 6px;
                background: ${c.accent};
                border-radius: 50%;
                box-shadow: 0 0 8px ${c.accent};
            }

            .lean-grid {
                display: flex;
                gap: 32px;
            }

            .lean-column-left {
                width: 320px;
                border-right: 1px solid #f1f2f6;
                padding-right: 24px;
                flex-shrink: 0;
            }
            .lean-column-right {
                flex-grow: 1;
                padding-left: 0;
            }
            .lean-section-title {
                font-size: 0.9rem;
                font-weight: 800;
                color: #0A1F44;
                margin-bottom: 0.75rem;
                display: flex;
                align-items: center;
                gap: 8px;
                letter-spacing: -0.01em;
            }
            .lean-risk-item {
                display: flex;
                align-items: center;
                gap: 10px;
                padding: 6px 10px;
                background: #f8fafc;
                border-radius: 6px;
                margin-bottom: 6px;
                font-size: 0.8rem;
                color: #475569;
                border: 1px solid transparent;
                transition: all 0.2s ease;
            }
            .lean-risk-icon { color: #1E4E79; opacity: 0.8; }

            .lean-audit-body {
                column-count: 2;
                column-gap: 30px;
                column-rule: 1px solid #f1f2f6;
            }
            .lean-audit-body h3 {
                break-inside: avoid-column;
                font-size: 0.7rem;
                font-weight: 800;
                text-transform: uppercase;
                color: #1E4E79;
                margin: 0 0 0.25rem;
                padding: 0;
                letter-spacing: 0.05em;
            }
            .lean-audit-body p {
                break-inside: avoid-column;
                font-size: 0.75rem;
                color: #475569;
                line-height: 1.5;
                margin: 0 0 1rem;
            }
            @keyframes fadeSlideIn {
                from { opacity: 0; transform: translateY(10px); }
                to { opacity: 1; transform: translateY(0); }
            }
        </style>

        <div class="dictamen-lean">
            <div class="lean-header">
                <div class="lean-company-meta">
                    <h2>${currentCompany.name.toUpperCase()}</h2>
                    <p>Sector: ${currentCompany.sector} | Diagnóstico de Solvencia</p>
                </div>
                <div class="lean-status-badge">
                    <div class="lean-badge-dot"></div>
                    PERFIL ACTIVO
                </div>
            </div>

            <div class="lean-grid">
                <div class="lean-column-left">
                    <div class="lean-section-title">RIESGOS DETECTADOS</div>
                    ${(currentCompany.risks.solvencia || []).map(r => `
                        <div class="lean-risk-item">
                            <i data-lucide="${r.icon}" class="lean-risk-icon" style="width: 14px; height: 14px;"></i>
                            <span>${r.text}</span>
                        </div>
                    `).join('')}
                </div>

                <div class="lean-column-right">
                    <div class="lean-section-title">${title}</div>
                    <div class="lean-audit-body">
                        ${parsedText}
                    </div>
                </div>
            </div>
        </div>
    `;

    if (typeof lucide !== 'undefined') lucide.createIcons();
}

// Función para actualizar el análisis (Audit Insights) con pestañas estilo Actividad
function updateAnalysis(indicatorKey) {
    const yearFilter = document.getElementById('yearFilter').value;
    const quarterFilter = document.getElementById('quarterFilter').value;
    const monthFilter = document.getElementById('monthFilter')?.value || 'all';

    const tabsContainer = document.getElementById(`tabs-${indicatorKey}`);
    if (!tabsContainer) return;
    tabsContainer.innerHTML = '';

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
                title: dynamicInsight.titulo || "Análisis AI",
                text: (
                    (dynamicInsight.analisis_positivo ? `**Aspecto Positivo:** ${dynamicInsight.analisis_positivo}\n\n` : '') +
                    (dynamicInsight.analisis_negativo ? `**Aspecto Negativo:** ${dynamicInsight.analisis_negativo}\n\n` : '') +
                    (dynamicInsight.recomendacion ? `**Recomendación:** ${dynamicInsight.recomendacion}` : '')
                ),
                type: dynamicInsight.status || 'info'
            };
        }
    }

    // 2. FALLBACK: Repositorio estático (solo empresaId 1)
    if (!itemToRender && empresaId === 1) {
        if (isComparative) {
            // Modo comparativo: buscar en Comparative
            const compData = getComparativeInsights(monthFilter !== 'all' ? monthFilter : quarterFilter);
            if (compData) {
                if (compData.indicators && compData.indicators[indicatorKey]) {
                    itemToRender = compData.indicators[indicatorKey];
                } else if (compData.findings) {
                    itemToRender = compData.findings[0];
                }
            }
        } else {
            // Modo año específico: buscar en el año
            const yearData = getAuditInsights(yearFilter, quarterFilter);
            if (yearData && yearData.indicators) {
                itemToRender = yearData.indicators[indicatorKey];
            }
        }
    }

    // FALLBACK - Solo para MAS CONSULTA (empresaId 1)
    if (!itemToRender && empresaId === 1) {
        tabsContainer.innerHTML = `
            <div class="text-xs text-gray-500 italic p-1">
                ${currentLanguage === 'es' ? 'Sin hallazgos específicos para este periodo.' : 'No specific findings for this period.'}
            </div>
        `;
        return;
    }

    if (!itemToRender) return;

    // Parse the text into sections
    const rawText = itemToRender.text || '';
    
    // Si no hay Aspecto Positivo/Negativo/Recomendación, crear una vista general
    if (!rawText.includes('**Aspecto Positivo:**') && !rawText.includes('**Aspecto Negativo:**')) {
        const tendenciaClean = rawText.replace(/^\*\*Tendencia\s*\d{4}-\d{4}:\*\*\s*/i, '').trim();
        if (tendenciaClean) {
            const btn = document.createElement('button');
            btn.className = 'insight-tab-btn';
            btn.innerHTML = `<i data-lucide="bar-chart-2" style="color: #1e3a8a"></i> ANÁLISIS`;
            btn.onclick = () => toggleInsightOverlay(indicatorKey, { 
                id: 'general', label: 'ANÁLISIS', icon: 'bar-chart-2', color: '#1e3a8a', 
                title: 'Análisis de Auditoría', text: tendenciaClean 
            }, btn);
            tabsContainer.appendChild(btn);
        }
    } else {
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
    }

    if (typeof lucide !== 'undefined') lucide.createIcons();
}

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
        cargos_fijos: `rgba(30, 58, 138, ${alpha})`,      // Blue 800
        intereses: `rgba(22, 101, 52, ${alpha})`,        // Green 800
        servicio_deuda: `rgba(234, 88, 12, ${alpha})`,   // Orange 600
        deuda_ebitda: `rgba(202, 138, 4, ${alpha})`,     // Yellow 600
        endeudamiento_total: `rgba(185, 28, 28, ${alpha})`, // Red 700
        solvencia_patrimonial: `rgba(67, 56, 202, ${alpha})` // Indigo 700
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
    const metadata = indicatorMetadata[indicatorKey];

    if (isMonthSpecific) {
        // ===== MODO MES ESPECÍFICO: Barras por año =====
        const monthNum = parseInt(monthFilter);
        let monthData = liquidityDataSolvency.filter(d => d.period === monthNum);

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
                        formatter: (v) => v != null ? v.toFixed(2) : '-',
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
                            label: (ctx) => `${monthLabel} ${ctx.label}: ${ctx.raw != null ? ctx.raw.toFixed(2) : '-'}`
                        }
                    }
                },
                scales: {
                    y: { grid: { borderDash: [2, 2] }, ticks: { font: { size: 9 } } },
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
                        formatter: (v) => v != null ? v.toLocaleString(undefined, { minimumFractionDigits: 2, maximumFractionDigits: 2 }) : '-'
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
                            label: (ctx) => `${metadata.name[currentLanguage]}: ${ctx.raw != null ? ctx.raw.toFixed(2) : '-'}`
                        }
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

function updateAllCharts() {
    indicatorKeys.forEach(k => {
        try {
            updateSingleChart(k);
        } catch (err) {
            console.error('Error rendering chart', k, err);
            const overlay = document.getElementById(`no-data-${k}`);
            if (overlay) {
                overlay.innerHTML = `<p style="color:red; font-size:10px;">Error: ${err.message}</p>`;
                overlay.classList.remove('hidden');
            }
        }
    });
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
        liquidityDataSolvency = [];
        window.liquidityDataSolvency = [];
    }
    updateAllCharts();

    try {
        const apiData = await DashboardAPI.getIndicadoresData(empresaId, 'solvencia');
        if (apiData && apiData.length > 0) {
            liquidityDataSolvency = apiData;
            window.liquidityDataSolvency = apiData; // FIX: Update window object
            console.log(`[Dashboard] Dynamically loaded ${apiData.length} records for Solvencia`);
        } else {
            console.warn("[Dashboard] API returned empty indicators. Setting empty state.");
            liquidityDataSolvency = []; 
            window.liquidityDataSolvency = [];
        }

        // Cargar Insights desde la BD
        const insightsRes = await DashboardAPI.getInsights(empresaId, 'solvencia');
        if (insightsRes && insightsRes.insights) {
            dbInsights = insightsRes.insights;
            console.log(`[Dashboard] Loaded ${dbInsights.length} AI insights for Solvencia from DB`);
        }
    } catch (error) {
        dynamicDataError = true;
        console.error("[Dashboard] Failed to fetch dynamic data from DB. Using static fallback.", error);
    }
    updateAllCharts();
}

document.addEventListener('DOMContentLoaded', initializeDashboard);
