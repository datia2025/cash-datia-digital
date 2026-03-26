-- =============================================================
-- Migration: Restaurar columna periodo_mes en insights_ai
-- Fecha: 2026-03-26
-- Contexto: La columna fue removida en una sesión anterior de 
--           estabilización. Se restaura para soportar el filtro
--           interanual por mes en el Dashboard.
-- =============================================================

-- 1. Añadir columna si no existe (safe migration)
ALTER TABLE insights_ai 
ADD COLUMN IF NOT EXISTS periodo_mes INTEGER NOT NULL DEFAULT 12;

-- 2. Verificar resultado
SELECT 
    column_name, 
    data_type, 
    column_default,
    is_nullable
FROM information_schema.columns 
WHERE table_name = 'insights_ai' 
  AND column_name = 'periodo_mes';

-- 3. Ver distribución de registros existentes (todos quedarán con mes=12)
SELECT periodo_ano, periodo_mes, COUNT(*) as total 
FROM insights_ai 
GROUP BY periodo_ano, periodo_mes
ORDER BY periodo_ano DESC, periodo_mes DESC;
