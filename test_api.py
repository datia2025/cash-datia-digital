import urllib.request, json
WORKER_URL = 'https://datia-liquidity-worker.coaba7.easypanel.host'
url = f'{WORKER_URL}/api/indicadores/3099'
with urllib.request.urlopen(url, timeout=20) as r:
    data = json.loads(r.read())['indicadores']

for i in data:
    k = i['indicador_key']
    if 'capital' in k.lower() or 'trabajo' in k.lower():
        print(f"{k}: {len(i['data'])} records")
        for p in i['data'][:2]: print('  ', p)
