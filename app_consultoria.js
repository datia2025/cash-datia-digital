/**
 * app_consultoria.js
 * Lógica de renderizado para consultoria.html
 * Lee datos de data_consultoria.js y los inyecta en el DOM.
 */

// ─── HELPERS ────────────────────────────────────────────────────────────────
function ic(name, size = 14, color = 'currentColor') {
    return `<i data-lucide="${name}" style="width:${size}px;height:${size}px;color:${color};flex-shrink:0;"></i>`;
}

// ─── 1. SPIDER CHART (Canvas) ───────────────────────────────────────────────
function renderSpiderChart() {
    const canvas = document.getElementById('spider-canvas');
    if (!canvas) return;
    const ctx = canvas.getContext('2d');
    const W = canvas.width, H = canvas.height;
    const cx = W / 2, cy = H / 2;
    const R = Math.min(cx, cy) - 60;
    const n = saludFinanciera.length;
    const maxScore = 10;

    function getPoint(i, ratio) {
        const angle = (Math.PI * 2 * i / n) - Math.PI / 2;
        return {
            x: cx + R * ratio * Math.cos(angle),
            y: cy + R * ratio * Math.sin(angle)
        };
    }

    ctx.clearRect(0, 0, W, H);

    // Grid circles
    for (let level = 1; level <= 5; level++) {
        const ratio = level / 5;
        ctx.beginPath();
        for (let i = 0; i <= n; i++) {
            const p = getPoint(i % n, ratio);
            i === 0 ? ctx.moveTo(p.x, p.y) : ctx.lineTo(p.x, p.y);
        }
        ctx.closePath();
        ctx.strokeStyle = 'rgba(30, 42, 94, 0.08)';
        ctx.lineWidth = 1;
        ctx.stroke();

        // Level labels
        if (level % 2 !== 0) {
            const lp = getPoint(0, ratio);
            ctx.fillStyle = '#999db3';
            ctx.font = '10px Inter, sans-serif';
            ctx.textAlign = 'center';
            ctx.fillText((level * 2).toString(), lp.x, lp.y - 6);
        }
    }

    // Axis lines
    for (let i = 0; i < n; i++) {
        const p = getPoint(i, 1);
        ctx.beginPath();
        ctx.moveTo(cx, cy);
        ctx.lineTo(p.x, p.y);
        ctx.strokeStyle = 'rgba(30, 42, 94, 0.06)';
        ctx.lineWidth = 1;
        ctx.stroke();
    }

    // Data polygon
    ctx.beginPath();
    saludFinanciera.forEach((item, i) => {
        const p = getPoint(i, item.score / maxScore);
        i === 0 ? ctx.moveTo(p.x, p.y) : ctx.lineTo(p.x, p.y);
    });
    ctx.closePath();
    ctx.fillStyle = 'rgba(255, 107, 43, 0.15)';
    ctx.fill();
    ctx.strokeStyle = '#FF6B2B';
    ctx.lineWidth = 2.5;
    ctx.stroke();

    // Data points + Labels
    saludFinanciera.forEach((item, i) => {
        const p = getPoint(i, item.score / maxScore);

        // Point
        ctx.beginPath();
        ctx.arc(p.x, p.y, 5, 0, Math.PI * 2);
        ctx.fillStyle = item.color;
        ctx.fill();
        ctx.strokeStyle = '#fff';
        ctx.lineWidth = 2;
        ctx.stroke();

        // Label
        const lp = getPoint(i, 1.18);
        ctx.fillStyle = '#1E2A5E';
        ctx.font = 'bold 11px Inter, sans-serif';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText(item.variable, lp.x, lp.y - 7);

        ctx.fillStyle = '#999db3';
        ctx.font = 'bold 13px Inter, sans-serif';
        ctx.fillText(item.score + '/10', lp.x, lp.y + 8);
    });

    // Insight
    const insightEl = document.getElementById('spider-insight');
    if (insightEl && typeof insightSpiderChart !== 'undefined') {
        insightEl.textContent = insightSpiderChart;
    }
}

// ─── 2. SCORECARD TABLA ─────────────────────────────────────────────────────
function renderScorecard() {
    const container = document.getElementById('scorecard-container');
    if (!container) return;

    // Ordenar de mayor a menor score
    const sortedData = [...saludFinanciera].sort((a, b) => b.score - a.score);

    container.innerHTML = sortedData.map(item => {
        const barWidth = (item.score / 10) * 100;
        const statusColor = item.score >= 8 ? '#16a34a' : item.score >= 5 ? '#d97706' : '#dc2626';
        const statusBg = '#ebeef9';
        const statusBd = '#dcdfed';

        return `
        <div class="flex items-center gap-4 p-4 rounded-2xl border transition-all hover:shadow-md"
             style="background:${statusBg}; border-color:${statusBd};">
            <div class="flex-shrink-0 p-2 rounded-xl" style="background:white; box-shadow: 0 1px 4px rgba(0,0,0,0.06);">
                ${ic(item.icono, 20, item.color)}
            </div>
            <div class="flex-grow min-w-0">
                <div class="text-xs font-bold text-gray-800 mb-1">${item.variable}</div>
                <div class="w-full h-2 rounded-full bg-white/80 overflow-hidden">
                    <div class="h-full rounded-full transition-all duration-700" style="width:${barWidth}%; background:${item.color};"></div>
                </div>
            </div>
            <div class="text-right flex-shrink-0">
                <div class="text-lg font-black" style="color:#2a387a;">${item.score}</div>
                <div class="text-[9px] font-bold text-gray-400">/10</div>
            </div>
        </div>`;
    }).join('');
}

// ─── 3. ENFOQUE METODOLÓGICO ────────────────────────────────────────────────
function renderEnfoque() {
    const container = document.getElementById('enfoque-container');
    if (!container) return;

    const pilares = enfoqueMetodologico.pilares.map((p, i) => `
        <div class="flex items-start gap-4 p-4 rounded-2xl bg-white border border-gray-100 transition-all hover:shadow-md hover:-translate-y-1">
            <div class="flex-shrink-0 w-10 h-10 rounded-xl flex items-center justify-center" 
                 style="background: linear-gradient(135deg, #1E2A5E, #2B3F8E);">
                ${ic(p.icono, 18, '#ffffff')}
            </div>
            <div>
                <div class="text-sm font-bold text-gray-800 mb-1">${i + 1}. ${p.titulo}</div>
                <div class="text-xs text-gray-600 leading-relaxed">${p.descripcion}</div>
            </div>
        </div>
    `).join('');

    container.innerHTML = `
        <div class="space-y-3">${pilares}</div>
        <div class="mt-5 p-4 rounded-2xl border-l-4 bg-gradient-to-r from-blue-50 to-transparent" style="border-color: #1E2A5E;">
            <div class="flex items-center gap-2 mb-1">
                ${ic('quote', 14, '#1E2A5E')}
                <span class="text-[10px] font-bold uppercase tracking-wider text-gray-400">Principio Rector</span>
            </div>
            <p class="text-sm font-semibold italic" style="color: #1E2A5E;">"${enfoqueMetodologico.principio}"</p>
        </div>`;
}

// ─── 4. DIAGNÓSTICO TRANSVERSAL ─────────────────────────────────────────────
function renderDiagnostico() {
    const container = document.getElementById('diagnostico-container');
    if (!container) return;

    const parrafosHtml = diagnosticoTransversal.parrafos.map(p =>
        `<p class="text-xs text-gray-700 leading-relaxed mb-3">${p}</p>`
    ).join('');

    const crucesHtml = diagnosticoTransversal.cruces.map(c => `
        <div class="flex items-center gap-3 p-3 rounded-xl bg-white border border-gray-100 transition-all hover:border-orange-200">
            <div class="flex-shrink-0 flex flex-col items-center gap-1">
                <span class="text-[9px] font-bold px-2 py-0.5 rounded-full bg-blue-50 text-blue-700">${c.modulo1}</span>
                <span class="text-xs font-black text-gray-800">${c.valor1}</span>
                <span class="text-[9px] text-gray-400">${c.indicador1}</span>
            </div>
            <div class="flex-shrink-0 text-gray-300">${ic('arrow-right', 16)}</div>
            <div class="flex-shrink-0 flex flex-col items-center gap-1">
                <span class="text-[9px] font-bold px-2 py-0.5 rounded-full bg-red-50 text-red-700">${c.modulo2}</span>
                <span class="text-xs font-black text-gray-800">${c.valor2}</span>
                <span class="text-[9px] text-gray-400">${c.indicador2}</span>
            </div>
            <div class="flex-grow pl-2 border-l border-dashed border-gray-200">
                <p class="text-[11px] font-semibold text-gray-700">${c.hallazgo}</p>
            </div>
        </div>
    `).join('');

    container.innerHTML = `
        ${parrafosHtml}
        <div class="mt-4 mb-3">
            <div class="text-[10px] font-bold uppercase tracking-wider text-gray-400 mb-3 flex items-center gap-2">
                ${ic('git-merge', 12, '#64748b')} Cruces de Indicadores Detectados
            </div>
            <div class="space-y-2">${crucesHtml}</div>
        </div>
        <div class="mt-4 p-4 rounded-2xl border-l-4" style="background: #fffbeb; border-color: #f59e0b;">
            <div class="flex items-center gap-2 mb-1">
                ${ic('alert-triangle', 14, '#d97706')}
                <span class="text-[10px] font-bold uppercase tracking-wider" style="color:#d97706;">Conclusión del Diagnóstico</span>
            </div>
            <p class="text-xs font-semibold text-gray-700">${diagnosticoTransversal.conclusion}</p>
        </div>`;
}

// ─── 5. PLAN DE EJECUCIÓN ───────────────────────────────────────────────────
function renderPlan() {
    const container = document.getElementById('plan-container');
    if (!container) return;

    container.innerHTML = planEjecucion.map(fase => {
        const planesHtml = fase.planes.map((plan, idx) => `
            <div class="p-5 rounded-2xl bg-white border border-gray-100 transition-all hover:shadow-lg hover:-translate-y-1">
                <div class="flex items-start justify-between mb-3">
                    <div class="flex items-center gap-3">
                        <div class="w-8 h-8 rounded-xl flex items-center justify-center" 
                             style="background: ${fase.color}15; border: 1px solid ${fase.color}30;">
                            ${ic(plan.icono, 16, fase.color)}
                        </div>
                        <div>
                            <div class="text-sm font-bold text-gray-800">${plan.titulo}</div>
                            <span class="text-[9px] font-bold uppercase px-2 py-0.5 rounded-full"
                                  style="background: ${fase.color}10; color: ${fase.color}; border: 1px solid ${fase.color}25;">
                                ${plan.etiqueta}
                            </span>
                        </div>
                    </div>
                    <div class="text-right">
                        <div class="text-[9px] uppercase font-bold text-gray-400">${plan.indicadorClave}</div>
                        <div class="text-xs font-black text-gray-800">${plan.valorActual} → ${plan.meta}</div>
                    </div>
                </div>
                <p class="text-xs text-gray-600 leading-relaxed">${plan.descripcion}</p>
            </div>
        `).join('');

        return `
        <div class="mb-8 last:mb-0">
            <div class="flex items-center gap-3 mb-4">
                <div class="w-10 h-10 rounded-2xl flex items-center justify-center" 
                     style="background: linear-gradient(135deg, ${fase.color}, ${fase.color}cc);">
                    ${ic(fase.icono, 20, '#ffffff')}
                </div>
                <div>
                    <div class="text-lg font-bold" style="color: ${fase.color};">${fase.fase}</div>
                    <div class="text-xs text-gray-500 font-semibold">Fase ${fase.tipo} · ${fase.subtitulo}</div>
                </div>
            </div>
            <div class="grid grid-cols-1 gap-4 pl-2 border-l-2" style="border-color: ${fase.color}30;">
                ${planesHtml}
            </div>
        </div>`;
    }).join('');
}

// ─── INIT ───────────────────────────────────────────────────────────────────
function initConsultoria() {
    renderSpiderChart();
    renderScorecard();
    renderEnfoque();
    renderDiagnostico();
    renderPlan();
    if (typeof lucide !== 'undefined') lucide.createIcons();
}

document.addEventListener('DOMContentLoaded', initConsultoria);
