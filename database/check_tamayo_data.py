import asyncpg
import os
import asyncio

async def check_data():
    database_url = os.getenv("DATABASE_URL", "postgresql://liquidity_user:liquidity_password@localhost:5432/liquidity_dashboard")
    db_schema = os.getenv("DB_SCHEMA", "liquidity")
    
    conn = await asyncpg.connect(database_url)
    try:
        await conn.execute(f"SET search_path TO {db_schema}, public;")
        
        # Conteo total
        count = await conn.fetchval("SELECT count(*) FROM indicadores WHERE empresa_id = 3099")
        print(f"Total indicadores para 3099: {count}")
        
        # Muestreo de indicadores de actividad
        actividad = await conn.fetch("""
            SELECT indicador_key, periodo_mes, valor 
            FROM indicadores 
            WHERE empresa_id = 3099 AND modulo = 'actividad'
            ORDER BY periodo_mes ASC
            LIMIT 10
        """)
        print("\n--- Módulo Actividad (Muestra) ---")
        for row in actividad:
            print(f"{row['indicador_key']}: Mes {row['periodo_mes']} -> {row['valor']}")

        # Muestreo de rentabilidad
        renta = await conn.fetch("""
            SELECT indicador_key, periodo_mes, valor 
            FROM indicadores 
            WHERE empresa_id = 3099 AND modulo = 'rentabilidad'
            ORDER BY periodo_mes ASC
            LIMIT 5
        """)
        print("\n--- Módulo Rentabilidad (Muestra) ---")
        for row in renta:
            print(f"{row['indicador_key']}: Mes {row['periodo_mes']} -> {row['valor']}")

    finally:
        await conn.close()

if __name__ == "__main__":
    asyncio.run(check_data())
