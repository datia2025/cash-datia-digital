-- =============================================================
-- Migration: Add modulo column to insights_ai for performance
-- Fecha: 2026-03-27
-- Contexto: Permite filtrar análisis en el backend para reducir
--           la carga de datos en el dashboard y mejorar conectividad.
-- =============================================================

-- 1. Añadir columna modulo
ALTER TABLE liquidity.insights_ai 
ADD COLUMN IF NOT EXISTS modulo VARCHAR(30);

-- 2. Poblar módulo desde el catálogo de indicadores
UPDATE liquidity.insights_ai i
SET modulo = c.modulo
FROM liquidity.indicador_catalogo c
WHERE i.indicador_key = c.indicador_key;

-- 3. Caso especial: dictámenes de home/liquidez que no están en el catálogo por slug literal
UPDATE liquidity.insights_ai 
SET modulo = 'liquidez' 
WHERE indicador_key IN ('insight-liquidez-ai', 'report', 'liquidez') AND modulo IS NULL;

-- 4. Crear índice para optimizar filtrado por módulo en Dashboard
CREATE INDEX IF NOT EXISTS idx_insights_modulo 
ON liquidity.insights_ai(empresa_id, modulo, periodo_ano, periodo_mes);

-- 5. Verificación
SELECT modulo, COUNT(*) as total 
FROM liquidity.insights_ai 
GROUP BY modulo;
