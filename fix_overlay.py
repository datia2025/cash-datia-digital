import re
import sys

file_path = "c:/Users/gutie/OneDrive/FERFILES/DATIA/PROPUESTAS/COLOMBIA/MASCONSULTA/LiquidityDashboard/estructura.html"

with open(file_path, "r", encoding="utf-8") as f:
    html = f.read()

css_target = """        /* ---- Overlay Styles ---- */
        .insight-overlay {
            position: absolute;
            inset: 0;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(8px);
            z-index: 20;
            display: flex;
            flex-direction: column;
            padding: 24px;
            opacity: 0;
            pointer-events: none;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            transform: translateY(10px);
        }
        .insight-overlay.active {
            opacity: 1;
            pointer-events: all;
            transform: translateY(0);
        }
        .insight-close-btn {
            position: absolute;
            top: 16px;
            right: 16px;
            background: #f1f5f9;
            border: none;
            width: 28px;
            height: 28px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            color: #64748b;
            transition: all 0.2s ease;
        }
        .insight-close-btn:hover {
            background: #e2e8f0;
            color: #0f172a;
        }"""

css_replace = """        /* ---- Overlay Styles ---- */
        .insight-overlay {
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            max-height: 85%;
            background: rgba(248, 250, 252, 0.98); 
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            color: #1e293b;
            border-top: 1px solid #e2e8f0;
            padding: 28px 24px 24px 24px;
            transform: translateY(105%);
            transition: all 0.5s cubic-bezier(0.16, 1, 0.3, 1);
            z-index: 20;
            overflow-y: auto;
            box-shadow: 0 -10px 30px rgba(0, 0, 0, 0.05);
        }
        .insight-overlay.active {
            transform: translateY(0);
        }
        .insight-close-btn {
            position: absolute;
            top: 14px;
            right: 14px;
            width: 28px;
            height: 28px;
            border-radius: 50%;
            background: rgba(0, 0, 0, 0.03);
            border: 1px solid rgba(0, 0, 0, 0.05);
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .insight-close-btn:hover {
            background: rgba(0, 0, 0, 0.08);
            transform: rotate(90deg);
        }"""

html = html.replace(css_target, css_replace)

pattern = re.compile(
    r'(<div class="chart-container-inner relative">)(.*?)(\s*</div>\s*)(<div id="insight-overlay-[^"]+" class="insight-overlay shadow-2xl">)(.*?)(\s*<div id="insight-content-[^"]+" class="insight-content text-sm text-slate-600 leading-relaxed"></div>\s*</div>)',
    re.DOTALL
)

def replacer(match):
    container_start = '<div class="chart-container-inner relative overflow-hidden">'
    return f"{container_start}{match.group(2)}\n                        {match.group(4)}{match.group(5)}{match.group(6)}\n                        </div>"

html_new = pattern.sub(replacer, html)

with open(file_path, "w", encoding="utf-8") as f:
    f.write(html_new)
print(f"Replaced {len(pattern.findall(html))} blocks")
