import json
import time
import re
import argparse
import urllib.request
import urllib.parse

# ==============================================================================
# v4.6 CLI SQL INJECTOR - Datia Liquidity Dashboard
# ==============================================================================
# Autor: Antigravity AI
# Protocolo: v4.6 Cero Reprocesos
# Descripción: Procesa archivos .sql con sentencias INSERT...VALUES y realiza
#             la inyección vía API al Worker remoto con rate-limiting.
# ==============================================================================

API_URL = "https://datia-liquidity-worker.coaba7.easypanel.host/api/insights"

def post_record(record, dry_run=False):
    """Realiza la petición POST al worker."""
    if dry_run:
        print(f"[DRY-RUN] Enviando {record['indicador_key']} ({len(record.get('analisis_positivo',''))} chars)")
        return 200, "Dry Run Success"

    data = json.dumps(record, ensure_ascii=False).encode('utf-8')
    req = urllib.request.Request(API_URL, data=data, method='POST')
    req.add_header('Content-Type', 'application/json; charset=utf-8')
    try:
        with urllib.request.urlopen(req, timeout=45) as f:
            return f.getcode(), f.read().decode('utf-8')
    except Exception as e:
        return 500, str(e)

def parse_sql_file(file_path):
    """Parsea el archivo SQL extrayendo los valores de los INSERT."""
    records = []
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # Eliminar comentarios de una sola linea (--) antes de procesar
    content = re.sub(r'--.*$', '', content, flags=re.MULTILINE)

    # Identificar sentencias de forma robusta (string-aware split)
    statements = []
    current_stmt = ""
    in_string = False
    escape = False
    
    for char in content:
        if char == "'" and not escape:
            in_string = not in_string
            current_stmt += char
        elif char == "\\" and in_string:
            escape = True
            current_stmt += char
        elif char == ";" and not in_string:
            statements.append(current_stmt.strip())
            current_stmt = ""
            escape = False
        else:
            current_stmt += char
            escape = False
    if current_stmt.strip():
        statements.append(current_stmt.strip())
    
    for stmt in statements:
        stmt = stmt.strip()
        if not re.search(r"INSERT INTO", stmt, re.IGNORECASE):
            continue

        # Extraer los nombres de las columnas del INSERT INTO insights (...)
        col_match = re.search(r"INSERT INTO\s+[a-zA-Z0-9_\.]+\s*\((.*?)\)", stmt, re.IGNORECASE | re.DOTALL)
        if not col_match:
            print(f"DEBUG: No se pudieron extraer columnas de: {stmt[:50]}...")
            continue
        
        columns = [c.strip() for c in col_match.group(1).split(",")]

        # Extraer el bloque VALUES (...)
        values_match = re.search(r"VALUES\s*(.*)", stmt, re.DOTALL | re.IGNORECASE)
        if not values_match:
            continue
            
        val_content = values_match.group(1).strip()
        # Cortar el ON CONFLICT si existe
        if "ON CONFLICT" in val_content.upper():
            val_content = re.split(r"ON CONFLICT", val_content, flags=re.IGNORECASE)[0].strip()
        
        # Eliminar el punto y coma final si existe
        if val_content.endswith(";"):
            val_content = val_content[:-1].strip()

        # Manejar múltiples tuplas ),(
        if val_content.startswith("("): val_content = val_content[1:]
        if val_content.endswith(")"): val_content = val_content[:-1]
        
        tuples = re.split(r"\)\s*,\s*\(", val_content, flags=re.DOTALL)
        
        for val_block in tuples:
            fields = []
            current = ""
            in_string = False
            escape = False
            
            for char in val_block:
                if char == "'" and not escape:
                    in_string = not in_string
                    current += char
                elif char == "\\" and in_string:
                    escape = True
                    current += char
                elif char == "," and not in_string:
                    fields.append(current.strip())
                    current = ""
                    escape = False
                else:
                    current += char
                    escape = False
            fields.append(current.strip())

            # Limpiar comillas
            def clean(v):
                v = v.strip()
                if v.startswith("'") and v.endswith("'"):
                    return v[1:-1].replace("''", "'")
                return v

            if len(fields) == len(columns):
                record = {}
                for i, col in enumerate(columns):
                    val = clean(fields[i])
                    # Mapeo de tipos básicos
                    if col in ["empresa_id", "periodo_ano", "year"]:
                        try: record[col] = int(val)
                        except: record[col] = val
                    else:
                        # Mapeo de nombres de campos para compatibilidad con la API
                        if col == "positivo": record["analisis_positivo"] = val
                        elif col == "negativo": record["analisis_negativo"] = val
                        else: record[col] = val
                
                # Asegurar campos mínimos para evitar 422
                if "analisis_positivo" not in record:
                    record["analisis_positivo"] = ""
                if "analisis_negativo" not in record:
                    record["analisis_negativo"] = ""
                if "recomendacion" not in record:
                    record["recomendacion"] = ""
                if "metodologia" not in record:
                    record["metodologia"] = "v4.6"
                if "tipo" not in record:
                    record["tipo"] = "info"
                if "year" not in record:
                    record["year"] = record.get("periodo_ano", 2025)

                records.append(record)
            else:
                print(f"WARN: Desajuste de columnas ({len(fields)} valores vs {len(columns)} columnas) en registro {fields[1] if len(fields)>1 else '?'}")

    return records

def run_injection(records, batch_size=8, dry_run=False):
    """Inyecta con el protocolo de Delay v4.6."""
    total = len(records)
    print(f"Iniciando inyección de {total} registros...")
    
    batch_count = 0
    for i in range(0, total, batch_size):
        batch = records[i:i+batch_size]
        batch_count += 1
        print(f"\n[LOTE {batch_count}] Procesando {len(batch)} registros...")
        
        for record in batch:
            code, msg = post_record(record, dry_run)
            if code == 200:
                print(f"  OK: {record['indicador_key']}")
            else:
                print(f"  ERROR {code} en {record['indicador_key']}: {msg}")
            
            # Retardo entre registros (IC-02: 4s) - Solo en modo real
            if not dry_run and records.index(record) < total - 1:
                time.sleep(4)
        
        # Cooling period entre lotes (IC-02: 10s) - Solo en modo real
        if not dry_run and i + batch_size < total:
            print(f"--- Cooling Period (10s) ---")
            time.sleep(10)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Inyector SQL a API v4.6")
    parser.add_argument("--file", required=True, help="Ruta al archivo .sql")
    parser.add_argument("--dry-run", action="store_true", help="Simula el envío sin impactar la base")
    args = parser.parse_args()

    print(f"Cargando archivo: {args.file}")
    records = parse_sql_file(args.file)
    
    if not records:
        print("No se encontraron sentencias INSERT compatibles en el archivo.")
    else:
        print(f"Se detectaron {len(records)} registros listos para inyectar.")
        run_injection(records, dry_run=args.dry_run)
        print("\nProceso finalizado.")
