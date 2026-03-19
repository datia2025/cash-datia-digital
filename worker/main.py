"""
Liquidity Dashboard — Python Worker Service v2.0
FastAPI service that processes financial data and stores results in PostgreSQL.
Triggered by NocoDB webhook on "After Insert" in the `cargas` table.

Changes v2.0:
- PostgreSQL integration via asyncpg (replacing CSV-only output)
- GET endpoints for dashboard consumption
- CORS enabled for frontend access
- Indicator key mapping from display names to DB slugs
"""
from fastapi import FastAPI, HTTPException, BackgroundTasks, Query
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from typing import Optional, List
import httpx
import asyncpg
import os
import sys
import json
import zipfile
import tempfile
import shutil
import traceback
from datetime import datetime
from contextlib import asynccontextmanager
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

# ── Database Pool ──────────────────────────────────────────────
db_pool: Optional[asyncpg.Pool] = None

@asynccontextmanager
async def lifespan(app: FastAPI):
    """Manage DB connection pool lifecycle."""
    global db_pool
    database_url = os.getenv("DATABASE_URL", "")
    db_schema = os.getenv("DB_SCHEMA", "liquidity")
    if database_url:
        try:
            db_pool = await asyncpg.create_pool(
                database_url,
                min_size=2, max_size=10,
                server_settings={"search_path": db_schema}
            )
            print(f"✅ PostgreSQL pool created ({db_schema})")
        except Exception as e:
            print(f"⚠️ PostgreSQL connection failed: {e}")
            db_pool = None
    yield
    if db_pool:
        await db_pool.close()
        print("PostgreSQL pool closed")

app = FastAPI(
    title="Liquidity Dashboard Worker",
    description="Procesa archivos Excel/CSV y genera 33 indicadores financieros",
    version="2.0.0",
    lifespan=lifespan
)

# ── CORS ───────────────────────────────────────────────────────
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*", "null"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# ── Configuration ──────────────────────────────────────────────
NOCODB_URL = os.getenv("NOCODB_URL", "http://nocodb:8080")
NOCODB_TOKEN = os.getenv("NOCODB_TOKEN", "")
TABLE_ID_CARGAS = os.getenv("TABLE_ID_CARGAS", "")
WORKER_DIR = os.getenv("WORKER_DIR", "/app/workdir")

# ── SMTP Configuration ────────────────────────────────────────
SMTP_HOST = os.getenv("SMTP_HOST", "smtp.gmail.com")
SMTP_PORT = int(os.getenv("SMTP_PORT", "587"))
SMTP_USER = os.getenv("SMTP_USER", "datia_notificaciones@talentracking.com")
SMTP_PASS = os.getenv("SMTP_PASS", "qdtt zzyg aqby iuoj")
SMTP_FROM = os.getenv("SMTP_FROM", "datia_notificaciones@talentracking.com")
DASHBOARD_URL = os.getenv("DASHBOARD_URL", "https://ia.talentracking.com/liquidity")

# ── Indicator Name → DB Key Mapping ────────────────────────────
# Maps display names from calculate_indicators.py to database slugs
INDICATOR_KEY_MAP = {
    # Liquidez
    'Razón Corriente': 'razon_corriente',
    'Capital de Trabajo': 'capital_trabajo',
    'Prueba Ácida': 'prueba_acida',
    'Ratio de Efectivo': 'ratio_efectivo',
    # Actividad
    'Días de Cartera (DSO)': 'dso',
    'Días de Inventario (DIO)': 'dio',
    'Días de Proveedores (DPO)': 'dpo',
    'Ciclo de Conversión de Efectivo': 'ciclo_conversion_efectivo',
    'Rotación de Activos': 'rotacion_activos',
    'Rotación de Cartera': 'rotacion_cartera',
    'Rotación de Inventarios': 'rotacion_inventarios',
    'Rotación de Proveedores': 'rotacion_proveedores',
    # Rentabilidad
    'Margen de Utilidad Bruta': 'margen_bruto',
    'Margen Operativo': 'margen_operacional',
    'Margen Neto Utilidad': 'margen_neto',
    'Margen EBITDA': 'margen_ebitda',
    'Retorno sobre Patrimonio (ROE)': 'roe',
    'Retorno sobre Activos (ROA)': 'roa',
    'Utilidad Acumulada': 'utilidad_acumulada',
    'Patrimonio': 'patrimonio_relativo',
    # Estructura
    'Cobertura de Activos Fijos': 'cobertura_fijos',
    'Estructura de la Deuda': 'estructura_deuda',
    'Multiplicador de Capital': 'multiplicador_capital',
    'Ratio de Capitalización': 'capitalizacion',
    'Ratio de Deuda a Activos Tangibles': 'deuda_tangibles',
    'Ratio de PropiedadAutonomía': 'propiedad_autonomia',
    'Relación DeudaPatrimonio': 'deuda_patrimonio',
    # Solvencia
    'Cobertura de Cargos Fijos': 'cargos_fijos',
    'Cobertura de Intereses': 'cobertura_intereses',
    'Cobertura del Servicio de la Deuda': 'servicio_deuda',
    'Deuda Neta a EBITDA': 'deuda_ebitda',
    'Endeudamiento Total': 'endeudamiento_total',
    'Ratio de Solvencia Patrimonial': 'solvencia_patrimonial',
}

# Module mapping from calculate_indicators MODULES dict
MODULE_MAP = {
    'LIQUIDEZ': 'liquidez',
    'ACTIVIDAD': 'actividad',
    'RENTABILIDAD': 'rentabilidad',
    'SOLVENCIA': 'solvencia',
    'ESTRUCTURA': 'estructura',
}

# Unit mapping
UNIT_MAP = {
    'Times': 'x', 'x': 'x',
    'Days': 'días', 'días': 'días',
    '%': '%',
    '$ COP': '$', 'Mill': '$', 'MM COP': '$',
    'Year': 'x',
}

# ── Models ─────────────────────────────────────────────────────
class WebhookPayload(BaseModel):
    """NocoDB webhook payload structure"""
    type: Optional[str] = None
    id: Optional[str] = None
    data: Optional[dict] = None

class ProcessRequest(BaseModel):
    """Manual processing request"""
    record_id: str

class ProcessLocalRequest(BaseModel):
    """Process from local files (for testing without NocoDB)"""
    empresa_id: int = 1
    sources_dir: Optional[str] = None

class AIInsightRequest(BaseModel):
    """Request for specific AI module insights"""
    record_id: str
    module: str

class StatusResponse(BaseModel):
    status: str
    message: str
    match_rate: Optional[float] = None
    log: Optional[str] = None

# ── NocoDB API Helpers ─────────────────────────────────────────
async def nocodb_get_record(record_id: str) -> dict:
    """Fetch a record from NocoDB cargas table."""
    async with httpx.AsyncClient(timeout=60.0) as client:
        resp = await client.get(
            f"{NOCODB_URL}/api/v2/tables/{TABLE_ID_CARGAS}/records/{record_id}",
            headers={"xc-token": NOCODB_TOKEN}
        )
        resp.raise_for_status()
        return resp.json()

async def nocodb_update_record(record_id: str, fields: dict):
    """Update a record in NocoDB cargas table."""
    async with httpx.AsyncClient(timeout=60.0) as client:
        resp = await client.patch(
            f"{NOCODB_URL}/api/v2/tables/{TABLE_ID_CARGAS}/records",
            headers={"xc-token": NOCODB_TOKEN},
            json={"Id": record_id, **fields}
        )
        resp.raise_for_status()

async def nocodb_download_attachment(url: str, dest_path: str):
    """Download a file attachment from NocoDB."""
    async with httpx.AsyncClient(timeout=60.0) as client:
        resp = await client.get(url)
        resp.raise_for_status()
        with open(dest_path, 'wb') as f:
            f.write(resp.content)

async def nocodb_upload_attachment(record_id: str, field_name: str, file_path: str):
    """Upload a file as attachment to a NocoDB record."""
    async with httpx.AsyncClient(timeout=60.0) as client:
        with open(file_path, 'rb') as f:
            upload_resp = await client.post(
                f"{NOCODB_URL}/api/v2/storage/upload",
                headers={"xc-token": NOCODB_TOKEN},
                files={"file": (os.path.basename(file_path), f)}
            )
            upload_resp.raise_for_status()
            file_data = upload_resp.json()
        await nocodb_update_record(record_id, {field_name: json.dumps(file_data)})

# ── Email Helpers ─────────────────────────────────────────────
async def send_email(to_email: str, subject: str, html_content: str):
    """Send an HTML email using SMTP."""
    if not to_email or "@" not in to_email:
        print(f"⚠️ Skipping email: Invalid address '{to_email}'")
        return

    try:
        msg = MIMEMultipart("alternative")
        msg["Subject"] = subject
        msg["From"] = f"Datia Notificaciones <{SMTP_FROM}>"
        msg["To"] = to_email

        part = MIMEText(html_content, "html")
        msg.attach(part)

        # Use synchronous smtplib in a separate thread if needed, 
        # but for worker tasks, simple smtplib is usually fine in the loop 
        # since it's already a background task.
        with smtplib.SMTP(SMTP_HOST, SMTP_PORT) as server:
            server.starttls()
            server.login(SMTP_USER, SMTP_PASS)
            server.sendmail(SMTP_FROM, to_email, msg.as_string())
        print(f"📧 Email enviado a {to_email}: {subject}")
    except Exception as e:
        print(f"❌ Error enviando email a {to_email}: {e}")

def get_email_template(title: str, body: str, button_text: str = None, button_url: str = None):
    """Generate a premium HTML email template."""
    btn_html = ""
    if button_text and button_url:
        btn_html = f"""
        <div style="margin-top: 30px;">
            <a href="{button_url}" style="background-color: #4F46E5; color: white; padding: 12px 25px; text-decoration: none; border-radius: 6px; font-weight: bold; display: inline-block;">
                {button_text}
            </a>
        </div>
        """
    
    return f"""
    <html>
    <body style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; line-height: 1.6; color: #333; margin: 0; padding: 0;">
        <div style="max-width: 600px; margin: 0 auto; padding: 20px; border: 1px solid #e5e7eb; border-radius: 8px;">
            <div style="background-color: #111827; padding: 20px; text-align: center; border-radius: 6px 6px 0 0;">
                <h1 style="color: #60A5FA; margin: 0; font-size: 24px;">DATIA | Liquidity Dashboard</h1>
            </div>
            <div style="padding: 30px; background-color: #ffffff;">
                <h2 style="color: #111827; margin-top: 0;">{title}</h2>
                {body}
                {btn_html}
            </div>
            <div style="padding: 20px; text-align: center; font-size: 12px; color: #6B7280; background-color: #F9FAFB; border-radius: 0 0 6px 6px;">
                &copy; {datetime.now().year} Datia Digital. Este es un correo automático, por favor no lo respondas.
            </div>
        </div>
    </body>
    </html>
    """

# ── PostgreSQL Helpers ─────────────────────────────────────────
async def db_get_or_create_empresa(nombre: str) -> int:
    """Find company by name (case insensitive) or create it. Triple-safe."""
    if not db_pool:
        return 1

    import hashlib

    async with db_pool.acquire() as conn:
        # 1. Try to find existing by name
        row = await conn.fetchrow(
            "SELECT id FROM empresas WHERE UPPER(razon_social) = $1",
            nombre.upper()
        )
        if row:
            return row['id']

        # 2. Generate unique NIT from name hash
        nit_hash = str(int(hashlib.md5(nombre.upper().encode()).hexdigest(), 16) % 800000000 + 100000001)

        # 3. Upsert: if NIT collision, update razon_social and return id
        try:
            row = await conn.fetchrow("""
                INSERT INTO empresas (razon_social, nit, sucursal, moneda_base)
                VALUES ($1, $2, 'Sede Principal', 'COP')
                ON CONFLICT (nit) DO UPDATE SET razon_social = EXCLUDED.razon_social
                RETURNING id
            """, nombre, nit_hash)
            return row['id']
        except Exception:
            # 4. Final fallback: find by NIT
            row = await conn.fetchrow(
                "SELECT id FROM empresas WHERE nit = $1", nit_hash
            )
            if row:
                return row['id']
            # 5. Last resort: return company 1 (MAS CONSULTA SAS)
            return 1

async def db_save_indicators(empresa_id: int, carga_id: int, results: dict, modules_map: dict):
    """Save calculated indicators to PostgreSQL."""
    if not db_pool:
        print("⚠️ No DB pool, skipping PostgreSQL save")
        return 0

    saved = 0
    async with db_pool.acquire() as conn:
        # Use a transaction for atomicity
        async with conn.transaction():
            for display_name, data_points in results.items():
                ind_key = INDICATOR_KEY_MAP.get(display_name)
                if not ind_key:
                    print(f"  ⚠️ No key mapping for: {display_name}")
                    continue

                # Determine module
                modulo = None
                for mod_display, indicators in modules_map.items():
                    if display_name in indicators:
                        modulo = MODULE_MAP.get(mod_display, mod_display.lower())
                        break

                # Determine unit
                # Default unit mapping logic if not provided by results
                unidad = 'x'
                if '%' in display_name:
                    unidad = '%'
                elif '$' in display_name or 'Utilidad' in display_name or 'Patrimonio' in display_name:
                    unidad = '$'
                elif 'Días' in display_name:
                    unidad = 'días'

                for q, val, period, year in data_points:
                    try:
                        await conn.execute("""
                            INSERT INTO indicadores 
                                (empresa_id, carga_id, indicador_key, periodo_ano, periodo_mes, valor, unidad, modulo)
                            VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
                            ON CONFLICT (empresa_id, periodo_ano, periodo_mes, indicador_key) 
                            DO UPDATE SET valor = $6, carga_id = $2
                        """, empresa_id, carga_id, ind_key, year, period,
                            float(val) if val is not None else 0.0,
                            unidad, modulo)
                        saved += 1
                    except Exception as e:
                        print(f"  ❌ Error saving {ind_key} [{year}-{period}]: {e}")

    return saved

async def db_create_carga(empresa_id: int, fuente: str = 'siigo', nocodb_record_id: str = None) -> int:
    """Create a carga record and return its ID."""
    if not db_pool:
        return 0
    async with db_pool.acquire() as conn:
        row = await conn.fetchrow("""
            INSERT INTO cargas (empresa_id, fuente_sistema, periodo_ano, estado, nocodb_record_id)
            VALUES ($1, $2, $3, 'processing', $4)
            RETURNING id
        """, empresa_id, fuente, datetime.now().year, nocodb_record_id)
        return row['id']

async def db_get_or_create_user(empresa_id: int, email: str, nombre_empresa: str) -> tuple:
    """Find user by email or create them with a random password. Return (user_obj, is_new)."""
    if not db_pool:
        return {"email": email, "password": "demo", "nombre": nombre_empresa, "rol": "Demo"}, False

    import secrets
    import string

    async with db_pool.acquire() as conn:
        # 0. Ensure table exists
        await conn.execute("""
            CREATE TABLE IF NOT EXISTS usuarios (
                email VARCHAR PRIMARY KEY,
                empresa_id INT,
                password VARCHAR,
                nombre VARCHAR,
                rol VARCHAR,
                initials VARCHAR
            )
        """)

        # 1. Try to find existing
        row = await conn.fetchrow(
            "SELECT email, password, nombre, rol, initials FROM usuarios WHERE email = $1",
            email
        )
        if row:
            return dict(row), False

        # 2. Not found: Create new with random 8-char password
        new_pass = ''.join(secrets.choice(string.ascii_letters + string.digits) for i in range(8))
        initials = ''.join([n[0] for n in nombre_empresa.split() if n])[:2].upper() or "US"
        
        row = await conn.fetchrow("""
            INSERT INTO usuarios (empresa_id, email, password, nombre, rol, initials)
            VALUES ($1, $2, $3, $4, 'Analista Financiero', $5)
            RETURNING email, password, nombre, rol, initials
        """, empresa_id, email, new_pass, nombre_empresa, initials)
        
        return dict(row), True

async def db_update_carga(carga_id: int, estado: str, resultado: str = None, match_rate: float = None):
    """Update carga status."""
    if not db_pool or carga_id == 0:
        return
    async with db_pool.acquire() as conn:
        await conn.execute("""
            UPDATE cargas SET estado = $1, resultado = $2, match_rate = $3, updated_at = NOW()
            WHERE id = $4
        """, estado, resultado, match_rate, carga_id)

# ── Processing Logic ───────────────────────────────────────────
async def process_record(record_id: str):
    """Main processing pipeline for a single upload (NocoDB flow)."""
    work_dir = os.path.join(WORKER_DIR, f"job_{record_id}_{datetime.now().strftime('%Y%m%d%H%M%S')}")
    log_lines = []
    carga_id = 0
    es_puc_crudo = False
    tipo_catalogo = "Plan de cuentas"

    def log(msg: str):
        log_lines.append(f"[{datetime.now().strftime('%H:%M:%S')}] {msg}")
        print(msg)

    try:
        # 1. Fetch record parameters FIRST without setting status
        record = await nocodb_get_record(record_id)
        
        # New Logic: Get company name, lookup/create ID
        # NocoDB returns fields by their display Title, not column_name
        empresa_nombre = (
            record.get('Nombre de la Empresa')
            or record.get('title')
            or "Empresa Desconocida"
        )
        empresa_id = await db_get_or_create_empresa(empresa_nombre)
        log(f"Nombre de la Empresa: {empresa_nombre} -> ID asignado: {empresa_id}")
        
        # 2. Check if attachments exist. If not, don't update NocoDB to avoid webhook loops!
        master_att = record.get("master_account", [])
        if isinstance(master_att, str):
            try:
                master_att = json.loads(master_att)
            except:
                pass
        
        mov_att = record.get("mov_csv", [])
        if isinstance(mov_att, str):
            try:
                mov_att = json.loads(mov_att)
            except:
                pass

        if not master_att or not mov_att:
            log("Faltan archivos adjuntos (Master Account o Movimientos). Esperando a que el usuario termine de cargarlos.")
            return


        # 3. All good, let's start processing
        # Robust email detection: scan all record values for an email pattern
        # (avoids Unicode key matching issues with 'Correo de Notificación')
        user_email = None
        for key, val in record.items():
            if val and isinstance(val, str) and '@' in val and '.' in val:
                # Candidate email found - verify it's not a filename or path
                if 'correo' in key.lower() or 'email' in key.lower() or 'mail' in key.lower() or 'notif' in key.lower():
                    user_email = val.strip()
                    break
        # Fallback: any value that looks like an email across all fields
        if not user_email:
            for key, val in record.items():
                if val and isinstance(val, str) and '@' in val and '.' in val and '/' not in val and ' ' not in val:
                    user_email = val.strip()
                    break
        log(f"Email de notificacion: {user_email}")
        if user_email:
            email_body = f"""
            <p>Hola,</p>
            <p>Hemos recibido correctamente los archivos para <strong>{empresa_nombre}</strong>.</p>
            <p>Nuestro motor de cálculo ya está procesando los 33 indicadores financieros. Este proceso suele tardar aproximadamente <strong>40 segundos</strong>.</p>
            <p>Te enviaremos otro correo en cuanto el análisis esté disponible en tu Dashboard.</p>
            """
            await send_email(
                user_email, 
                f"✅ Carga Recibida: {empresa_nombre}", 
                get_email_template("Procesamiento Iniciado", email_body)
            )
        
        await nocodb_update_record(record_id, {"estado": "procesando"})
        log("Estado actualizado: procesando")
        log(f"Registro obtenido: empresa_id={empresa_id}")



        os.makedirs(work_dir, exist_ok=True)
        sources_dir = os.path.join(work_dir, "sources")
        os.makedirs(sources_dir, exist_ok=True)

        master_url = master_att[0].get("signedPath") or master_att[0].get("path") or master_att[0].get("signedUrl") or master_att[0].get("url")
        if not master_url:
            raise ValueError(f"No valid URL found in attachment. Keys present: {list(master_att[0].keys())}")
        master_path = os.path.join(sources_dir, "Master Account.xlsx")
        await nocodb_download_attachment(f"{NOCODB_URL}/{master_url}", master_path)
        log("✓ Master Account.xlsx descargado")

        # Detect if uploaded file is a raw PUC (no 'Accounts' sheet) or a parameterized Master Account
        try:
            from openpyxl import load_workbook as _lw
            _wb = _lw(master_path, read_only=True)
            es_puc_crudo = 'Accounts' not in _wb.sheetnames
            _wb.close()
            tipo_catalogo = "Plan Único de Cuentas (PUC) estándar" if es_puc_crudo else "Plan de cuentas parametrizado"
            log(f"  Tipo de catálogo de cuentas: {tipo_catalogo}")
        except Exception:
            es_puc_crudo = False
            tipo_catalogo = "Plan de cuentas"

        # Create carga record in PostgreSQL now that we know the catalogue type
        # fuente_sistema reflects the account catalog type for traceability
        fuente_sistema = 'puc' if es_puc_crudo else 'master_account'
        carga_id = await db_create_carga(empresa_id, fuente=fuente_sistema, nocodb_record_id=record_id)
        log(f"Carga registrada en DB: id={carga_id} | tipo_catalogo={fuente_sistema}")

        for att in mov_att:
            att_url = att.get("signedPath") or att.get("path") or att.get("signedUrl") or att.get("url")
            if not att_url:
                raise ValueError(f"No valid URL found in array item. Keys present: {list(att.keys())}")
            att_name = att.get("title") or att.get("fileName")
            att_path = os.path.join(sources_dir, att_name)
            await nocodb_download_attachment(f"{NOCODB_URL}/{att_url}", att_path)
            log(f"✓ {att_name} descargado")

        # Run calculation pipeline
        results, modules_map = await run_calculation_pipeline(sources_dir, log)

        # Save to PostgreSQL
        if db_pool:
            saved = await db_save_indicators(empresa_id, carga_id, results, modules_map)
            log(f"✓ {saved} registros guardados en PostgreSQL")
            await db_update_carga(carga_id, 'success', "\n".join(log_lines))
        else:
            log("⚠️ Sin conexión a PostgreSQL, solo CSVs generados")

        # Update NocoDB status (core fields)
        await nocodb_update_record(record_id, {
            "estado": "completado",
            "resultado": "\n".join(log_lines),
        })
        # Best-effort: store catalog type for traceability (field may not exist in all NocoDB deployments)
        try:
            await nocodb_update_record(record_id, {"tipo_catalogo": tipo_catalogo})
        except Exception as e_tc:
            log(f"  ℹ️ Campo tipo_catalogo no disponible en NocoDB (ignorado): {e_tc}")
        log("✓ Procesamiento completado exitosamente")

        # Final Notification
        if user_email:
            # Handle Auto-Management for Users
            user_creds, es_nuevo = await db_get_or_create_user(empresa_id, user_email, empresa_nombre)
            
            # Welcome note if new user or recovery
            access_note = ""
            welcome_title = "Análisis Finalizado"
            if es_nuevo:
                welcome_title = "🚀 Bienvenida y Análisis Finalizado"
                access_note = f"""
                <div style="background:#F0F9FF; border-left:4px solid #0EA5E9; padding:16px; margin:20px 0; border-radius:6px; font-size:14px;">
                  <p style="margin:0 0 10px 0;"><strong>🔑 Tus Credenciales de Acceso</strong></p>
                  <p style="margin:0 0 5px 0;">Hemos habilitado tu portal financiero. Tus credenciales son:</p>
                  <p style="margin:0;"><strong>Usuario:</strong> {user_email}</p>
                  <p style="margin:0;"><strong>Contraseña Temporal:</strong> <span style="background:#fff; padding:2px 6px; border:1px solid #ddd; font-family:monospace;">{user_creds['password']}</span></p>
                  <p style="margin:10px 0 0 0; color:#0369A1; font-size:12px;"><em>Recomendamos cambiar tu contraseña en el primer acceso.</em></p>
                </div>
                """
            else:
                 access_note = f"""
                <div style="background:#F0F9FF; border-left:4px solid #0EA5E9; padding:16px; margin:20px 0; border-radius:6px; font-size:14px;">
                  <p style="margin:0 0 10px 0;"><strong>🔑 Recordatorio de Acceso</strong></p>
                  <p style="margin:0 0 5px 0;">Tu cuenta ya está activa:</p>
                  <p style="margin:0;"><strong>Usuario:</strong> {user_email}</p>
                  <p style="margin:10px 0 0 0; color:#0369A1; font-size:12px;">Usa tu contraseña habitual o solicita una recuperación si la has olvidado.</p>
                </div>
                """

            # Build accounting-language note based on account catalog type
            nota_contable = ""
            if es_puc_crudo:
                nota_contable = """
            <div style="background:#FEF3C7; border-left:4px solid #F59E0B; padding:16px; margin-top:24px; border-radius:6px; font-size:14px;">
              <p style="margin:0 0 10px 0;"><strong>📋 Nota técnica para el contador</strong></p>
              <p style="margin:0 0 8px 0;">
                El análisis se realizó utilizando el <strong>Plan Único de Cuentas (PUC) estándar</strong>. Para su revisión, el motor de cálculo ha utilizado las siguientes agrupaciones:
              </p>
              <ul style="margin:0 0 10px 0; padding-left:20px;">
                <li style="margin-bottom:4px;"><strong>Cartera:</strong> Cuenta <code>1305</code> (Clientes).</li>
                <li style="margin-bottom:4px;"><strong>Inventarios:</strong> Cuenta <code>1435</code> (Mercancías no fabricadas por la empresa).</li>
                <li style="margin-bottom:4px;"><strong>Proveedores:</strong> Cuentas <code>2205</code>, <code>2210</code> y <code>2335</code> (Costos y gastos por pagar).</li>
              </ul>
              <p style="margin:0 0 8px 0;">
                Para los indicadores de <strong>Rentabilidad</strong>, <strong>Solvencia</strong> y <strong>Estructura</strong>, se recomienda validar:
              </p>
              <ol style="margin:0 0 8px 0; padding-left:20px;">
                <li style="margin-bottom:6px;">
                  <strong>Gastos financieros:</strong> El sistema identifica intereses específicamente en la cuenta <code>53052001</code>. Si utiliza otras subcuentas para intereses de obligaciones financieras, el gasto podría estar subestimado.
                </li>
                <li style="margin-bottom:6px;">
                  <strong>Activos intangibles:</strong> Se asume valor cero para el <strong>Grupo 16</strong> (Intangibles). Si la empresa registra marcas o software, el Ratio de Activos Tangibles podría variar.
                </li>
                <li>
                  <strong>Cierre contable:</strong> El motor excluye automáticamente los asientos del <strong>Comprobante N° 998</strong> (o descripciones de "cierre anual") para reflejar la utilidad operativa real del período.
                </li>
              </ol>
              <p style="margin:0; color:#92400E; font-size:13px; font-style:italic;">
                Estos resultados son para análisis de gestión interna. Para reportes oficiales, realice una validación final contra su balance de prueba.
              </p>
            </div>
            """

            email_body = f"""
            <p>¡Buenas noticias!</p>
            <p>El análisis financiero para <strong>{empresa_nombre}</strong> ha finalizado exitosamente.</p>
            <ul style="color: #374151;">
                <li><strong>Indicadores calculados:</strong> 33</li>
                <li><strong>Fuente del plan de cuentas:</strong> {tipo_catalogo}</li>
                <li><strong>Estado:</strong> Completado</li>
            </ul>
            {access_note}
            <p>Ya puedes visualizar los resultados detallados en tu tablero de control.</p>
            {nota_contable}
            """
            await send_email(
                user_email, 
                f"📊 Análisis Disponible: {empresa_nombre}", 
                get_email_template(
                    welcome_title, 
                    email_body, 
                    "Ver Dashboard", 
                    f"{DASHBOARD_URL}/login.html"
                )
            )

    except Exception as e:
        error_msg = f"ERROR: {str(e)}\n{traceback.format_exc()}"
        log(error_msg)
        await db_update_carga(carga_id, 'error', "\n".join(log_lines))
        try:
            await nocodb_update_record(record_id, {
                "estado": "error",
                "resultado": "\n".join(log_lines)
            })
        except Exception:
            pass
    finally:
        if os.path.exists(work_dir):
            shutil.rmtree(work_dir, ignore_errors=True)


async def process_local(empresa_id: int, sources_dir: str):
    """Process from local files (for testing without NocoDB)."""
    log_lines = []
    carga_id = 0

    def log(msg: str):
        log_lines.append(f"[{datetime.now().strftime('%H:%M:%S')}] {msg}")
        print(msg)

    try:
        carga_id = await db_create_carga(empresa_id)
        log(f"Carga registrada: id={carga_id}")

        results, modules_map = await run_calculation_pipeline(sources_dir, log)

        if db_pool:
            saved = await db_save_indicators(empresa_id, carga_id, results, modules_map)
            log(f"✓ {saved} registros guardados en PostgreSQL")
            await db_update_carga(carga_id, 'success', "\n".join(log_lines))
        
        return {"status": "success", "saved": saved if db_pool else 0, "carga_id": carga_id}

    except Exception as e:
        error_msg = f"ERROR: {str(e)}\n{traceback.format_exc()}"
        log(error_msg)
        await db_update_carga(carga_id, 'error', "\n".join(log_lines))
        raise


async def run_calculation_pipeline(sources_dir: str, log):
    """Execute the calculate_indicators.py pipeline."""
    import importlib

    script_source = os.path.join(os.path.dirname(__file__), "calculate_indicators.py")
    script_dest = os.path.join(sources_dir, "calculate_indicators.py")
    
    if not os.path.exists(script_dest):
        shutil.copy2(script_source, script_dest)
    log("✓ Script de procesamiento listo")

    # Save original cwd, switch to sources_dir (calculate_indicators uses relative paths)
    original_cwd = os.getcwd()
    os.chdir(sources_dir)
    sys.path.insert(0, sources_dir)

    try:
        spec = importlib.util.spec_from_file_location("calculate_indicators", script_dest)
        calc = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(calc)

        accounts, group_termino = calc.load_account_classification()
        log(f"  Cargadas {len(accounts)} cuentas")

        movements = calc.parse_mov_files()
        log("  Movimientos parseados")

        results_tuple = calc.build_monthly_balances(movements, accounts)
        m_full, m_ytd, m_flows_op, m_full_ex998, m_ytd_op, m_ytd_all, m_closing, m_flows_all_single = results_tuple

        classifications = calc.classify_accounts(accounts, group_termino)
        aggregates = calc.compute_aggregates(
            m_full, m_ytd, m_flows_op, classifications,
            m_full_ex998, m_ytd_op, m_ytd_all, m_closing, m_flows_all_single
        )
        results = calc.calculate_indicators(aggregates)
        log(f"  ✓ {len(results)} indicadores calculados")

        # Also write CSVs (backup)
        calc.write_csvs(results)
        log("  ✓ CSVs de respaldo escritos")

        # Return results and MODULES for DB saving
        modules_map = calc.MODULES
        return results, modules_map

    finally:
        os.chdir(original_cwd)
        if sources_dir in sys.path:
            sys.path.remove(sources_dir)


# ── API Endpoints: Write (Processing) ──────────────────────────

# In-memory lock for currently processing records to prevent webhook storms
PROCESSING_RECORDS = set()

@app.post("/api/procesar/calc", response_model=StatusResponse)
async def webhook_procesar_calc(payload: WebhookPayload, background_tasks: BackgroundTasks):
    """
    Step 1: Financial Calculations only (No AI / Token Free).
    Triggered by NocoDB webhook via n8n, or manually.
    Handles multiple payload formats:
      - NocoDB v3: { data: { rows: [{ Id: X }] } }
      - n8n simplified: { data: { Id: X } }
      - Direct: { id: "X" }
    """
    record_id = None

    # Format 1: NocoDB v3 webhook (data.rows[0].Id)
    if payload.data and "rows" in payload.data:
        rows = payload.data["rows"]
        if isinstance(rows, list) and len(rows) > 0:
            record_id = str(rows[0].get("Id"))

    # Format 2: n8n simplified (data.Id)
    if not record_id and payload.data and "Id" in payload.data:
        record_id = str(payload.data["Id"])

    # Format 3: Direct id field
    if not record_id and payload.id:
        record_id = str(payload.id)

    if not record_id or record_id in ("None", "null", ""):
        raise HTTPException(status_code=400, detail="No record ID found in payload")

    if record_id in PROCESSING_RECORDS:
        print(f"⏳ Ignorando webhook: Ya existe un procesamiento en curso para record_id={record_id} en memoria.")
        return StatusResponse(status="ignored", message="Procesamiento concurrente en curso.")

    # Anti-loop check: prevent webhooks triggered by our own updates from re-firing
    try:
        record = await nocodb_get_record(record_id)
        current_state = record.get("estado")
        if current_state in ("procesando", "completado"):
            print(f"⏭️ Ignorando webhook repetido para record_id={record_id} (estado={current_state})")
            return StatusResponse(status="ignored", message=f"Registro ya está en estado {current_state}")
    except Exception as e:
        print(f"⚠️ Error verificando estado para {record_id}: {e}")

    print(f"📥 Procesamiento solicitado para record_id={record_id}")
    PROCESSING_RECORDS.add(record_id)
    background_tasks.add_task(process_record_wrapper, record_id)
    return StatusResponse(status="accepted", message=f"Cálculos iniciados para registro {record_id}")

async def process_record_wrapper(record_id: str):
    """Wrapper to properly clear the PROCESSING_RECORDS lock."""
    try:
        await process_record(record_id)
    finally:
        PROCESSING_RECORDS.discard(record_id)

@app.post("/api/procesar/local", response_model=StatusResponse)
async def process_local_files(request: ProcessLocalRequest, background_tasks: BackgroundTasks):
    """
    Process from local files directory (for testing without NocoDB).
    Uses the default sources directory if none provided.
    """
    sources = request.sources_dir or os.path.join(os.path.dirname(__file__), "..", "sources")
    sources = os.path.abspath(sources)
    
    if not os.path.exists(sources):
        raise HTTPException(status_code=404, detail=f"Sources dir not found: {sources}")
    
    background_tasks.add_task(process_local, request.empresa_id, sources)
    return StatusResponse(status="accepted", message=f"Procesamiento local iniciado (empresa_id={request.empresa_id})")

@app.post("/api/procesar/manual", response_model=StatusResponse)
async def manual_procesar(request: ProcessRequest, background_tasks: BackgroundTasks):
    """Manual trigger for full calculation."""
    background_tasks.add_task(process_record, request.record_id)
    return StatusResponse(
        status="accepted",
        message=f"Procesamiento manual iniciado para registro {request.record_id}"
    )

@app.post("/api/procesar/ai", response_model=StatusResponse)
async def trigger_ai_insights(request: AIInsightRequest, background_tasks: BackgroundTasks):
    """
    Step 2: AI Insights Generation (Consumes Tokens).
    Triggered manually by user or Antigravity.
    """
    background_tasks.add_task(generate_ai_insights, request.record_id, request.module)
    return StatusResponse(
        status="accepted",
        message=f"Generación de IA iniciada para módulo: {request.module}"
    )

async def generate_ai_insights(record_id: str, module: str):
    """
    Background task for LLM processing.
    Requirement: Each insight (analysis and recommendation) must have 
    an extension of approximately 50 words for depth and professional branding.
    """
    print(f"Generating insights for {record_id} - Module: {module} (Length: ~50 words)")
    # TODO: implement LLM call using the 50-word constraint protocol
    pass


# ── API Endpoints: Read (Dashboard Consumption) ────────────────
# ── Auth Endpoints ─────────────────────────────────────────────
class LoginRequest(BaseModel):
    usuario: str
    password: str

@app.post("/api/auth/login")
async def api_auth_login(req: LoginRequest):
    """
    Validate credentials against PostgreSQL usuarios table.
    Requirement: self-managed access during data load.
    """
    if not db_pool:
        # Fallback for dev environment
        if req.usuario == "admin" and req.password == "datia2026":
            return {"status": "success", "user": {"empresa": 1, "nombre": "Admin Demo", "rol": "Admin", "initials": "AD"}}
        raise HTTPException(status_code=401, detail="DB connection unavailable for login")

    async with db_pool.acquire() as conn:
        row = await conn.fetchrow("""
            SELECT empresa_id, email, nombre, rol, initials FROM public.usuarios 
            WHERE email = $1 AND password = $2
        """, req.usuario, req.password)
        
        if not row:
            raise HTTPException(status_code=401, detail="Credenciales incorrectas")
        
        # Update last login
        await conn.execute("UPDATE public.usuarios SET ultimo_login = NOW() WHERE email = $1", req.usuario)
        
        return {
            "status": "success",
            "user": {
                "empresa": row['empresa_id'],
                "nombre": row['nombre'],
                "rol": row['rol'],
                "initials": row['initials']
            }
        }

@app.get("/api/indicadores/{empresa_id}")
async def get_indicadores(
    empresa_id: int,
    modulo: Optional[str] = Query(None, description="Filter by module: liquidez, actividad, etc."),
    periodo_ano: Optional[int] = Query(None, description="Filter by year"),
    indicador_key: Optional[str] = Query(None, description="Filter by specific indicator")
):
    """
    Fetch indicators for a company. Used by the Dashboard frontend.
    Returns data structured for Chart.js consumption.
    """
    if not db_pool:
        raise HTTPException(status_code=503, detail="Database not available")

    async with db_pool.acquire() as conn:
        query = "SELECT indicador_key, periodo_ano, periodo_mes, valor, unidad, modulo FROM indicadores WHERE empresa_id = $1"
        params = [empresa_id]
        idx = 2

        if modulo:
            query += f" AND modulo = ${idx}"
            params.append(modulo)
            idx += 1
        if periodo_ano:
            query += f" AND periodo_ano = ${idx}"
            params.append(periodo_ano)
            idx += 1
        if indicador_key:
            query += f" AND indicador_key = ${idx}"
            params.append(indicador_key)
            idx += 1

        query += " ORDER BY indicador_key, periodo_ano, periodo_mes"
        rows = await conn.fetch(query, *params)

    # Group by indicator_key
    grouped = {}
    for row in rows:
        key = row['indicador_key']
        if key not in grouped:
            grouped[key] = {
                'indicador_key': key,
                'unidad': row['unidad'],
                'modulo': row['modulo'],
                'data': []
            }
        grouped[key]['data'].append({
            'year': row['periodo_ano'],
            'month': row['periodo_mes'],
            'valor': float(row['valor'])
        })

    return {
        "empresa_id": empresa_id,
        "total": len(rows),
        "indicadores": list(grouped.values())
    }


@app.get("/api/insights/{empresa_id}")
async def get_insights(
    empresa_id: int,
    periodo_ano: Optional[int] = Query(None),
    indicador_key: Optional[str] = Query(None)
):
    """Fetch AI-generated insights for a company."""
    if not db_pool:
        raise HTTPException(status_code=503, detail="Database not available")

    async with db_pool.acquire() as conn:
        query = "SELECT * FROM insights_ai WHERE empresa_id = $1"
        params = [empresa_id]
        idx = 2

        if periodo_ano:
            query += f" AND periodo_ano = ${idx}"
            params.append(periodo_ano)
            idx += 1
        if indicador_key:
            query += f" AND indicador_key = ${idx}"
            params.append(indicador_key)
            idx += 1

        query += " ORDER BY indicador_key, periodo_ano"
        rows = await conn.fetch(query, *params)

    return {
        "empresa_id": empresa_id,
        "total": len(rows),
        "insights": [dict(r) for r in rows]
    }


@app.get("/api/empresas")
async def get_empresas():
    """List all companies."""
    if not db_pool:
        raise HTTPException(status_code=503, detail="Database not available")

    async with db_pool.acquire() as conn:
        rows = await conn.fetch("SELECT id, nit, razon_social, sucursal, moneda_base FROM empresas ORDER BY id")

    return {"empresas": [dict(r) for r in rows]}


@app.get("/api/catalogo")
async def get_catalogo():
    """Get the indicator catalog (33 KPIs metadata)."""
    if not db_pool:
        raise HTTPException(status_code=503, detail="Database not available")

    async with db_pool.acquire() as conn:
        rows = await conn.fetch("SELECT * FROM indicador_catalogo ORDER BY modulo, indicador_key")

    return {"catalogo": [dict(r) for r in rows]}


@app.get("/api/cargas/{empresa_id}")
async def get_cargas(empresa_id: int):
    """Get processing history for a company."""
    if not db_pool:
        raise HTTPException(status_code=503, detail="Database not available")

    async with db_pool.acquire() as conn:
        rows = await conn.fetch("""
            SELECT id, fecha_upload, fuente_sistema, periodo_ano, estado, match_rate, created_at
            FROM cargas WHERE empresa_id = $1
            ORDER BY created_at DESC LIMIT 20
        """, empresa_id)

    return {"cargas": [dict(r) for r in rows]}


@app.get("/api/status/{record_id}", response_model=StatusResponse)
async def get_status(record_id: str):
    """Check processing status for a specific record."""
    try:
        record = await nocodb_get_record(record_id)
        return StatusResponse(
            status=record.get("estado", "unknown"),
            message=record.get("resultado", ""),
            match_rate=record.get("match_rate")
        )
    except Exception as e:
        return StatusResponse(status="error", message=str(e))


@app.get("/health")
async def health():
    """Health check endpoint."""
    db_status = "connected" if db_pool else "disconnected"
    return {
        "status": "ok",
        "service": "liquidity-worker",
        "version": "2.0.0",
        "database": db_status,
        "timestamp": datetime.now().isoformat()
    }
