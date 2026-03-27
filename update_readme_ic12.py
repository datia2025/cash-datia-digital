import os

target = r"docs/README.md"
new_line = "| **IC-12** | `actividad_bloque_a_3099.sql` | **CRITICAL FIX**: Se detecto que la matriz de Dictamen (Bloque A) carecia de registros trimestrales para 2023 y 2024, provocando el error de \"Diagnostico No Disponible\" en anos previos. Se generaron e inyectaron los 8 registros faltantes (4 por ano) con narrativa Gerencia-a-Gerencia, asegurando cobertura 100% de la matriz 3x5 (3 anos x 5 periodos). |\n"

with open(target, 'r', encoding='utf-8') as f:
    lines = f.readlines()

updated = False
with open(target, 'w', encoding='utf-8') as f:
    for line in lines:
        f.write(line)
        if "**UI-03**" in line and not updated:
            f.write(new_line)
            updated = True

if updated:
    print(f"Successfully added IC-12 to {target}")
else:
    print(f"Could not find UI-03 line in {target}")
