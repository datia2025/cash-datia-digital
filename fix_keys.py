import re

paths = ['export_bloque_a_sql.py', 'inject_renta_block_a.py']
for path in paths:
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Replace cases where period_key is 1Q, 2Q, 3Q, 4Q and indicador_key is insight-rentabilidad-ai
    for year in ['2023', '2024', '2025']:
        for q in ['1Q', '2Q', '3Q', '4Q']:
            old_str = f'"indicador_key": "insight-rentabilidad-ai", "periodo_ano": {year}, "period_key": "{q}"'
            new_str = f'"indicador_key": "insight-rentabilidad-ai_{q}", "periodo_ano": {year}, "period_key": "{q}"'
            content = content.replace(old_str, new_str)
            
    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)

print('Fixed scripts!')
