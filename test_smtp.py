
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from datetime import datetime

SMTP_HOST = "smtp.gmail.com"
SMTP_PORT = 587
SMTP_USER = "datia_notificaciones@talentracking.com"
SMTP_PASS = "qdtt zzyg aqby iuoj"
SMTP_FROM = "datia_notificaciones@talentracking.com"

def send_test_email(to_email):
    subject = "🔬 Prueba de Conexión SMTP - Datia Liquidity"
    
    html_content = f"""
    <html>
    <body style="font-family: Arial, sans-serif; color: #333;">
        <div style="max-width: 600px; margin: 0 auto; padding: 20px; border: 1px solid #ddd; border-radius: 8px;">
            <div style="background-color: #111827; padding: 15px; text-align: center; border-radius: 6px 6px 0 0;">
                <h1 style="color: #60A5FA; margin: 0; font-size: 20px;">DATIA | SMTP TEST</h1>
            </div>
            <div style="padding: 20px;">
                <p>Hola <strong>Fernando</strong>,</p>
                <p>Esta es una prueba directa desde el servidor de <strong>Liquidity Dashboard</strong> para verificar la capa de notificaciones.</p>
                <p><strong>Detalles de la prueba:</strong></p>
                <ul>
                    <li><strong>Servidor:</strong> EasyPanel (Docker)</li>
                    <li><strong>Cuenta:</strong> {SMTP_USER}</li>
                    <li><strong>Hora:</strong> {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}</li>
                </ul>
                <p>Si recibes este correo, la configuración SMTP y las credenciales son <strong>vueltas y funcionales</strong>.</p>
            </div>
            <div style="text-align: center; font-size: 11px; color: #777; padding: 10px;">
                © 2026 Datia Digital
            </div>
        </div>
    </body>
    </html>
    """

    try:
        msg = MIMEMultipart("alternative")
        msg["Subject"] = subject
        msg["From"] = f"Datia Notificaciones <{SMTP_FROM}>"
        msg["To"] = to_email
        msg.attach(MIMEText(html_content, "html"))

        print(f"Connecting to {SMTP_HOST}:{SMTP_PORT}...")
        with smtplib.SMTP(SMTP_HOST, SMTP_PORT, timeout=15) as server:
            server.set_debuglevel(1)
            server.starttls()
            server.login(SMTP_USER, SMTP_PASS)
            server.sendmail(SMTP_FROM, to_email, msg.as_string())
        print(f"\nSUCCESS: Email sent to {to_email}")
    except Exception as e:
        print(f"\nFAILED: {str(e)}")

if __name__ == "__main__":
    send_test_email("fernando@datia.digital")
