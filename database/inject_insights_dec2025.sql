-- ============================================================
-- SQL SCRIPT: INYECCIÓN DE AI INSIGHTS (LENGUAJE GERENCIAL)
-- EMPRESA: MAS CONSULTA SAS (ID: 1)
-- PERIODO: DICIEMBRE 2025 (ESTÁNDAR 50 PALABRAS)
-- ============================================================

SET search_path TO liquidity;

-- Limpieza preventiva
DELETE FROM insights_ai WHERE empresa_id = 1 AND periodo_ano = 2025 AND indicador_key IN ('liquidez', 'actividad', 'rentabilidad', 'solvencia', 'estructura');

-- 1. LIQUIDEZ (Dinero disponible)
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (1, 'liquidez', 2025, 'success', 
'Contamos con una excelente capacidad para cubrir los gastos del mes, teniendo más de 5 pesos guardados por cada peso que debemos pagar pronto. Los 35 millones de capital libre y el dinero en bancos nos dan total tranquilidad para pagar salarios y servicios sin depender de préstamos nuevos o urgencias.',
'A pesar de tener mucha caja, el dinero en bancos ha bajado un poco recientemente comparado con meses anteriores. Si dejamos demasiado dinero quieto sin que rinda, estamos perdiendo la oportunidad de ponerlo a trabajar, especialmente cuando el mayor compromiso mensual sigue siendo el pago oportuno de nuestro equipo humano.',
'Podemos aprovechar el exceso de dinero para pagar deudas que cobren intereses caros o invertir en proyectos de crecimiento. Debemos vigilar que el dinero acumulado no se pierda en gastos innecesarios, manteniendo siempre fondos para operar frescos durante los próximos 45 días sin depender de que los clientes nos paguen.',
'Protocolo 50 Palabras - Lenguaje Gerencial');

-- 2. ACTIVIDAD (Velocidad del negocio)
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (1, 'actividad', 2025, 'warning', 
'Los clientes están tardando 64 días en pagarnos, un ritmo que es aceptable pero que requiere atención para que no se nos quede el dinero atrapado. Estamos logrando que las facturas de consultoría se conviertan en efectivo de forma constante, lo que permite que el negocio siga operando y fluyendo normalmente.',
'Hay un problema de balance: nosotros le pagamos a todo el mundo de inmediato (0 días de plazo), pero los clientes se toman dos meses completos para pagarnos. Esto significa que estamos financiando la operación con nuestra propia plata, lo que genera una presión innecesaria sobre el bolsillo de los dueños.',
'Es urgente pedirle a los proveedores que nos den más plazo para pagar, así no sacamos dinero de nuestra caja tan rápido mientras esperamos que los clientes nos paguen. Podríamos ofrecer pequeños descuentos a los clientes que paguen antes de tiempo para traer dinero rápido al negocio hoy mismo.',
'Protocolo 50 Palabras - Lenguaje Gerencial');

-- 3. RENTABILIDAD (Ganancia final)
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (1, 'rentabilidad', 2025, 'danger', 
'El negocio está dejando ganancias reales después de todos los gastos, lo cual es muy bueno considerando la situación económica actual. Logramos que una parte del dinero que entra se quede en el bolsillo de los dueños al final del año, protegiendo así el valor de la empresa frente a la inflación.',
'Aunque ganamos dinero, el margen es muy pequeño y los gastos de oficina y personal se están comiendo casi todo lo que cobramos. El dinero que los socios han invertido no está rindiendo lo suficiente; de hecho, está rindiendo menos que si lo tuviéramos guardado en una cuenta básica.',
'Debemos revisar a fondo en qué se nos está yendo el dinero del día a día, especialmente en gastos de oficina y sueldos innecesarios. Si ajustamos un poco los precios de nuestros servicios y controlamos los gastos del equipo humano, la ganancia final para los socios será mucho más grande.',
'Protocolo 50 Palabras - Lenguaje Gerencial');

-- 4. SOLVENCIA (Salud de la propiedad)
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (1, 'solvencia', 2025, 'success', 
'El negocio está muy sano y le debe muy poco a los bancos u otros externos. Casi todo lo que tiene la empresa le pertenece totalmente a los socios, lo que nos da una libertad enorme para tomar decisiones y nos permite pedir préstamos grandes en el futuro si decidimos crecer rápido.',
'Aunque no tenemos deudas grandes, la operación hoy no es capaz de pagar intereses por sí sola porque los gastos fijos son muy altos. Si pidiéramos un préstamo hoy, sería muy difícil pagarlo con lo que el negocio produce mensualmente, lo que limitaría nuestra capacidad de reaccionar ante una emergencia.',
'No es momento de pedir dinero prestado al banco mientras los gastos sigan siendo altos. Lo mejor es guardar las utilidades que nos queden para que la empresa sea cada vez más sólida y propia. Nuestra fuerza hoy es que no dependemos de nadie de afuera para poder seguir funcionando.',
'Protocolo 50 Palabras - Lenguaje Gerencial');

-- 5. ESTRUCTURA (De quién es el negocio)
INSERT INTO insights_ai (empresa_id, indicador_key, periodo_ano, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (1, 'estructura', 2025, 'success', 
'La empresa se financia casi en su totalidad con el dinero de los dueños, lo cual evita que gente de afuera pueda decirnos qué hacer con el negocio. Esta estabilidad es muy valiosa porque nos permite movernos rápido sin miedo a que un banco nos presione por falta de pagos.',
'Estamos siendo demasiado conservadores al usar solo nuestra propia plata. Al no pedir plazos a los proveedores, no estamos aprovechando el dinero de otros para crecer más rápido sin costo. Usar el 100% de capital propio es muy seguro, pero hace que la riqueza de los socios crezca lento.',
'Podemos mejorar el negocio si aprendemos a usar más el crédito "gratis" que nos pueden dar los proveedores. Si les pagamos con más días de plazo, podemos usar nuestro propio dinero para nuevos proyectos sin arriesgar la propiedad de la empresa ni tener que pagar intereses a los bancos.',
'Protocolo 50 Palabras - Lenguaje Gerencial');
