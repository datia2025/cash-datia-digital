-- ============================================================
-- Financial Dashboard — Liquidity Dashboard
-- PostgreSQL Schema Initialization
-- Version: 1.0 (MVP)
-- Based on: DMM_MAESTRO_COMPLETE.md
-- ============================================================

-- ── Create schema ─────────────────────────────────────────────
CREATE SCHEMA IF NOT EXISTS liquidity;
SET search_path TO liquidity, public;

-- ============================================================
-- TABLE 1: empresas (Maestro Core)
-- One record per client company
-- ============================================================
CREATE TABLE IF NOT EXISTS empresas (
    id              SERIAL PRIMARY KEY,
    nit             VARCHAR(20)   NOT NULL UNIQUE,
    razon_social    TEXT          NOT NULL,
    sucursal        VARCHAR(100),
    moneda_base     VARCHAR(3)    NOT NULL DEFAULT 'COP',
    fuente_default  VARCHAR(20)   DEFAULT 'siigo',
    created_at      TIMESTAMP     NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMP     NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_empresas_nit ON empresas(nit);

COMMENT ON TABLE empresas IS 'Maestro de empresas clientes del dashboard financiero';
COMMENT ON COLUMN empresas.nit IS 'Identificación fiscal única (NIT colombiano)';
COMMENT ON COLUMN empresas.fuente_default IS 'Software contable: siigo, sap, quickbooks, etc.';

-- ============================================================
-- TABLE 2: cargas (Estado de Ingesta)
-- Tracks each file upload and processing status
-- ============================================================
CREATE TABLE IF NOT EXISTS cargas (
    id              SERIAL PRIMARY KEY,
    empresa_id      INT           NOT NULL REFERENCES empresas(id) ON DELETE RESTRICT,
    fecha_upload    TIMESTAMP     NOT NULL DEFAULT NOW(),
    fuente_sistema  VARCHAR(20)   NOT NULL DEFAULT 'siigo',
    periodo_ano     INT           NOT NULL,
    periodo_mes_ini INT,                    -- Optional: start month of data range
    periodo_mes_fin INT,                    -- Optional: end month of data range
    hash_archivo    VARCHAR(64),            -- SHA-256 to prevent duplicate processing
    estado          VARCHAR(20)   NOT NULL DEFAULT 'pending',
    resultado       TEXT,                   -- Processing log / error details
    match_rate      NUMERIC(5,2),           -- QA match rate vs ground truth
    nocodb_record_id VARCHAR(50),           -- Reference to NocoDB record
    created_at      TIMESTAMP     NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMP     NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_estado CHECK (estado IN ('pending', 'processing', 'success', 'error', 'failed')),
    CONSTRAINT chk_periodo_ano CHECK (periodo_ano BETWEEN 2000 AND 2100)
);

CREATE INDEX idx_cargas_empresa ON cargas(empresa_id);
CREATE INDEX idx_cargas_estado ON cargas(estado);

COMMENT ON TABLE cargas IS 'Registro de cada carga de archivos financieros y su estado de procesamiento';
COMMENT ON COLUMN cargas.hash_archivo IS 'SHA-256 del archivo para evitar reprocesar el mismo binario';

-- ============================================================
-- TABLE 3: indicadores (Data Warehouse — KPIs)
-- 33 financial indicators per period per company
-- ============================================================
CREATE TABLE IF NOT EXISTS indicadores (
    id              BIGSERIAL PRIMARY KEY,
    empresa_id      INT           NOT NULL REFERENCES empresas(id) ON DELETE RESTRICT,
    carga_id        INT           REFERENCES cargas(id) ON DELETE CASCADE,
    indicador_key   VARCHAR(50)   NOT NULL,
    periodo_ano     INT           NOT NULL,
    periodo_mes     INT           NOT NULL,
    valor           NUMERIC(18,4) NOT NULL,
    unidad          VARCHAR(10)   NOT NULL DEFAULT 'x',
    modulo          VARCHAR(30),            -- Classification: liquidez, actividad, rentabilidad, estructura, solvencia
    created_at      TIMESTAMP     NOT NULL DEFAULT NOW(),

    -- Domain constraints
    CONSTRAINT chk_ind_ano CHECK (periodo_ano BETWEEN 2000 AND 2100),
    CONSTRAINT chk_ind_mes CHECK (periodo_mes BETWEEN 1 AND 12),

    -- Prevent duplicate indicators for same company/period
    CONSTRAINT uq_indicador_empresa_periodo 
        UNIQUE (empresa_id, periodo_ano, periodo_mes, indicador_key)
);

-- Performance indexes for dashboard queries
CREATE INDEX idx_indicadores_emp_periodo 
    ON indicadores(empresa_id, periodo_ano, periodo_mes);
CREATE INDEX idx_indicadores_key 
    ON indicadores(indicador_key);
CREATE INDEX idx_indicadores_modulo 
    ON indicadores(modulo);

COMMENT ON TABLE indicadores IS 'Almacén de los 33 KPIs financieros calculados por el Worker';
COMMENT ON COLUMN indicadores.indicador_key IS 'Slug técnico: razon_corriente, dso, ebitda, etc.';
COMMENT ON COLUMN indicadores.valor IS 'Resultado matemático con 4 decimales de precisión';

-- ============================================================
-- TABLE 4: insights_ai (Capa de Inteligencia Narrativa)
-- AI-generated analysis per indicator
-- ============================================================
CREATE TABLE IF NOT EXISTS insights_ai (
    id              SERIAL PRIMARY KEY,
    empresa_id      INT           NOT NULL REFERENCES empresas(id) ON DELETE RESTRICT,
    indicador_key   VARCHAR(50)   NOT NULL,
    periodo_ano     INT           NOT NULL,
    tipo            VARCHAR(20)   NOT NULL DEFAULT 'success',
    analisis_positivo TEXT,                  -- Positive findings (strengths)
    analisis_negativo TEXT,                  -- Negative findings (risks)
    recomendacion   TEXT,                    -- Suggested actions
    metodologia     TEXT,                    -- Methodology used for analysis
    generado_por    VARCHAR(50)   DEFAULT 'antigravity',
    created_at      TIMESTAMP     NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMP     NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_insight_tipo CHECK (tipo IN ('success', 'warning', 'danger')),
    CONSTRAINT chk_insight_ano CHECK (periodo_ano BETWEEN 2000 AND 2100)
);

CREATE INDEX idx_insights_empresa ON insights_ai(empresa_id);
CREATE INDEX idx_insights_key ON insights_ai(indicador_key);
CREATE INDEX idx_insights_periodo ON insights_ai(empresa_id, periodo_ano);

COMMENT ON TABLE insights_ai IS 'Narrativa estratégica generada por Antigravity (IA Zero-Cost)';
COMMENT ON COLUMN insights_ai.tipo IS 'Severidad del hallazgo: success (verde), warning (amarillo), danger (rojo)';

-- ============================================================
-- TABLE 5: indicador_catalogo (Reference table for KPI metadata)
-- Static reference for the 33 indicators
-- ============================================================
CREATE TABLE IF NOT EXISTS indicador_catalogo (
    indicador_key   VARCHAR(50) PRIMARY KEY,
    nombre_display  TEXT          NOT NULL,
    modulo          VARCHAR(30)   NOT NULL,
    unidad          VARCHAR(10)   NOT NULL DEFAULT 'x',
    descripcion     TEXT,
    formula         TEXT,
    umbral_alerta   NUMERIC(18,4)           -- Optional threshold for warnings
);

COMMENT ON TABLE indicador_catalogo IS 'Catálogo maestro de los 33 indicadores financieros';

-- ============================================================
-- SEED DATA: Indicator catalog
-- ============================================================
INSERT INTO indicador_catalogo (indicador_key, nombre_display, modulo, unidad, descripcion) VALUES
-- Módulo: Liquidez
('razon_corriente',       'Razón Corriente',              'liquidez',      'x',    'Activos Corrientes / Pasivos Corrientes'),
('prueba_acida',          'Prueba Ácida',                 'liquidez',      'x',    '(Activos Corrientes - Inventarios) / Pasivos Corrientes'),
('capital_trabajo',       'Capital de Trabajo',           'liquidez',      '$',    'Activos Corrientes - Pasivos Corrientes'),
('ratio_efectivo',        'Ratio de Efectivo',            'liquidez',      'x',    '(Caja + Bancos + Inversiones Temporales) / Pasivos Corrientes'),

-- Módulo: Actividad
('dso',                   'DSO (Días de Cobro)',          'actividad',     'días', '(CXC Promedio / Ventas Netas) × 365'),
('dio',                   'DIO (Días de Inventario)',     'actividad',     'días', '(Inventario Promedio / Costo de Ventas) × 365'),
('dpo',                   'DPO (Días de Pago)',           'actividad',     'días', '(CXP Promedio / Costo de Ventas) × 365'),
('ciclo_conversion_efectivo', 'Ciclo de Conversión',      'actividad',     'días', 'DSO + DIO - DPO'),
('rotacion_activos',      'Rotación de Activos',          'actividad',     'x',    'Ventas Netas / Activos Totales'),
('rotacion_cartera',      'Rotación de Cartera',          'actividad',     'x',    'Ventas Netas / CXC Promedio'),
('rotacion_inventarios',  'Rotación de Inventarios',      'actividad',     'x',    'Costo de Ventas / Inventario Promedio'),
('rotacion_proveedores',  'Rotación de Proveedores',      'actividad',     'x',    'Compras / CXP Promedio'),

-- Módulo: Rentabilidad
('margen_bruto',          'Margen Bruto',                 'rentabilidad',  '%',    '(Ventas - Costo) / Ventas × 100'),
('margen_operacional',    'Margen Operacional',           'rentabilidad',  '%',    'Utilidad Operacional / Ventas × 100'),
('margen_neto',           'Margen Neto',                  'rentabilidad',  '%',    'Utilidad Neta / Ventas × 100'),
('margen_ebitda',         'Margen EBITDA',                'rentabilidad',  '%',    'EBITDA / Ventas × 100'),
('roe',                   'ROE (Retorno sobre Patrimonio)', 'rentabilidad', '%',   'Utilidad Neta / Patrimonio × 100'),
('roa',                   'ROA (Retorno sobre Activos)',  'rentabilidad',  '%',    'Utilidad Neta / Activos Totales × 100'),
('ebitda',                'EBITDA',                       'rentabilidad',  '$',    'Utilidad Operacional + Depreciación + Amortización'),
('utilidad_neta',         'Utilidad Neta',                'rentabilidad',  '$',    'Ingresos - Costos - Gastos - Impuestos'),
('utilidad_operacional',  'Utilidad Operacional',         'rentabilidad',  '$',    'Ingresos Operacionales - Costos - Gastos Operacionales'),
('ebit',                  'EBIT',                         'rentabilidad',  '$',    'Utilidad antes de intereses e impuestos'),

-- Módulo: Estructura / Solvencia
('endeudamiento_total',   'Endeudamiento Total',          'estructura',    '%',    'Pasivo Total / Activo Total × 100'),
('endeudamiento_cp',      'Endeudamiento Corto Plazo',    'estructura',    '%',    'Pasivo Corriente / Pasivo Total × 100'),
('apalancamiento',        'Apalancamiento',               'estructura',    'x',    'Activo Total / Patrimonio'),
('cobertura_intereses',   'Cobertura de Intereses',       'estructura',    'x',    'EBITDA / Gastos Financieros'),
('deuda_patrimonio',      'Deuda / Patrimonio',           'estructura',    'x',    'Pasivo Total / Patrimonio'),
('autonomia_financiera',  'Autonomía Financiera',         'estructura',    '%',    'Patrimonio / Activo Total × 100'),

-- Módulo: Solvencia
('solvencia_total',       'Solvencia Total',              'solvencia',     'x',    'Activo Total / Pasivo Total'),
('pasivo_corriente_ratio','Ratio Pasivo Corriente',       'solvencia',     '%',    'Pasivo Corriente / Activo Total × 100'),
('patrimonio_relativo',   'Patrimonio Relativo',          'solvencia',     '$',    'Patrimonio Neto del período'),
('ingresos_totales',      'Ingresos Totales',             'solvencia',     '$',    'Total de ingresos operacionales del período'),
('costos_gastos_totales', 'Costos y Gastos Totales',      'solvencia',     '$',    'Total de costos + gastos operacionales')

ON CONFLICT (indicador_key) DO NOTHING;

-- ============================================================
-- SEED DATA: Initial company (MAS CONSULTA SAS)
-- ============================================================
INSERT INTO empresas (nit, razon_social, sucursal, moneda_base, fuente_default)
VALUES ('901271750', 'MAS CONSULTA SAS', 'Bogotá', 'COP', 'siigo')
ON CONFLICT (nit) DO NOTHING;

-- ============================================================
-- HELPER FUNCTION: Update timestamp trigger
-- ============================================================
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_empresas_updated_at
    BEFORE UPDATE ON empresas
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER trg_cargas_updated_at
    BEFORE UPDATE ON cargas
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER trg_insights_updated_at
    BEFORE UPDATE ON insights_ai
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

-- ============================================================
-- VERIFICATION
-- ============================================================
DO $$
BEGIN
    RAISE NOTICE '✅ Schema liquidity created successfully';
    RAISE NOTICE '✅ Tables: empresas, cargas, indicadores, insights_ai, indicador_catalogo';
    RAISE NOTICE '✅ Indexes and constraints applied';
    RAISE NOTICE '✅ Seed data loaded (MAS CONSULTA SAS + 33 KPI catalog)';
END $$;
