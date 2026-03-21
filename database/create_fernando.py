import asyncpg
import os
import asyncio

async def insert_user():
    database_url = os.getenv("DATABASE_URL", "postgresql://liquidity_user:liquidity_password@localhost:5432/liquidity_dashboard")
    db_schema = os.getenv("DB_SCHEMA", "liquidity")
    
    print(f"Iniciando inserción de usuario fernando@datia.digital...")
    conn = await asyncpg.connect(database_url)
    
    try:
        await conn.execute(f"SET search_path TO {db_schema}, public;")
        
        # Insertar o actualizar si ya existe
        await conn.execute("""
            INSERT INTO usuarios (empresa_id, email, password, nombre, rol, initials)
            VALUES (1, 'fernando@datia.digital', 'D@tia2026!', 'Fernando Mas', 'Dirección General', 'FM')
            ON CONFLICT (email) DO UPDATE SET 
                password = EXCLUDED.password,
                empresa_id = 1;
        """)
        print("✅ Usuario fernando@datia.digital registrado exitosamente para la Empresa 1.")

    except Exception as e:
        print(f"❌ Error al registrar usuario: {e}")
    finally:
        await conn.close()

if __name__ == "__main__":
    asyncio.run(insert_user())
