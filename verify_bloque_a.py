content = open('database/3099/Actividad/actividad_bloque_a_3099.sql', encoding='utf-8').read()
keys = ['_1Q', '_2Q', '_3Q', '_4Q']
years = [2023, 2024, 2025]
print('Verificacion de registros trimestrales en Bloque A:')
for y in years:
    for k in keys:
        search = "insight-actividad-ai" + k + "', " + str(y)
        found = search in content
        status = "OK" if found else "FALTA"
        print(f"  {y} {k}: {status}")
print("Lineas totales:", content.count('\n'))
