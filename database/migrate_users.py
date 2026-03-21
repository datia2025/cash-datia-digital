import asyncpg
import os
import asyncio

async def migrate():
    database_url = os.getenv("DATABASE_URL", "postgresql://liquidity_user:liquidity_password@localhost:5432/liquidity_dashboard")
    db_schema = os.getenv("DB_SCHEMA", "liquidity")
    
    print(f"Connecting to {database_url}...")
    conn = await asyncpg.connect(database_url)
    
    try:
        # 1. Crear tabla de usuarios
        await conn.execute(f"""
            SET search_path TO {db_schema}, public;
            CREATE TABLE IF NOT EXISTS usuarios (
                id SERIAL PRIMARY KEY,
                empresa_id INTEGER REFERENCES empresas(id) ON DELETE CASCADE,
                email VARCHAR(255) UNIQUE NOT NULL,
                password VARCHAR(255) NOT NULL,
                nombre VARCHAR(255),
                rol VARCHAR(50) DEFAULT 'Usuario',
                ultimo_login TIMESTAMP,
                created_at TIMESTAMP DEFAULT NOW()
            );
            
            -- Crear índices para velocidad
            CREATE INDEX IF NOT EXISTS idx_usuarios_email ON usuarios(email);
        """)
        print("✅ Tabla 'usuarios' creada o ya existía.")
        
        # 2. Asegurarse que el admin por defecto exista vinculado a la empresa 1
        await conn.execute(f"""
            INSERT INTO usuarios (empresa_id, email, password, nombre, rol)
            VALUES (1, 'admin@datia.digital', 'datia2026', 'Administrador Datia', 'Superusuario')
            ON CONFLICT (email) DO NOTHING;
        """)
        print("✅ Usuario admin por defecto registrado.")

    except Exception as e:
        print(f"❌ Error migración: {e}")
    finally:
        await conn.close()

if __name__ == "__main__":
    asyncio.run(migrate())
