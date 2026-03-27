from flask import Flask, send_from_directory, abort
from flask_cors import CORS
import os

app = Flask(__name__)
CORS(app)

# Servimos archivos desde el directorio de Master Account
FILE_DIR = r"c:\Users\gutie\OneDrive\FERFILES\DATIA\PROPUESTAS\COLOMBIA\+CONSULTA\Master Account"

@app.route('/files/<path:filename>')
def serve_file(filename):
    # Verificamos si es el archivo solicitado o termina en .xlsx
    if filename.endswith('.xlsx') or filename.endswith('.csv'):
        return send_from_directory(FILE_DIR, filename)
    else:
        return abort(403, "Solo se permiten archivos de datos (.xlsx, .csv)")

@app.route('/')
def index():
    return send_from_directory('.', 'index.html')

@app.route('/<path:path>')
def serve_static(path):
    return send_from_directory('.', path)

if __name__ == "__main__":
    # Corremos en el puerto 8888
    # n8n deberá poder alcanzar esta IP/Puerto
    app.run(host='0.0.0.0', port=8888)
