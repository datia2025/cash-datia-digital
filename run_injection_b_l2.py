import json
import time
import urllib.request
import urllib.parse

API_URL = "https://datia-liquidity-worker.coaba7.easypanel.host/api/insights"
DATA_FILE = "payload_bloque_b_lote2_2024.json"

def post_record(record):
    data = json.dumps(record, ensure_ascii=False).encode('utf-8')
    req = urllib.request.Request(API_URL, data=data, method='POST')
    req.add_header('Content-Type', 'application/json; charset=utf-8')
    try:
        with urllib.request.urlopen(req, timeout=45) as f:
            return f.getcode(), f.read().decode('utf-8')
    except Exception as e:
        return 500, str(e)

def inject_batch(payloads, batch_size=8, delay=10, inter_record_delay=4):
    print(f"Inyectando {len(payloads)} registros de Bloque B - Lote 2 (2024)...")
    
    for i in range(0, len(payloads), batch_size):
        batch = payloads[i:i + batch_size]
        print(f"\n--- Inyectando Lote {i//batch_size + 1} ({len(batch)} registros) ---")
        
        for record in batch:
            code, resp_text = post_record(record)
            if code == 200:
                print(f"OK: {record['indicador_key']} - {record['periodo_ano']}")
            else:
                print(f"ERROR {code}: {record['indicador_key']} - {resp_text}")
            
            time.sleep(inter_record_delay)
        
        if i + batch_size < len(payloads):
            print(f"Cooling Period: {delay}s...")
            time.sleep(delay)

if __name__ == "__main__":
    with open(DATA_FILE, "r", encoding="utf-8") as f:
        data = json.load(f)
    
    inject_batch(data)
    print("\nLote 2 (2024) finalizado.")
