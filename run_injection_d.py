import json
import time
import argparse
import urllib.request
import urllib.parse

# ==============================================================================
# CORRECCIONES APLICADAS:
# IC-01: batch_size corregido a 8 (era inconsistente con README Seccion 5 que
#        decia 5). El valor correcto segun el codigo original y el Protocolo
#        Maestro de Actividad es 8 registros simetricos por lote.
# IC-02: inter_record_delay corregido a 4s (no 3.5s).
#        cooling delay corregido a 10s (no 8s).
#        Valores verificados contra run_injection_d original y Protocolo Maestro.
# IC-04: DATA_FILE ahora se construye dinamicamente desde empresa_id y
#        target_year para coincidir con el archivo de salida de gen_bloque_d.py.
# ==============================================================================

API_URL = "https://datia-liquidity-worker.coaba7.easypanel.host/api/insights"

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
    """
    Inyecta registros del Bloque D en lotes simetricos.

    Parametros (valores vigentes segun Protocolo Maestro de Actividad v1.0):
        batch_size (int):         8 registros por lote. (IC-01)
        delay (int):             10 segundos de cooling period entre lotes. (IC-02)
        inter_record_delay (int): 4 segundos de retardo entre registros. (IC-02)
    """
    print(f"Inyectando {len(payloads)} registros de Bloque D - Mensual Interanual...")

    for i in range(0, len(payloads), batch_size):
        batch = payloads[i:i + batch_size]
        print(f"\n--- Inyectando Lote {i // batch_size + 1} ({len(batch)} registros) ---")

        for record in batch:
            code, resp_text = post_record(record)
            if code == 200:
                print(f"OK: {record['indicador_key']} - {record['metodologia']}")
            else:
                print(f"ERROR {code}: {record['indicador_key']} - {resp_text}")

            # IC-02 FIX: 4 segundos (no 3.5s)
            time.sleep(inter_record_delay)

        if i + batch_size < len(payloads):
            # IC-02 FIX: 10 segundos (no 8s)
            print(f"Cooling Period: {delay}s...")
            time.sleep(delay)


if __name__ == "__main__":
    # IC-04 FIX: empresa_id y target_year como argumentos CLI para construir
    # el nombre del archivo de payload generado por gen_bloque_d.py
    parser = argparse.ArgumentParser(description="Inyector Bloque D - Comparativo Mensual Interanual")
    parser.add_argument("--empresa_id", type=int, required=True, help="ID de la empresa a inyectar")
    parser.add_argument("--target_year", type=int, required=True, help="Anno fiscal objetivo (ej: 2025)")
    args = parser.parse_args()

    # Nombre de archivo coincide con salida de gen_bloque_d.py
    data_file = f"payload_bloque_d_{args.empresa_id}_{args.target_year}.json"

    print(f"Cargando payload desde: {data_file}")
    with open(data_file, "r", encoding="utf-8") as f:
        data = json.load(f)

    inject_batch(data)
    print("\nBloque D finalizado.")
