import json

data_str = '''
[PASTE PREVIOUS JSON OUTPUT HERE OR READ FROM FILE]
'''
# Actually, I'll just write the processing logic and use the JSON I have.

raw_json = json.load(open('indicators_from_api.json')) # I'll save the output to this file first

processed_data = {}

for ind in raw_json['indicadores']:
    key = ind['indicador_key']
    processed_data[key] = {}
    for year in [2023, 2024, 2025]:
        year_data = [d['valor'] for d in ind['data'] if d['year'] == year]
        if year_data:
            avg_val = sum(year_data) / len(year_data)
            processed_data[key][year] = round(avg_val, 4)
        else:
            processed_data[key][year] = 0

print(json.dumps(processed_data, indent=2))
