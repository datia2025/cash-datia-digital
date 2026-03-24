import json
import os

# ==============================================================================
# EXPORTADOR SQL: BLOQUE D RENTABILIDAD
# Convierte el payload JSON en sentencias SQL UPSERT.
# ==============================================================================

INPUT_FILE = "payload_bloque_d_rentabilidad_3104_2025.json"
OUTPUT_FILE = "database/rentabilidad_bloque_d.sql"

def export():
    if not os.path.exists(INPUT_FILE):
        print(f"Error: No se encuentra {INPUT_FILE}")
        return

    with open(INPUT_FILE, "r", encoding="utf-8") as f:
        records = json.load(f)

    sql_lines = [
        "-- 📈 Bloque D: Rentabilidad - Comparativo Mensual Interanual",
        "BEGIN;",
        "DELETE FROM insights WHERE empresa_id = 3104 AND indicador_key LIKE '%_M%'; -- Limpieza preventiva para Bloque D"
    ]

    for r in records:
        # Escapado de comillas simples
        pos = r['analisis_positivo'].replace("'", "''")
        neg = r['analisis_negativo'].replace("'", "''")
        rec = r['recomendacion'].replace("'", "''")
        met = r['metodologia'].replace("'", "''")

        sql = f"INSERT INTO insights (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia, generado_por) " \
              f"VALUES ({r['empresa_id']}, '{r['indicador_key']}', {r['periodo_ano']}, '{r['tipo']}', '{pos}', '{neg}', '{rec}', '{met}', 'antigravity') " \
              f"ON CONFLICT (empresa_id, indicador_key, periodo_ano) DO UPDATE SET " \
              f"tipo = EXCLUDED.tipo, analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, " \
              f"recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia, updated_at = CURRENT_TIMESTAMP;"
        sql_lines.append(sql)

    sql_lines.append("COMMIT;")

    os.makedirs(os.path.dirname(OUTPUT_FILE), exist_ok=True)
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        f.write("\n".join(sql_lines))

    print(f"SQL generado exitosamente: {OUTPUT_FILE} ({len(records)} registros)")

if __name__ == "__main__":
    export()
