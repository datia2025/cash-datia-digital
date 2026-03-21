import urllib.request, json

WORKER_URL = "https://datia-liquidity-worker.coaba7.easypanel.host"

with urllib.request.urlopen(WORKER_URL + "/api/indicadores/3099", timeout=20) as r:
    data = json.loads(r.read())

indicadores = data.get("indicadores", [])
print("Total registros:", data.get("total"))

for ind in indicadores:
    key = ind.get("indicador_key")
    modulo = ind.get("modulo")
    series = ind.get("data", [])
    vals_2025 = [p for p in series if p.get("year") == 2025]
    valores = [p.get("valor", 0) for p in vals_2025]
    if modulo not in ("rentabilidad", "actividad"):
        continue
    max_val = max(abs(v) for v in valores) if valores else 0
    all_zero = all(v == 0 for v in valores)
    if all_zero:
        flag = "TODOS CERO"
    elif max_val > 1000:
        flag = "EXTREMO: " + str(round(max_val, 2))
    else:
        flag = "OK"
    print("[" + modulo + "] " + key + ": " + flag)
    for p in vals_2025[:3]:
        print("    " + str(p.get("year")) + "-M" + str(p.get("month")) + ": " + str(p.get("valor")))
