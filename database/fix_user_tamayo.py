import asyncpg
import os
import asyncio

async def update_user_correct():
    database_url = os.getenv("DATABASE_URL", "postgresql://liquidity_user:liquidity_password@localhost:5432/liquidity_dashboard")
    db_schema = os.getenv("DB_SCHEMA", "liquidity")
    
    print(f"Corrigiendo usuario fernando@datia.digital para ID 3099...")
    conn = await asyncpg.connect(database_url)
    
    try:
        await conn.execute(f"SET search_path TO {db_schema}, public;")
        
        # Actualizar datos de empresa y nombre correctos
        await conn.execute("""
            INSERT INTO usuarios (empresa_id, email, password, nombre, rol, initials)
            VALUES (3099, 'fernando@datia.digital', 'D@tia2026!', 'CARLOS TAMAYO Y ASOCIADOS S.A.S.', 'Dirección General', 'CT')
            ON CONFLICT (email) DO UPDATE SET 
                empresa_id = 3099,
                nombre = 'CARLOS TAMAYO Y ASOCIADOS S.A.S.',
                initials = 'CT';
        """)
        print("✅ Usuario fernando@datia.digital corregido para Carlos Tamayo y Asociados S.A.S. (ID 3099).")

    except Exception as e:
        print(f"❌ Error al corregir usuario: {e}")
    finally:
        await conn.close()

if __name__ == "__main__":
    asyncio.run(update_user_correct())
