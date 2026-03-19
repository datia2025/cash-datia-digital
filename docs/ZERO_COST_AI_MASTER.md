# Protocolo de "Zero-Cost AI": Maestro (Completo)
**Documento**: ZERO-COST-AI-MASTER
**Proyecto**: Liquidity Dashboard — Automation Suite
**Nivel de Documentación**: Experto Senior (20 años de experiencia)
**Estado**: Completado

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

## 2. Flujo de Trabajo Operacional (Workflow Step-by-Step)

### 2.1 Fase de Extracción y Preparación (The Data Feed)
El ciclo comienza una vez que el Python Worker ha finalizado el cálculo. El especialista utiliza NocoDB para extraer el "Snapshot del Mes", curando solo los indicadores con variaciones atípicas. Esta fase garantiza que la IA reciba solo señales de alta calidad, evitando el ruido de registros irrelevantes.

### 2.2 Ciclo de Análisis Asistido (The AI Interplay)
El especialista interactúa con la interfaz de IA (Antigravity) inyectando el contexto de la empresa. Utilizando la metodología de **Few-Shot Prompting**, la IA imita el tono técnico requerido. El especialista dirige el análisis, ajustando las recomendaciones en tiempo real.

| Paso | Actor | Acción Técnica | Herramienta |
| :--- | :--- | :--- | :--- |
| 1 | Especialista | Consulta de Indicadores Críticos | NocoDB / SQL |
| 2 | IA (Copiloto) | Análisis de Tendencias y Anomalías | Interfaz Chat |
| 3 | Sistema | Carga de Insight Final a la DB | API / NocoDB |

---

## 3. Protocolo de Redacción de Insights (Semantic Structure)

### 3.1 Estructura Narrativa de Tres Pilares
Los insights deben adherirse estrictamente a tres pilares:
1.  **Éxitos (Success Facts)**: Refuerza las victorias operativas.
2.  **Riesgos (Red Flags)**: Identifica puntos de presión sin alarmismo.
3.  **Recomendaciones Tácticas (Action Plan)**: Pasos concretos y ejecutables.

### 3.2 Tono, Estilo y Mapeo de Severidad
El tono debe ser **Ejecutivo, Objetivo y Persuasivo**. Cada afirmación debe estar respaldada por datos. El especialista asigna marcadores de severidad (`SUCCESS`, `WARNING`, `DANGER`) que activan los componentes visuales del frontend.

---

## 4. Persistencia y Carga de Inteligencia (Capa API)

### 4.1 Uso de la Interfaz Administrativa
El ingreso de insights se realiza vía **NocoDB** o el endpoint de la API. Cada registro debe estar vinculado unívocamente a un `empresa_id` y `periodo_fiscal` para evitar solapamientos.

### 4.2 Validación de JSON Schema
La narrativa debe cumplir con el contrato de API, incluyendo el campo de `severidad` y formateo en **Markdown** para asegurar un renderizado rico en el dashboard del cliente.

| Campo en DB | Tipo | Descripción |
| :--- | :--- | :--- |
| `insight_body` | LONGTEXT | Narrativa rica con formato Markdown. |
| `status_cat` | Enum | Define el color del componente UI. |

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

---

> [!IMPORTANT]
> **Certificación Final**: Protocolo de Zero-Cost AI completado. Inteligencia operativa de alto impacto y bajo costo lista para ejecución.

