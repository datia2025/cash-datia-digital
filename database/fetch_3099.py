import urllib.request
import json
import os

WORKER_URL = "https://datia-liquidity-worker.coaba7.easypanel.host"
EMPRESA_ID = 3099
OUTPUT_FILE = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\MASCONSULTA\LiquidityDashboard\database\data_3099_full.json"

def fetch_data():
    url = f"{WORKER_URL}/api/indicadores/{EMPRESA_ID}"
    print(f"Fetching data from {url}...")
    try:
        with urllib.request.urlopen(url, timeout=30) as response:
            if response.status == 200:
                data = json.loads(response.read())
                with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
                    json.dump(data, f, indent=2)
                print(f"Successfully saved data to {OUTPUT_FILE}")
            else:
                print(f"Error: API returned status {response.status}")
    except Exception as e:
        print(f"Failed to fetch data: {e}")

if __name__ == "__main__":
    fetch_data()
