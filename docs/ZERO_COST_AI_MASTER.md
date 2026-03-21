# Protocolo de "Zero-Cost AI": Maestro (Datia)
**Documento**: ZERO-COST-AI-MASTER (v2.2)
**Proyecto**: Datia Financial Intelligence
**Nivel de Documentación**: Arquitectura y Operación Senior
**Estado**: Actualizado a Identidad Corporativa Datia

---

## 1. Filosofía del Modelo "Zero-Cost AI"

### 1.1 Racional de Negocio y Eficiencia Operativa
El modelo **Zero-Cost AI** nace de una decisión estratégica fundamentada en la optimización del margen operativo y la soberanía de los datos. En un ecosistema donde las APIs de modelos de lenguaje (LLMs) imponen costos variables por cada token procesado, una arquitectura de automatización desatendida para cientos de empresas podría generar una carga financiera insostenible. Al adoptar un enfoque de "Operación Manual Asistida", eliminamos la dependencia de suscripciones externas costosas y mitigamos el riesgo de obsolescencia de modelos comerciales.

### 1.2 Definición del Rol de Especialista (Antigravity como Copiloto)
Bajo este esquema, la IA se redefine como un **Copiloto Estratégico** supervisado por un especialista humano. El especialista aporta el contexto de negocio y la ética profesional, mientras que la IA aporta la velocidad de procesamiento de texto y la capacidad de síntesis narrativa.

| Dimensión | Enfoque "Pro API" (Tradicional) | Enfoque "Zero-Cost AI" (Nuestra Estrategia) |
| :--- | :--- | :--- |
| **Costo por Carga** | Variable ($ por Token) | Fijo / Cero (Infraestructura Propia) |
| **Calidad Insight** | Genérica (Prompt Estándar) | Personalizada (Refinada por Especialista) |

---

## 2. Flujo de Trabajo Operacional (Workflow Multi-Empresa)

### 2.1 Fase de Extracción Dinámica (The Database Query)
El ciclo operativo es agnóstico a la entidad. Para cada análisis, el sistema o el especialista realiza una consulta a la base de datos (PostgreSQL/NocoDB) filtrando por `empresa_id` y el rango de `periodo_fiscal` deseado. Se debe extraer el set completo de los 33 indicadores calculados por el Worker para obtener una visión holística antes de la segmentación.

### 2.2 Ciclo de Análisis Asistido (The AI Interplay)
El especialista proporciona a la IA (Antigravity) el dataset obtenido de la BD (en formato JSON o tabla). La IA aplica el **Perfilado Automático** (identificando sector y modelo de negocio por el peso de las cuentas) para contextualizar los indicadores. El análisis no es estático; se adapta dinámicamente según los valores reales detectados en la base de datos.

| Paso | Actor | Acción Técnica | Herramienta |
| :--- | :--- | :--- | :--- |
| 1 | Sistema / Especialista | Query de Indicadores por `empresa_id` | DB (SQL / API) |
| 2 | IA (Copiloto) | Análisis de Datos Reales vs Benchmarks | Contexto Dinámico |
| 3 | Sistema | Persistencia de Insight vinculado a la Empresa | API / PostgreSQL |

---

## 3. Protocolo de Redacción de Insights (Semantic Structure)

### 3.1 Estructura Narrativa de Tres Pilares y Lenguaje Gerencial
La redacción de insights no es una tarea contable, sino una traducción de valor para la gerencia. El 100% de los textos (Micro y Macro) deben seguir la **Regla de Oro del Lenguaje No Técnico**:

1.  **Éxitos (Success Facts)**: Explicar qué está haciendo bien el negocio para generar dinero.
2.  **Riesgos (Red Flags)**: Explicar qué amenaza el bolsillo del dueño o la estabilidad de la operación.
3.  **Recomendaciones Tácticas (Action Plan)**: Pasos concretos que un CEO pueda ordenar a su equipo sin necesidad de consultar el PUC.

| Concepto Técnico | Traducción Gerencial (Mandatoria) |
| :--- | :--- |
| **Razón Corriente** | "¿Con cuánto contamos realmente para cubrir los gastos de este mes?" |
| **ROE / Rentabilidad** | "¿Cuánto dinero nos dejó realmente la inversión de los socios?" |
| **DSO / Cartera** | "¿Cuántos días tardan los clientes en pagarnos las facturas?" |
| **Apalancamiento** | "¿Qué tanto dependemos de los bancos o de otros para operar?" |
| **EBITDA** | "Dinero generado por la operación pura antes de pagar impuestos y deudas." |

**Prohibido el uso de jerga**: El uso de términos como "DSO", "Apalancamiento de 1.33x", "Insolvencia técnica" o referencias a códigos de cuentas (ej. "Cuenta 5105") es motivo de rechazo de la auditoría. El lenguaje debe ser directo, empresarial y orientado a la rentabilidad del bolsillo del dueño.

### 3.2 Tono, Estilo y Mapeo de Severidad
El tono debe ser **Ejecutivo, Objetivo y Persuasivo**. Cada afirmación debe estar respaldada por datos. El especialista asigna marcadores de severidad (`SUCCESS`, `WARNING`, `DANGER`) que activan los componentes visuales del frontend.

---

## 4. Persistencia y Carga de Inteligencia (Capa Multi-Tenant)

### 4.1 Uso de la Interfaz Administrativa
El ingreso de insights es estrictamente parametrizado. Cada registro debe estar vinculado unívocamente a un `empresa_id` y su respectiva `carga_id` para mantener la trazabilidad forense. El sistema debe validar que el `empresa_id` en la tabla de insights coincida con el origen de los datos analizados.

### 4.2 Validación de Integridad Referencial
Antes de la carga, se verifica que la empresa exista y tenga indicadores calculados para el periodo en cuestión.

| Campo en DB | Tipo | Descripción |
| :--- | :--- | :--- |
| `empresa_id` | INT | Referencia obligatoria a la entidad analizada. |
| `insight_body` | LONGTEXT | Narrativa rica con formato Markdown. |
| `status_cat` | Enum | Define el color del componente UI (SUCCESS, WARNING, DANGER). |

---

## 4. Matriz Maestra de Inteligencia (Inventario de los 44 Puntos)

Para cubrir el 100% de la interactividad dinámica del Dashboard, cada periodo requiere la generación de las siguientes piezas de inteligencia asistida:

### 4.1 Módulo: Resumen Ejecutivo ("Cómo va tu empresa")
| ID Elemento (DB) | Ubicación UI | Objetivo del Insight |
| :--- | :--- | :--- |
| `insight-liquidez-ai` | CFO Dice (Tab 1) | Dictamen macro de supervivencia y caja. |
| `insight-actividad-ai` | CFO Dice (Tab 2) | Evaluación de la velocidad operativa (Cartera/Inv). |
| `insight-rentabilidad-ai` | CFO Dice (Tab 3) | ¿El dinero rinde o se está quemando? |
| `insight-solvencia-ai` | CFO Dice (Tab 4) | Diagnóstico de blindaje patrimonial. |
| `insight-estructura-ai` | CFO Dice (Tab 5) | Calidad de la arquitectura de fondeo. |
| `action-liquidez` | Qué hacer hoy | Acción inmediata para optimizar tesorería. |
| `action-actividad` | Qué hacer hoy | Mejora en tiempos de cobro o stock. |
| `action-rentabilidad` | Qué hacer hoy | Optimización de margen o gasto. |
| `action-solvencia` | Qué hacer hoy | Gestión de pasivos y riesgo bancario. |
| `action-estructura` | Qué hacer hoy | Equilibrio entre capital propio y deuda. |
| `contexto-liquidez-ai` | Contexto Financiero | Narrativa del entorno y liquidez. |
| `impacto-cartera-ai` | Impacto de Cartera | Análisis del peso de las cuentas por cobrar. |
| `diagnostico-roe-ai` | Diagnóstico ROE | Por qué el dueño gana o pierde riqueza. |
| `posicion-financiera-status` | Mi Posición (Panel) | Estado del Perfil Crediticio (ej. Saludable). |
| `bolsillo-status` | Mi Bolsillo (Panel) | Sentimiento de la caja libre (ej. Excedente). |

### 4.2 Módulos Especializados (33 Indicadores Core)
| Módulo | Indicadores (Micro-Insights de 3 Pilares) | Cantidad |
| :--- | :--- | :--- |
| **LIQUIDEZ** | Razón Corriente, Prueba Ácida, Capital de Trabajo, Ratio de Efectivo. | 4 |
| **ACTIVIDAD** | Rot. Cartera, DSO, Rot. Inventarios, DIO, Rot. Proveedores, DPO, CCC, Rot. Activos. | 8 |
| **RENTABILIDAD** | Margen Bruto, Operativo, EBITDA, Neto, ROA, ROE, Patrimonio, Utilidad Acum. | 8 |
| **SOLVENCIA** | Deuda/Patrimonio, Multiplicador, Capitalización, Propiedad, Apalancamiento, Cobertura Interés. | 6 |
| **ESTRUCTURA** | Cobertura Cargos, DSCR, Solvencia Patrimonial, Deuda/Tangibles, Estructura Deuda, Activos Fijos, Estructura Cap. | 7 |

**TOTAL: 15 (Ejecutivos) + 33 (Técnicos) = 48 Puntos de Inteligencia por Periodo.**

---

## 5. Control de Calidad y Validación Forense (QA)

### 5.1 Protocolo Anti-Alucinaciones (The Truth Anchor)
**Regla de Oro**: Nunca permitir que la IA redacte un número que no esté presente en el dataset original. El especialista realiza un cruce de datos manual entre el texto producido y el balance de prueba.

### 5.2 Validación de Sentido Común Contable
El analista corrige el juicio de la IA basándose en la realidad pragmática de la empresa (ej. inversiones estratégicas vs fugas de caja), asegurando que las recomendaciones sean operativamente viables.

---

## 6. Escalabilidad del Modelo Manual

### 6.1 Automatización de la Extracción
Uso de scripts de soporte para generar el "Data Prompt" automáticamente. Un analista entrenado puede procesar una empresa en menos de 10 minutos, permitiendo una capacidad de 6 a 8 empresas por hora.

### 6.2 Límites de Capacidad
Al superar las 50 empresas, se recomienda segmentar clientes: análisis profundo para "Premium" y asistido rápido para clientes base.

---

## 7. Plan de Transición a Procesamiento Automático

### 7.1 Criterios de "Break-even" para Integración API
La transición a automatización completa vía API se justifica al superar las 100 empresas o cuando los prompts alcancen una madurez de error < 1%. En ese punto, el humano se desplaza hacia la auditoría estadística.

### 7.2 Mantenimiento de la Base de Conocimiento
Cada insight manual se almacena como activo de entrenamiento para futuros modelos de "Fine-Tuning", garantizando que la IA aprenda del juicio experto del especialista.

---

## 8. Control de Tokens y Segmentación Modular

Para mantener la operación en la capa "Zero-Cost" o "Low-Cost", el sistema implementa **Modular Pipeline Context**:

1. **Segmentación por Macro-Módulos**: En lugar de enviar los 33 indicadores en un solo prompt (lo que diluye la atención del modelo y aumenta el costo), el usuario divide la carga en 5 peticiones independientes (Liquidez, Actividad, Rentabilidad, Solvencia, Estructura).
2. **Contexto Efímero**: Se inyectan únicamente los valores del período actual y el comparativo inmediato, reduciendo drásticamente el costo por cada "petición modular".
3. **Control de Output**: Al forzar la estructura de 3 pilares, se garantiza un gasto de tokens predecible y de alto valor por cada KPI procesado.
4. **Protección de API y Estabilidad**: El sistema exige un flujo de **Inyección Dilatada** (pausas entre ráfagas) para evitar el desbordamiento de los servicios de base de datos durante cargas masivas (históricos multianuales de 600+ registros).

---

> [!IMPORTANT]
> **Certificación Final**: Protocolo de Zero-Cost AI completado. Inteligencia operativa de alto impacto y bajo costo lista para ejecución.

