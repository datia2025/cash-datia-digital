import json
import time
import urllib.request

# ==============================================================================
# INYECTOR API: BLOQUE D RENTABILIDAD
# Inyecta los 96 registros mediante la API REST.
# ==============================================================================

API_URL = "https://datia-liquidity-worker.coaba7.easypanel.host/api/insights"
INPUT_FILE = "payload_bloque_d_rentabilidad_3104_2025.json"

def post_record(record):
    data = json.dumps(record, ensure_ascii=False).encode('utf-8')
    req = urllib.request.Request(API_URL, data=data, method='POST')
    req.add_header('Content-Type', 'application/json; charset=utf-8')
    try:
        with urllib.request.urlopen(req, timeout=30) as f:
            return f.getcode(), f.read().decode('utf-8')
    except Exception as e:
        return 500, str(e)

def inject():
    with open(INPUT_FILE, "r", encoding="utf-8") as f:
        records = json.load(f)

    print(f"Iniciando inyeccion de {len(records)} registros (Bloque D)...")
    
    for i, r in enumerate(records):
        code, resp = post_record(r)
        if code == 200:
            print(f"[{i+1}/96] OK: {r['indicador_key']}")
        else:
            print(f"[{i+1}/96] ERROR {code}: {r['indicador_key']} -> {resp}")
        
        # Delay de seguridad (4s segun protocolo anti-fatiga)
        time.sleep(4)

if __name__ == "__main__":
    inject()
