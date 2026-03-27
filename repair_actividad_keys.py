import re
import glob
import os

def repair_sql_file(file_path):
    print(f"Repairing: {file_path}")
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # Determinar si es Bloque D (Mensual) o A/B/C (Trimestral)
    is_bloque_d = "_bloque_d_" in file_path.lower()
    
    def repl(m):
        prefix = m.group(1) # 'VALUES (' o ' ('
        emp_id = m.group(2)
        key = m.group(3)
        year = m.group(4)
        period = m.group(5)
        
        new_key = key
        if is_bloque_d:
            # Regla Bloque D: MAYÚSCULAS + _M1
            if period.endswith('M'):
                suffix = f"_M{period[:-1]}"
                if not key.upper().endswith(suffix):
                    new_key = f"{key.upper()}{suffix}"
                else:
                    new_key = key.upper()
        else:
            # Regla Bloque A/B/C: minúsculas + _1Q
            if period in ['1Q', '2Q', '3Q', '4Q']:
                suffix = f"_{period}"
                if not key.endswith(suffix):
                    new_key = f"{key}{suffix}"
        
        return f"{prefix}{emp_id}, '{new_key}', {year}, '{period}',"

    # Regex corregida para capturar el inicio de los valores (con o sin VALUES)
    # Grupo 1: 'VALUES (' o simplemente '(' al inicio de línea o tras coma
    pattern = r"(VALUES\s*\(\s*|\(\s*)(\d+)\s*,\s*'([^']+)'\s*,\s*(\d+)\s*,\s*'([^']+)'\s*,"
    
    new_content = re.sub(pattern, repl, content, flags=re.IGNORECASE)

    # Actualizar ON CONFLICT si existe para incluir period_key si faltaba (aunque v46 lo maneja)
    if "ON CONFLICT" in new_content:
        # Asegurar que incluye period_key
        new_content = re.sub(
            r"ON CONFLICT\s*\(\s*empresa_id\s*,\s*indicador_key\s*,\s*periodo_ano\s*\)",
            "ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key)",
            new_content, flags=re.IGNORECASE
        )

    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(new_content)
    print(f"Fixed: {file_path}")

# Localizar archivos de Actividad 3099
actividad_files = glob.glob('database/3099/Actividad/actividad_bloque_*.sql')

for f in actividad_files:
    repair_sql_file(f)

print("\nReparación completada.")
