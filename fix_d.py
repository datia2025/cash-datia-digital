import re

with open('database/3099/Liquidez/liquidez_bloque_d_3099.sql', 'r', encoding='utf-8') as f:
    text = f.read()

def replacer(m):
    emp = m.group(1)
    k = m.group(2)
    y1 = m.group(3)
    y2 = m.group(4)
    p = m.group(5)
    nk = f"{k}_M{p}".upper() if "_M" not in k.upper() else k
    return f"VALUES ({emp}, '{nk}', {y1}, {y2}, '{p}',"

new_text = re.sub(r"VALUES\s*\(\s*(\d+)\s*,\s*'([^']+)'\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*'([^']+)'\s*,", replacer, text)

print('Modified records:', len(re.findall(r'_M\d+', new_text)))

with open('database/3099/Liquidez/liquidez_bloque_d_3099.sql', 'w', encoding='utf-8') as f:
    f.write(new_text)
