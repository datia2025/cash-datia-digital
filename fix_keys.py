import re
import glob

files = glob.glob('database/3099/Liquidez/liquidez_bloque_[a-c]_3099.sql')
for file in files:
    with open(file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    def repl(m):
        emp_id = m.group(1)
        key = m.group(2)
        year = m.group(3)
        q = m.group(4)
        if q in ['1Q', '2Q', '3Q', '4Q']:
             if not key.endswith('_' + q):
                 key = f"{key}_{q}"
        return f"VALUES ({emp_id}, '{key}', {year}, '{q}',"

    # Match exact VALUES (3099, 'razon_corriente', 2025, '1Q', ...
    new_content = re.sub(r"VALUES\s*\(\s*(\d+)\s*,\s*'([^']+)'\s*,\s*(\d+)\s*,\s*'([^']+)'\s*,", repl, content)

    with open(file, 'w', encoding='utf-8') as f:
        f.write(new_content)
    print('Fixed', file)
