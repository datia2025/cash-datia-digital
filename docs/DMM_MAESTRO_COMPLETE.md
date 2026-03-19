# Diccionario de Datos y Diccionario de Metadatos (Maestro)
**Documento**: DMM-MAESTRO-FINAL
**Proyecto**: Liquidity Dashboard — Automation Suite
**Nivel de Documentación**: Experto / Auditoría Senior
**Estado**: Completado

---

## 1. Fundamentos y Gobierno de Datos

### 1.1 Visión MDM (Master Data Management)
El sistema adopta una arquitectura de **Única Fuente de Verdad (SSOT)**. Esto significa que ningún dato visualizado en el dashboard debe existir fuera de la base de datos PostgreSQL una vez finalizado el ciclo ETL. 
- **Centralización**: El `Master Account` (Excel) actúa como el maestro de referencia para la clasificación, pero una vez cargado, PostgreSQL asume la custodia soberana de la taxonomía contable para ese período.
- **Inmutabilidad**: Los datos de la tabla `indicadores` no se editan manualmente; cualquier corrección requiere una nueva carga (`re-run`) para mantener la trazabilidad.

### 1.2 Alcance de Datos Críticos (Critical Data Elements - CDE)
Se han identificado los siguientes elementos cuyo fallo de integridad comprometería el negocio:
| CDE ID | Nombre del Elemento | Impacto en Negocio |
| :--- | :--- | :--- |
| **CDE-01** | `puc_code` | Un código mal mapeado desplaza saldos entre activos y pasivos. |
| **CDE-02** | `valor_neto` | La precisión decimal es crítica para la reconciliación de balance. |
| **CDE-03** | `periodo_fiscal` | Determina la comparatividad interanual. |

### 1.3 Objetivos de Calidad de Datos (Data Quality Framework)
El sistema implementa cinco pilares de calidad:
1.  **Completitud**: Verificación de que todos los meses del año solicitado estén presentes.
2.  **Validez**: Los códigos contables deben cumplir con la estructura del PUC colombiano (8 dígitos base).
3.  **Unicidad**: No se permiten dos indicadores del mismo tipo para la misma empresa en el mismo mes/año.
4.  **Consistencia**: El saldo final de un mes debe ser el saldo inicial del siguiente (validación técnica interna).
5.  **Precisión**: Tolerancia de error matemática < 0.0001% vs Ground Truth.

---

## 2. Vista Física: Modelo General PostgreSQL

### 2.1 Diagrama Entidad-Relación (Estructura de Bajo Nivel)
El motor utiliza un esquema relacional normalizado para optimizar la velocidad de lectura del Dashboard (JS `fetch` calls).

-   **Empresas (1) ➔ Cargas (N)**: Una empresa sube múltiples históricos.
-   **Cargas (1) ➔ Indicadores (N)**: Cada ejecución del Python Worker genera un set de 33 KPIs.
-   **Empresas (1) ➔ Insights_AI (N)**: Los análisis narrativos persisten por empresa y período.

### 2.2 Estrategia de Indexación (Performance Ops)
Para garantizar tiempos de respuesta < 200ms en el Dashboard:
-   **B-Tree Index (`idx_indicadores_emp_periodo`)**: Compuesto por `empresa_id` + `periodo_año` + `periodo_mes`. Optimiza las consultas de series de tiempo.
-   **B-Tree Index (`idx_insights_key`)**: En `indicador_key`, para acelerar la carga de modales narrativos.
-   **Unique Constraint**: En `indicadores(empresa_id, periodo_año, periodo_mes, indicador_key)` para prevenir duplicidad física.

### 2.3 Restricciones de Dominio (Check Constraints)
Reglas "Hard-Coded" en la BD para evitar corrupción:
-   `CONSTRAINT val_año CHECK (periodo_año BETWEEN 2000 AND 2100)`
-   `CONSTRAINT val_mes CHECK (periodo_mes BETWEEN 1 AND 12)`
-   `CONSTRAINT val_valor_numeric CHECK (valor IS NOT NULL)`

---

## 3. Catálogo Técnico de Metadatos (Physical Fields Specification)

### 3.1 Tabla: `empresas` (Maestro Core)
| Nombre Técnico | Tipo Postgres | Nullable | Descripción / Metadato |
| :--- | :--- | :--- | :--- |
| `id` | SERIAL | NO | Primary Key autoincremental. |
| `nit` | VARCHAR(20) | NO | Identificación fiscal (Unique Index). |
| `razon_social` | TEXT | NO | Nombre legal completo. |
| `sucursal` | VARCHAR(100) | SÍ | Ciudad o sede operativa. |
| `moneda_base` | VARCHAR(3) | NO | Default 'COP'. ISO 4217. |
| `fuente_default` | VARCHAR(20) | SÍ | Fuente contable predominante (ej: 'siigo'). |

### 3.2 Tabla: `cargas` (Estado de Ingesta)
| Nombre Técnico | Tipo Postgres | Nullable | Descripción / Metadato |
| :--- | :--- | :--- | :--- |
| `id` | SERIAL | NO | PK de rastreo de proceso. |
| `empresa_id` | INT | NO | FK ➔ `empresas(id)`. |
| `fecha_upload` | TIMESTAMP | NO | Generado automáticamente al subir archivo. |
| `fuente_sistema`| VARCHAR(20) | NO | Metadata para el Driver (`siigo`, `sap`, etc.). |
| `hash_archivo` | VARCHAR(64) | SÍ | Hash SHA-256 para evitar reprocesar el mismo binario. |
| `estado` | VARCHAR(20) | NO | Enum: `pending`, `processing`, `success`, `error`. |

### 3.3 Tabla: `indicadores` (Data Warehouse Table)
| Nombre Técnico | Tipo Postgres | Nullable | Descripción / Metadato |
| :--- | :--- | :--- | :--- |
| `id` | BIGSERIAL | NO | PK (Uso de BigSerial por volumen de KPIs). |
| `carga_id` | INT | NO | FK ➔ `cargas(id)`. Identifica el origen exacto. |
| `indicador_key` | VARCHAR(50) | NO | Slug técnico (ej: `ratio_cobertura_interes`). |
| `valor` | NUMERIC(18,4) | NO | Valor matemático final (Alta precisión). |
| `unidad` | VARCHAR(10) | NO | Metadato de presentación: `%`, `$`, `x` (veces). |

### 3.4 Tabla: `insights_ai` (Capa de Inteligencia Manual-AI)
| Nombre Técnico | Tipo Postgres | Nullable | Descripción / Metadato |
| :--- | :--- | :--- | :--- |
| `id` | SERIAL | NO | PK. |
| `indicador_key` | VARCHAR(50) | NO | Cruce semántico con la tabla de `indicadores`. |
| `tipo_hallazgo` | VARCHAR(20) | NO | Metadata de color: `success`, `warning`, `danger`. |
| `narrativa_pos` | TEXT | SÍ | Análisis de fortalezas identificado por Antigravity. |
| `narrativa_neg` | TEXT | SÍ | Análisis de riesgos o debilidades críticas. |
| `recomendacion` | TEXT | SÍ | Acción sugerida por el experto contable/AI. |

---

> [!CAUTION]
> **Integridad Referencial**: No se permite eliminar una fila en `empresas` si existen registros en `indicadores` (Restrict). Solo se permite el borrado de `cargas` en modo cascada hacia sus propios `indicadores`.

---

## 4. Especificación Técnica de Insumos (Interface Driver Spec)

Esta sección define el contrato de entrada para los archivos "Raw" que el sistema debe procesar. Como consultores senior, establecemos que el sistema no lee archivos; lee **estructuras validadas**.

### 4.1 Driver Siigo: Estructura de `Movimiento.csv`
El archivo extraído de Siigo presenta un formato no estándar que requiere un pre-procesamiento agresivo.

| Atributo Técnico | Valor / Regla |
| :--- | :--- |
| **Encoding** | `UTF-8` con detección automática de `ANSI` (fallthrough). |
| **Header Offset** | 7 líneas (Se deben ignorar las primeras 7 filas de títulos y metadatos del reporte). |
| **Delimitador** | Coma (`,`). Nota: Los campos numéricos pueden contener comas internas si no están bien calificados. |
| **Calificador de Texto** | Comillas dobles (`"`). |
| **Clave Primaria Interna** | `Secuencia` (Columna 0) + `Fecha` (Columna 1). |

**Mapeo de Columnas Críticas (Siigo Original):**
-   **Col 2 (`Código`)**: Referencia cruzada con el PUC. Debe ser numérico, pero se trata como String para preservar ceros a la izquierda.
-   **Col 10-11 (`Débito/Crédito`)**: Formato `1,234.56` o `1234,56` según regional. El Driver debe normalizar a `float64` antes de entrar al motor.

### 4.2 Driver Maestro: `Master Account.xlsx`
Este archivo es la "Piedra Roseta" del sistema. No es solo un catálogo, es una matriz de inteligencia financiera.

**Hoja `Accounts` (Campos Mandatorios):**
-   **Column B (`Código`)**: Referencia de 4 a 10 dígitos.
-   **Column R (`EBITDA`)**: Valores válidos: `SI`, `NO`, `EX`. Si está vacío, se asume `NO`.
-   **Column M (`Tipo M`)**: Define si la cuenta impacta Balance (Acumulativo) o P&L (Flujo Mensual).

---

## 5. Capa de Normalización y Transformación (Normalización Driver)

El sistema implementa una **Capa Intermedia de Datos (Data Landing Layer)**. Antes de que el `calculate_indicators.py` vea los datos, estos pasan por un proceso de "Lavado y Planchado" (ETL).

### 5.1 Transformación de Atributos (Source to Canonical)
Independientemente de la fuente (Siigo, SAP, etc.), el sistema transforma los datos al **Esquema Canónico de Antigravity**:

| Atributo Fuente | Atributo Canónico | Lógica de Transformación |
| :--- | :--- | :--- |
| `Código contable` | `puc_id` | `strip().ljust(10, '0')` si se requiere normalización de longitud. |
| `Débito` - `Crédito` | `net_flow` | `float(val_d.replace(',','')) - float(val_c.replace(',',''))`. |
| `Descripción` | `is_closing_998`| `regex_search("998|cierre|ajuste", desc)`. |

### 5.2 Saneamiento de Datos (Data Cleansing)
1.  **Detección de Vacíos**: Si una fila no tiene `Código`, se descarta y se registra en el log de auditoría.
2.  **Unificación de Fechas**: Conversión de `DD/MM/YYYY` a un objeto `DateTime` de Python para asegurar que `Enero` sea `1` y no `0`.
3.  **Tratamiento de Comprobante 998**: 
    -   *Regla de Oro*: Los movimientos de cierre anual se segregan por fecha `31/12`. Si el comprobante es `998`, el dato se etiqueta como "Solo Cierre" para no contaminar el cálculo de EBITDA operacional.

### 5.3 Lógica de Agnosticismo (Future-Proofing)
El driver de Siigo es el primero de una serie de clases `BaseParser`. Cuando se agregue **SAP**, se creará un `SAPParser` que simplemente mapeará las columnas de SAP al mismo **Esquema Canónico**. Esto garantiza que la lógica de los 33 indicadores sea **100% reutilizable** sin cambios.

---

> [!TIP]
> **QA Insight**: Al normalizar el dato *antes* de guardarlo en PostgreSQL, aseguramos que el Dashboard no tenga que hacer cálculos complejos, solo mostrar valores. La inteligencia se queda en la capa de normalización.

---

## 6. Diccionario Semántico (Glosario de Indicadores)

Esta sección define el significado de los datos de salida para que el usuario final y los auditores entiendan qué representa cada `indicador_key`.

### 6.1 Módulo: Liquidez y Solvencia
-   **`razon_corriente`**: Capacidad de la empresa para cubrir sus obligaciones de corto plazo con sus activos corrientes. 
    -   *Umbral QA**: Valores < 1.0 alertan riesgo de insolvencia técnica.
-   **`prueba_acida`**: Medida de liquidez inmediata que excluye inventarios (Activos Corrientes - Inventarios / Pasivos Corrientes).
-   **`ratio_efectivo`**: El indicador más conservador; solo considera Caja, Bancos e Inversiones Temporales vs Pasivo Corriente.

### 6.2 Módulo: Actividad y Ciclo de Conversión
-   **`dso` (Days Sales Outstanding)**: Días promedio de recuperación de cartera. Cruzado entre Saldo de CXC y Ventas Netas.
-   **`dio` (Days Inventory Outstanding)**: Días que el inventario permanece en bodega. Basado en Saldo de Inventarios y Costo de Ventas.

### 6.3 Módulo: Rentabilidad (Performance)
-   **`utilidad_neta`**: Resultado final del período (Ingresos - Gastos - Costos - Impuestos).
-   **`ebitda`**: Capacidad operativa de generar caja antes de amortizaciones, depreciaciones e impuestos.

---

## 7. Protocolos de Validación QA (DQ Rules)

El sistema implementa un **Círculo de Verificación Tripartito** para asegurar precisión 100%.

### 7.1 Validación de Reconciliación Contable (Rule DQ-01)
Al final de cada carga, se ejecuta un balance de prueba virtual:
-   **Fórmula**: `ABS(Total_Activo - (Total_Pasivo + Total_Patrimonio)) < 0.01`
-   **Fallo**: Si la diferencia es mayor a un centavo, la carga se etiqueta como `ERROR: Balance Descuadrado` y no se visualiza en el Dashboard.

### 7.2 Validación de Variación Abrupta (Rule DQ-02)
-   **Lógica**: Si un indicador (ej. Ventas) varía más del 200% respecto al mes anterior sin un cambio en el capital, el sistema genera un metadato de "Anomalía Estadística". 
-   **Propósito**: Identificar errores de digitación en la fuente original.

### 7.3 Verificación de Cobertura PUC (Rule DQ-03)
-   El sistema reporta el `% de Cobertura`: `Cuentas_Mapeadas / Cuentas_Totales_en_CSV`. 
-   **Meta**: Debe ser 100%. Si hay cuentas no mapeadas, se listan en el reporte de excepciones.

---

## 8. Seguridad y Ciclo de Vida del Dato

### 8.1 Trazabilidad (Data Lineage)
Cada registro en la tabla `indicadores` tiene un `carga_id`. Esto permite hacer "Drill-Down":
1.  Ver el número en el Dashboard.
2.  Consultar el `carga_id` en PostgreSQL.
3.  Localizar el archivo original `.csv` en el almacenamiento persistente para auditoría manual.

### 8.2 Política de Retención y Purga
-   **Datos en Caliente (PostgreSQL)**: Permanecen activos mientras el cliente sea usuario del dashboard.
-   **Archivos Raw (CSV/XLSX)**: Se archivan en volúmenes protegidos por 5 años (Requisito legal contable en Colombia).
-   **Logs de Error**: Se purgan automáticamente cada 90 días.

### 8.3 Privacidad del Dato Financiero
-   Los datos se almacenan de forma aislada por `empresa_id`. 
-   El acceso API requiere un token JWT firmado que vincula al usuario con su respectiva empresa, impidiendo fugas de datos multi-tenancy.

---

> [!IMPORTANT]
> **Certificación de Documentación**: Este Diccionario de Datos y Metadatos cumple con los estándares para procesos de Due Diligence y auditorías de revisoría fiscal externa.

