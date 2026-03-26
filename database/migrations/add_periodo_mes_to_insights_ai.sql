-- =============================================================
-- Migration: Restaurar columna periodo_mes en insights_ai
-- Fecha: 2026-03-26
-- Contexto: La columna fue removida en una sesión anterior de 
--           estabilización. Se restaura para soportar el filtro
--           interanual por mes en el Dashboard.
-- =============================================================

-- ⚠️  PASO 0: BACKUP PREVIO (ejecutar SIEMPRE antes del ALTER)
-- Crea una copia exacta de la tabla en la misma base de datos.
-- Para restaurar: INSERT INTO insights_ai SELECT * FROM insights_ai_backup_20260326;
CREATE TABLE IF NOT EXISTS insights_ai_backup_20260326 AS
SELECT * FROM insights_ai;

-- Verificar que el backup se hizo correctamente
SELECT 
    'insights_ai'               AS tabla,  COUNT(*) AS registros FROM insights_ai
UNION ALL
SELECT 
    'insights_ai_backup_20260326', COUNT(*)           FROM insights_ai_backup_20260326;

-- ✅ Solo continúa si los conteos coinciden.

-- PASO 1: Añadir columna si no existe (safe migration)
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
