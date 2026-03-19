# Guía de Aplicación: Generación de Insights con IA (Zero-Cost Protocol)

Para generar e inyectar los insights en la base de datos siguiendo el protocolo de auditoría, sigue este flujo de trabajo asistido. Este proceso garantiza que la IA (Antigravity) actúe como tu analista senior, pero los datos queden registrados formalmente en PostgreSQL.

## Paso 1: Extracción de Datos Críticos
Primero, necesitas ver los KPIs que el sistema acaba de calcular. Puedes consultarlos en tu Dashboard o mediante el siguiente snapshot (Ejemplo con datos de la prueba ácida):

| Indicador | Valor | Período | Módulo |
| :--- | :--- | :--- | :--- |
| **Apalancamiento** | 155.98x | Dic 2023 | Estructura |
| **Razón Corriente** | 1.25x | Dic 2024 | Liquidez |

## Paso 2: Generación del Insight Segmentado (Modular Control)
Para optimizar el consumo de tokens y mantener el foco analítico, **segmenta tu petición por macro-módulos**. Elige uno de los 5 módulos:

1. **Liquidez** | 2. **Rentabilidad** | 3. **Solvencia** | 4. **Actividad** | 5. **Estructura**

**Ejemplo de Prompt Modular:**
> "Analiza el módulo de **RENTABILIDAD** para [CLIENTE_ENTITY] en Dic 2024. Aquí están los datos clave del bloque: Margen EBITDA 12%, Margen Neto 5%, ROE 18%. Compara con benchmarks y genera insights de 3 pilares."

## Paso 3: Perfilamiento Automático del Sector (SIIGO Data)
Para que los insights sean precisos y los benchmarks (ej. margen ideal) se ajusten a la realidad, la IA debe inferir el **Sector Económico** de la empresa analizando la balanza de comprobación (datos SIIGO).

Agrega esta instrucción al contexto inicial de la IA antes de pedirle que analice los módulos:

```text
INSTRUCCIÓN DE PERFILAMIENTO:
Eres un auditor forense. Antes de generar insights, analiza la balanza de comprobación (Master Account / Movimientos SIIGO) para inferir el sector de la empresa:

1. ¿Es Comercial, Manufactura o Servicios?
   - Si la cuenta 1435 (M. no fabricadas) tiene saldo alto -> COMERCIAL.
   - Si la cuenta 1410/1430 (Productos en proceso/terminados) tiene saldo -> MANUFACTURA.
   - Si no hay cuenta 14 (Inventarios) -> SERVICIOS.
   
2. ¿Qué tipo de servicios/comercio?
   - Revisa las subcuentas de ingresos (41XX). El nombre de la cuenta 41 (ej. "4155 - Actividades Inmobiliarias") te dará el sector exacto.

3. Contexto Macro y Regulatorio (Inyección Externa):
   - Además de los datos de SIIGO, DEBES solicitar y considerar el contexto macroeconómico actual de Colombia (Tier 1 Data):
     * Tasa de Intervención del Banco de la República (impacta costo de deuda).
     * Inflación / IPC (impacta precios y salarios).
     * Tasa de Usura (límite legal para endeudamiento o crédito a clientes).

5. Lenguaje No Técnico (Gerencial):
   - **REGLA DE ORO**: Un Gerente General debe entender qué pasa con su dinero sin tener a un contador al lado.
   - Prohibido el uso de jerga: "Cuenta 5105", "DSO", "Apalancamiento de 1.33x", "Insolvencia técnica".
   - Usa términos de negocio:
     * En lugar de "Razón Corriente" -> "¿Con cuánto contamos realmente para cubrir los gastos de este mes?".
     * En lugar de "ROE / Rentabilidad" -> "¿Cuánto dinero nos dejó realmente la inversión de los socios?".
     * En lugar de "DSO / Cartera" -> "¿Cuántos días tardan los clientes en pagarnos las facturas?".
     * En lugar de "Apalancamiento" -> "¿Qué tanto dependemos de los bancos o de otros para operar?".
     * En lugar de "EBITDA" -> "Dinero generado por la operación pura antes de impuestos y deudas".
   - Tu lenguaje debe ser directo, empresarial y orientado a la rentabilidad del bolsillo del dueño.

6. Extensión y Formato (50 Palabras):
   - Cada bloque de análisis (`analisis_positivo`, `analisis_negativo`) y la `recomendacion` DEBE tener una extensión de **aproximadamente 50 palabras**.
   - Esto garantiza que el insight tenga suficiente peso analítico pero sea lo suficientemente conciso para una lectura rápida por parte de la gerencia.
   - Evita respuestas de una sola frase o párrafos excesivamente largos.

7. Perfil de la Operación (Contexto para Terceros):
   - Al inicio del reporte, la IA debe generar un breve párrafo descriptivo (2-3 líneas) explicando a qué se dedica la empresa basándose en sus principales fuentes de ingreso (Cuenta 41) y sus mayores rubros de gasto/costo.
   - Ejemplo: "Empresa dedicada a la consultoría B2B. Su principal fuente de ingresos son las asesorías financieras (80% de ventas). Su mayor peso operativo es la nómina de especialistas (Cuenta 5105), representando el 60% de sus salidas de efectivo, lo que define una estructura ligera en activos fijos pero muy dependiente del capital humano."

Una vez deduzcas el sector y cruces con la realidad macroeconómica, ajusta tus recomendaciones financieras. Utiliza el modelo DuPont en tu análisis interno, pero explícalo en lenguaje simple (ej. "ganamos plata por margen, no por volumen"). Las recomendaciones deben mencionar la acción de negocio, aunque referencies la cuenta contable (ej. "Acelera el cobro de facturas atrasadas de clientes (Cuenta 1305)").
```

## Paso 4: Inyección en la Base de Datos
Una vez tengas el texto dictaminado de los 3 pilares, debes insertarlo en la tabla `insights_ai`. Aquí tienes el script SQL listo para ejecutar en tu consola de PostgreSQL (o vía NocoDB):

```sql
-- Inserción de Insight Maestro: Apalancamiento Crítico
INSERT INTO liquidity.insights_ai (
    empresa_id, 
    indicador_key, 
    periodo_ano, 
    tipo, 
    analisis_positivo, 
    analisis_negativo, 
    recomendacion, 
    metodologia
) VALUES (
    1, 
    'apalancamiento', 
    2023, 
    'danger', 
    'El negocio está operando a una escala muy grande utilizando principalmente dinero que no es propio. Esto es excelente para crecer rápido usando recursos de terceros, ya que permite que la empresa mantenga sus proyectos activos y su operación funcionando sin que los dueños tengan que poner todo el capital de su propio bolsillo.', 
    'Sin embargo, esta situación es riesgosa porque por cada peso que los dueños han puesto, el negocio debe más de 150 pesos a otros. Si las ventas bajan o los pagos se retrasan, la empresa tendría serias dificultades para cumplir con sus compromisos, poniendo en peligro la estabilidad y el control total de la operación.', 
    'Es urgente inyectar capital propio o dejar gran parte de las utilidades dentro del negocio para fortalecer el patrimonio de los socios. También debemos buscar que los proveedores nos den más plazo para pagarles, evitando así que el negocio dependa tanto de deudas que generen presión inmediata sobre la caja diaria.', 
    'Protocolo de 50 palabras - Lenguaje Gerencial (Auditado)'
) ON CONFLICT DO NOTHING;
```

## Paso 4: Visualización en el Tablero SPA
Tras ejecutar el SQL, el Dashboard refrescará automáticamente los modales de "Insights" para mostrar esta narrativa técnica al CFO.

### 4.1 Overlays estilo TV (Glassmorphism)
Los insights ya no se muestran como alertas simples. El sistema utiliza una capa de **Overlay Ejecutivo** con:
- Fondo glaciar/vidrio (`backdrop-filter`) para no perder de vista las gráficas de fondo.
- Tipografía en gris oscuro (#475569) para máxima legibilidad.
- Botones de acción contextuales según la criticidad (Positivo, Alerta, Acción).

### 4.2 Dictamen Horizontal (Layout Lean)
El análisis final consolidado se presenta en la sección de cierre con una estructura horizontal bi-columna:
- **Columna Izquierda (Riesgos)**: Iconografía de alta definición para identificar amenazas de liquidez.
- **Columna Derecha (Modelo de Negocio)**: Renderizado Markdown del dictamen completo.
- **Firma Certificada**: Timestamp automático y sello de auditoría financiera.

---
> [!IMPORTANT]
> **Consistencia Visual**: Al generar insights, recuerda que el espacio en los overlays es premium. Sé directo y evita repetir datos que ya son evidentes en las gráficas superiores.
> 
> [!TIP]
> **Automatización**: Si deseas procesar todos los 33 indicadores de un golpe, puedo generarte el script SQL masivo ahora mismo basándome en los datos de la base de datos si me confirmas el acceso.

