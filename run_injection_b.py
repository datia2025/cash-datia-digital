import json
import time
import urllib.request
import urllib.parse

API_URL = "https://datia-liquidity-worker.coaba7.easypanel.host/api/insights"
DATA_FILE = "injection_payload_bloque_b_3104.json"

def post_record(record):
    data = json.dumps(record).encode('utf-8')
    req = urllib.request.Request(API_URL, data=data, method='POST')
    req.add_header('Content-Type', 'application/json')
    try:
        with urllib.request.urlopen(req, timeout=30) as f:
            return f.getcode(), f.read().decode('utf-8')
    except Exception as e:
        return 500, str(e)

def inject_batch(payloads, batch_size=5, delay=8.5, inter_record_delay=3.5):
    print(f"Iniciando inyeccion de {len(payloads)} registros del Bloque B...")
    
    for i in range(0, len(payloads), batch_size):
        batch = payloads[i:i + batch_size]
        print(f"\n--- Inyectando Lote {i//batch_size + 1} ({len(batch)} registros) ---")
        
        for record in batch:
            code, resp_text = post_record(record)
            if code == 200:
                print(f"OK: {record['indicador_key']} - {record['periodo_ano']} {record['period_key']}")
            else:
                print(f"ERROR {code}: {record['indicador_key']} - {resp_text}")
            
            time.sleep(inter_record_delay)
        
        if i + batch_size < len(payloads):
            print(f"Cooling Period: {delay}s para refrescar contexto...")
            time.sleep(delay)

if __name__ == "__main__":
    with open(DATA_FILE, "r", encoding="utf-8") as f:
        data = json.load(f)
    
    inject_batch(data)
    print("\nInyeccion del Bloque B - Lote 1 finalizada con exito.")
