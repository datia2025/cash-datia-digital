-- =============================================
-- PROYECTO: Datia Liquidity Dashboard
-- EMPRESA: CARLOS TAMAYO Y ASOCIADOS S.A.S. (ID 3099)
-- MÓDULO: ACTIVIDAD - BLOQUE C (AUDITORÍA TRIMESTRAL)
-- LOTE 1: 2023 Q4 (8 REGISTROS)
-- ESTÁNDAR: GERENCIA-A-GERENCIA (+40 PALABRAS)
-- =============================================

--------------------------------------------------------------------------------
-- LOTE 1: 2023 Q4 (Cierre de Año Inicial)
--------------------------------------------------------------------------------

-- 1. Ciclo de Conversión de Efectivo (2023 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ciclo_conversion_efectivo_4Q', 2023, '4Q', 'success',
'Has cerrado el último tramo del 2023 con un dinamismo impresionante en tu ciclo de caja, logrando que el dinero retorne a tu bolsillo en menos de tres días. Esta velocidad es tu mayor activo estratégico hoy, ya que te permite operar prácticamente en tiempo real, financiando tu crecimiento con tu propia facturación sin depender de terceros.',
'A pesar de este número tan bajo, una velocidad tan extrema indica que tu operación está trabajando bajo una presión de flujo constante que no permite errores. Cualquier retraso pequeño en un proceso administrativo podría romper este equilibrio tan frágil, dejándote sin margen de maniobra para enfrentar gastos imprevistos que siempre surgen al finalizar cualquier ejercicio anual.',
'Te sugiero que aproveches esta agilidad para construir un fondo de reserva operativa que te proteja ante futuros estiramientos del ciclo. No te confíes de estos tres días permanentes; busca estabilizar tus procesos de recaudo para que, incluso si el mercado se pone lento, tu empresa siga teniendo la misma capacidad de respuesta inmediata que hoy ostentas.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 2. Días de Cartera - DSO (2023 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dso_4Q', 2023, '4Q', 'success',
'Lograste que tus clientes te paguen en menos de veinte días durante este cierre de año, lo cual es un hito de gestión excepcional para una firma de consultoría. Esta disciplina en el recaudo asegura que el valor de tus servicios se convierta en liquidez tangible rápidamente, evitando que tu riqueza se quede dormida en facturas por cobrar.',
'Sin embargo, al tener un plazo de cobro tan corto, podrías estar limitando tu capacidad de atraer a clientes corporativos más grandes que exigen plazos de pago estándar de por lo menos treinta a cuarenta y cinco días. Estás operando en un nicho de contado que, aunque seguro, podría estar frenando tu expansión hacia mercados con tickets de venta mucho más elevados.',
'Busca un equilibrio donde puedas ofrecer plazos más competitivos a clientes estratégicos de alto nivel sin comprometer tu salud financiera actual. Podrías implementar una política de descuentos por pronto pago que mantenga tu recaudo ágil, pero que te permita sentarte a negociar con empresas del sector real que manejan ciclos de pago un poco más holgados.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 3. Días de Inventario - DIO (2023 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dio_4Q', 2023, '4Q', 'success',
'Mantener tus días de inventario en cero es la prueba reina de que tu modelo de negocio de servicios es sumamente eficiente y ligero. No tienes recursos atrapados en estanterías ni corres el riesgo de obsolescencia de materiales, lo que te otorga una ventaja competitiva de flexibilidad que muchas empresas comerciales desearían tener para su cierre anual.',
'La contraparte de esta ligereza es que tu inventario real es el tiempo de tus profesionales, y ese recurso no se puede guardar ni recuperar. Al no tener un inventario físico que liquidar en momentos de baja demanda, tu caja depende estrictamente de tu capacidad de facturación activa de servicios, lo que te hace vulnerable ante cualquier bache en las ventas.',
'Te recomiendo que enfoques tus esfuerzos en empaquetar tus conocimientos en productos digitales o metodologías estandarizadas que funcionen como activos disponibles sin depender de horas hombre. Esto te permitiría generar ingresos recurrentes sin aumentar tu estructura de costos, manteniendo la eficiencia de inventario pero escalando tu capacidad de generar valor para tus clientes en el futuro.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 4. Días de Pago - DPO (2023 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dpo_4Q', 2023, '4Q', 'success',
'Has demostrado ser un pagador puntual y confiable, cerrando el trimestre con un plazo de pago a tus aliados de solo diecisiete días. Esta reputación impecable te abre las puertas a mejores negociaciones de tarifas y asegura que tus proveedores estratégicos te den prioridad absoluta cuando necesites servicios urgentes para tus propios proyectos de consultoría estratégica.',
'Desde la óptica financiera, estás pagando demasiado rápido y regalando tu liquidez antes de tiempo. Estás financiando a tus proveedores con tu propio efectivo, mientras que ellos probablemente manejan plazos de cobro mucho más largos con otros clientes. Esta caballerosidad comercial te quita puntos de rentabilidad oculta que podrías estar aprovechando para fortalecer tu propia cuenta bancaria.',
'Mi consejo es que busques extender tus plazos de pago de manera gradual hasta alcanzar los treinta días. Comunicando esta política como un estándar de orden corporativo, podrás retener el dinero en tu bolsillo por dos semanas adicionales cada mes sin dañar tu excelente relación con los proveedores, ganando una financiación gratuita que hoy no estás utilizando.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 5. Rotación de Activos (2023 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_activos_4Q', 2023, '4Q', 'success',
'Tu capacidad para generar ingresos con los recursos que tienes invertidos en el balance se mantiene en niveles saludables para una firma que está consolidando sus cimientos. Estás logrando que cada peso invertido en tu oficina, tecnología y activos intangibles trabaje de forma constante para sostener el ritmo de facturación que te propusiste este trimestre.',
'Sin embargo, el aprovechamiento de tus activos aún está por debajo de su potencial máximo, lo que indica que tienes una capacidad instalada que no se está utilizando al cien por ciento. Tener una estructura operativa que no rota con la fuerza necesaria significa que tus costos fijos están pesando más de lo debido sobre tu utilidad neta final.',
'Debes enfocarte en incrementar tu volumen de ventas sin aumentar tu base de activos actual. Aprovecha tu infraestructura actual para atender un mayor número de clientes o proyectos simultáneos; de esta manera, tu rotación mejorará significativamente y cada activo que hoy posees se volverá mucho más rentable para tu bolsillo y el de tus socios.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 6. Rotación de Cartera (2023 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_cartera_4Q', 2023, '4Q', 'success',
'Tu dinero está volviendo a casa con una agilidad notable, logrando que tu facturación rote más de una vez y media durante estos noventa días finales del año. Posees una maquinaria de cobranza que funciona como un reloj suizo, permitiéndote cerrar el ejercicio con la tranquilidad de que el fruto de tu trabajo ya está en el banco.',
'A pesar de la excelente velocidad, esta rotación concentrada al final del año sugiere que pusiste un esfuerzo extraordinario que quizás no seas capaz de sostener de forma natural durante todos los meses del próximo ciclo. Depender de campañas de recaudo masivo de fin de año genera una incertidumbre innecesaria sobre la fluidez de tus ingresos mensuales futuros.',
'Te recomiendo que institucionalices tus procesos de seguimiento a facturas para que esta rotación de uno punto cinco veces sea tu estándar mínimo permanente. Al mantener esta disciplina de recaudo desde el primer día de enero, evitarás los baches de liquidez y permitirás que tu crecimiento sea mucho más armonioso y predecible para toda la organización.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 7. Rotación de Inventarios (2023 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_inventarios_4Q', 2023, '4Q', 'success',
'Al no manejar inventarios físicos, tu rotación contable es nula, lo que te libera de las preocupaciones logísticas y de almacenamiento que asfixian a otros sectores. Esta naturaleza de servicios puros te permite centrar toda tu energía gerencial en la calidad intelectual y en el servicio al cliente, optimizando tu tiempo para lo que realmente genera riqueza.',
'El riesgo oculto de no tener un inventario que rote es que tu estructura de ingresos es rígida y está limitada por las horas disponibles del equipo consultor. Si no estás vendiendo activamente, no tienes un stock de mercancías que puedas liquidar para obtener efectivo de emergencia, lo que te obliga a ser impecable en tu prospección comercial mensual.',
'Te sugiero que desarrolles una línea de productos de consultoría pre-configurados que funcionen como activos intangibles para la venta rápida. Aunque no sean inventarios físicos, tener propuestas listas para ser ejecutadas te dará una agilidad similar a la rotación de mercancías, permitiéndote capturar oportunidades de mercado de forma mucho más veloz y profesional que la competencia.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 8. Rotación de Proveedores (2023 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_proveedores_4Q', 2023, '4Q', 'success',
'Has mantenido una relación muy fluida con tus aliados estratégicos, rotando tus cuentas por pagar casi dos veces durante este trimestre final. Esta velocidad de pago garantiza que siempre cuentes con el apoyo de los mejores profesionales externos para tus proyectos, consolidando una red de proveedores leales que confían plenamente en tu palabra y en tu chequera.',
'Estás rotando tus pagos a una velocidad superior a la necesaria, lo que indica que estás perdiendo días de apalancamiento gratuito que tus mismos proveedores estarían dispuestos a darte. Al cerrar el año pagando todo tan rápido, estás dejando tu cuenta bancaria más desprotegida para el inicio del próximo ejercicio, donde siempre aparecen gastos anuales obligatorios.',
'Debes buscar sincronizar la rotación de tus proveedores con la rotación de tu propia cartera. Si logras que la velocidad de tus pagos sea un poco más lenta que la de tus recaudos, estarás creando un colchón de efectivo natural que se financia solo. Ajusta tus plazos para que tus proveedores se paguen con el dinero que ya recibiste de tus clientes.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

--------------------------------------------------------------------------------
-- LOTE 2: 2024 Q1 (Efecto Freno de Mano)
--------------------------------------------------------------------------------

-- 9. Ciclo de Conversión de Efectivo (2024 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ciclo_conversion_efectivo_1Q', 2024, '1Q', 'success',
'A pesar de que el inicio de año fue sumamente pesado, lograste que tu ciclo de caja bajara de casi doscientos días en enero a solo ciento veinte al cierre de marzo. Esta recuperación trimestral demuestra una capacidad de reacción administrativa muy potente, logrando que el dinero empiece a fluir de nuevo tras un primer mes de parálisis total.',
'El promedio de ciento treinta y seis días de este trimestre es una señal de alarma crítica, ya que indica que tu dinero estuvo atrapado por más de cuatro meses antes de volver a tu cuenta bancaria. Pasar de tres días en diciembre a niveles tan altos en enero es un golpe de realidad financiero que puso a prueba la supervivencia de tu operacion operativa.',
'Te recomiendo que audites por qué el inicio de año generó tal desconexión en tu flujo de recursos y que establezcas metas de recaudo mucho más estrictas para el próximo primer trimestre. No puedes permitir que tu capital se duerma durante noventa días; necesitas que el motor de cobranza arranque con la misma fuerza con la que cierras cada diciembre escolar.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 10. Días de Cartera - DSO (2024 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dso_1Q', 2024, '1Q', 'success',
'Has demostrado una voluntad de hierro para sanear tu cartera, reduciendo el tiempo de cobro de doscientos veinticuatro días a solo ciento veinticuatro en el transcurso de este primer trimestre. Lograste recuperar cien días de liquidez atrapada, lo cual es un esfuerzo administrativo titánico que le devuelve el aire necesario a tu firma para seguir creciendo.',
'No obstante, tener facturas que tardan más de cinco meses en pagarse en promedio durante este periodo es una situación insostenible para cualquier gerencia de servicios. Estás entregando tu capital intelectual a tus clientes de forma gratuita durante casi medio año, lo que erosiona tu rentabilidad y te obliga a financiarte con tus propios recursos acumulados anteriormente.',
'Es el momento de revisar tu perfil de clientes y ser mucho más selectivo con quienes no cumplen sus promesas de pago en los primeros treinta días. Implementa bloqueos de servicio automáticos para facturas con más de sesenta días de mora; tu profesionalismo merece respeto y tu caja necesita que ese dinero esté produciendo rentabilidad en tu propia cuenta.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 11. Días de Inventario - DIO (2024 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dio_1Q', 2024, '1Q', 'success',
'Tu indicador se mantiene firme en cero días, confirmando que tu firma es una organización ligera que no carga con el peso de activos físicos improductivos durante el arranque del año. Esta agilidad estructural te permite pivotar rápidamente entre diferentes tipos de servicios de consultoría sin tener que liquidar existencias antiguas o sufrir por bodegaje costoso.',
'Al no tener inventario, tu "mercancía" es la disponibilidad de tu equipo de expertos, y en este trimestre esa capacidad estuvo sub-utilizada debido a la lentitud del mercado inicial. No tener activos físicos que respalden un crédito de emergencia te obliga a ser extremadamente cuidadoso con tu flujo de caja neto, ya que no tienes bienes tangibles para vender rápido.',
'Te aconsejo que transformes esta ligereza en una oferta de servicios por suscripción mensual que asegure un flujo de caja predecible desde enero. Al no tener inventarios, puedes dedicar todo tu talento creativo a generar contratos a largo plazo que te den la seguridad financiera que hoy depende exclusivamente de facturaciones puntuales y volátiles trimestrales.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 12. Días de Pago - DPO (2024 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dpo_1Q', 2024, '1Q', 'success',
'Lograste extender un poco más tus plazos de pago en enero, llegando a veinticinco días, lo que te dio un respiro necesario durante el mes más lento del año comercial. Ser un pagador cumplido pero estratégico te ha permitido conservar un poco más de aire operativo mientras la cobranza de tus propios servicios lograba tomar el ritmo adecuado.',
'Es preocupante notar que para el cierre de marzo tu plazo de pago cayó a solo cinco días, lo que indica que estás devolviendo el efectivo a la calle de forma casi inmediata. Esta aceleración en tus egresos, sumada a la lentitud de tus recaudos, es una combinación peligrosa que drena tu caja y te quita poder de negociación hoy.',
'Te recomiendo estabilizar tu política de pagos para que no baje nunca de los quince días, independientemente del mes calendario en el que te encuentres. Usa el prestigio de tu firma para negociar plazos más humanos con tus aliados; recuerda que el dinero en tu bolsillo genera intereses, mientras que el dinero pagado antes de tiempo solo beneficia a terceros.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 13. Rotación de Activos (2024 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_activos_1Q', 2024, '1Q', 'success',
'Durante este primer cuarto del año, has demostrado una mejora constante en la productividad de tu estructura operativa, duplicando la rotación de tus activos entre enero y marzo. Esto muestra que tu motor de ingresos está ganando tracción y que tus recursos fijos están siendo aprovechados con mayor intensidad cada mes que pasa este año comercial.',
'A pesar de la mejoría mensual, la rotación acumulada sigue siendo baja frente a los promedios históricos de tu sector de consultoría profesional. Tener activos que no "venden" lo suficiente en el balance indica que tu inversión actual en tecnología y oficina es más grande de lo que tu volumen de facturación actual justifica realmente.',
'Debes buscar optimizar tus costos de estructura. Si tienes capacidad de oficina o de software que no estás usando plenamente, busca alianzas para subarrendar espacios o servicios, o enfócate en captar proyectos que no requieran inversión adicional. Necesitas que cada peso que hoy tienes en activos genere por lo menos el doble de ingresos.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 14. Rotación de Cartera (2024 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_cartera_1Q', 2024, '1Q', 'success',
'Has logrado salir del estancamiento total de enero, llevando la rotación de tus facturas a niveles de ocho centésimos de veces para el mes de marzo. Este movimiento, aunque discreto, marca el fin de la parálisis administrativa inicial y el inicio de un flujo de recaudo que le devuelve la vida a tu presupuesto operativo este trimestre.',
'Tener una rotación tan decimalmente baja significa que tu dinero está prácticamente congelado en manos de tus clientes durante la mayor parte del trimestre. Operar con niveles inferiores a un décimo de rotación es como intentar correr una maratón con el freno de mano puesto; te exige un esfuerzo administrativo agotador solo para cubrir tus gastos fijos.',
'Mi recomendación es que rediseñes tu esquema de incentivos comerciales. Premia a tu equipo no solo por la firma del contrato, sino por el recaudo efectivo del anticipo en los primeros cinco días. Necesitas que tu cartera rote a una velocidad superior a cinco décimos mensualmente para que tu empresa sea verdaderamente ágil y rentable hoy.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 15. Rotación de Inventarios (2024 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_inventarios_1Q', 2024, '1Q', 'success',
'Sigues operando bajo un esquema de eficiencia total en inventarios, lo que te posiciona como una firma de servicios pura y altamente tecnificada en este arranque de año. No tienes inventarios "quemando en anaqueles", lo que te da una libertad absoluta para modificar tu portafolio de servicios sin sufrir pérdidas por mercancía inmovilizada.',
'La ausencia de inventarios físicos te hace depender ciento por ciento de tu capacidad instalada de consultoría, la cual es limitada y perecedera. Si tus expertos están desocupados en enero, ese "inventario de tiempo" se pierde para siempre y no puede ser recuperado en los meses posteriores, castigando directamente tu rentabilidad sobre el capital.',
'Te sugeriero que crees una base de datos de conocimientos interna que funcione como tu "inventario de soluciones". Al documentar cada caso de éxito, estarás creando un activo que rota al ser re-utilizado en nuevos proyectos, permitiéndote vender más con el mismo equipo y mejorando tu capacidad de respuesta comercial en el futuro cercano.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 16. Rotación de Proveedores (2024 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_proveedores_1Q', 2024, '1Q', 'success',
'Has mantenido una rotación de pagos a terceros muy disciplinada, logrando niveles sumamente altos en marzo que demuestran tu compromiso inquebrantable con tu red de aliados comerciales. Esta actitud de buen pagador te asegura que siempre serás el cliente predilecto de tus proveedores cuando necesites recursos críticos para una licitación.',
'Es evidente que estás rotando tus pagos mucho más rápido de lo que rotas tu propia cartera, lo que genera un desbalance financiero que castiga tu cuenta de ahorros operativa. Pagar tus compromisos casi veinte veces más rápido de lo que cobras tus servicios es una práctica heroica pero financieramente poco inteligente que asfixia tu propio crecimiento.',
'Ajustas tu política de pagos para que sea proporcional a tu velocidad de recaudo real de este trimestre. No pagues por costumbre o por inercia; asegúrate de que cada salida de efectivo esté programada y sincronizada con tus entradas de caja futuras. Deberías buscar una rotación de proveedores mucho más conservadora en los próximos meses escolares.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

--------------------------------------------------------------------------------
-- LOTE 3: 2024 Q2 (Recuperación y Agilidad)
--------------------------------------------------------------------------------

-- 17. Ciclo de Conversión de Efectivo (2024 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ciclo_conversion_efectivo_2Q', 2024, '2Q', 'success',
'Has logrado una recuperación brillante en este segundo trimestre, reduciendo tu ciclo de conversión de efectivo a solo cincuenta y siete días en promedio. Esto significa que has recortado a la mitad el tiempo que tu dinero tarda en regresar a tu bolsillo frente al trimestre anterior, devolviéndole a la empresa la agilidad necesaria para operar sin asfixias.',
'A pesar de la notable mejoría, cincuenta y siete días siguen siendo un plazo considerablemente largo para un negocio de consultoría que no tiene inventarios físicos. Mantener el dinero fuera de tu cuenta por casi dos meses implica que todavía tienes procesos internos de facturación o aceptación de servicios que están ralentizando tu flujo de caja real hoy.',
'Te recomiendo que aproveches este impulso positivo para estandarizar los cierres de proyectos por hitos quincenales. Al fraccionar la facturación, lograrás que el ciclo de efectivo baje de los cuarenta y cinco días antes de terminar el año, lo que te daría una posición de liquidez inmejorable para enfrentar los retos del segundo semestre del ejercicio.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 18. Días de Cartera - DSO (2024 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dso_2Q', 2024, '2Q', 'success',
'La gestión de cobranza en este trimestre ha sido excepcional, logrando que el plazo promedio de recaudo caiga de ciento cincuenta y siete a solo setenta y tres días. Has recuperado el control administrativo sobre tus clientes, demostrando que tu firma tiene la autoridad necesaria para exigir el pago justo por el valor entregado en cada consultoría profesional.',
'Todavía te encuentras por encima de los dos meses para cobrar tus servicios, lo que indica que una parte importante de tu riqueza sigue financiando la operación de tus clientes de forma gratuita. Setenta y tres días es un plazo que el mercado considera tolerable pero ineficiente, especialmente cuando tienes que cubrir nóminas y gastos fijos cada treinta días puntualmente.',
'Mi sugerencia es que implementes una política de cobro preventivo cinco días antes del vencimiento de cada factura. No esperes a que el cliente se olvide del pago; haz que tu equipo administrativo mantenga una comunicación fluida y profesional que asegure que el dinero llegue a tu cuenta antes de que termine el próximo periodo trimestral de este año.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 19. Días de Inventario - DIO (2024 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dio_2Q', 2024, '2Q', 'success',
'Mantienes la máxima eficiencia operativa con cero días de inventario, consolidando tu modelo de negocio como una estructura liviana y de alta velocidad. Esta característica te permite destinar cada peso de tu flujo de caja directamente a la operación de servicios y al talento humano, sin desperdicios en activos físicos que pierden valor cada día.',
'La ausencia total de inventarios te obliga a ser sumamente preciso con la carga de trabajo de tus consultores; si no tienes proyectos activos, no tienes activos tangibles para liquidar y obtener dinero rápido. Tu inventario es tu prestigio y tu capacidad de entrega, y en este trimestre esa capacidad debe estar siempre a pleno rendimiento para ser rentable.',
'Te aconsejo que desarrolles herramientas tecnológicas propias que funcionen como activos disponibles para la venta. Al tener software o bases de datos especializadas para tus clientes, estarás creando un "inventario intangible" que puede ser vendido repetidamente con un costo marginal nulo, mejorando así tu rentabilidad sin perder tu naturaleza de empresa ligera y veloz.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 20. Días de Pago - DPO (2024 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dpo_2Q', 2024, '2Q', 'success',
'Has logrado estabilizar tus plazos de pago a proveedores en un promedio de diez días durante este trimestre de mitad de año. Ser un pagador cumplido te ha permitido mantener la lealtad absoluta de tus aliados estratégicos, garantizando que tu firma cuente siempre con los mejores recursos externos para cumplir con los estándares de calidad de tus clientes.',
'Pagar en solo diez días mientras cobras en setenta y tres días es una brecha financiera sumamente amplia que te obliga a sacar dinero de tus ahorros para financiar la operación de terceros. Estás asumiendo una carga de caja que no te corresponde, reduciendo tu capacidad de inversión propia solo por mantener una velocidad de pago innecesariamente alta ahora mismo.',
'Busca negociar plazos de pago que se acerquen a los veinte días con tus proveedores de mayor confianza. Explícales que tu nueva política de flujo de caja busca mayor equilibrio; esto te daría diez días extra de aire financiero cada mes que podrías usar para mejorar tu propia rentabilidad sin afectar la calidad de tu relación comercial actual.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 21. Rotación de Activos (2024 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_activos_2Q', 2024, '2Q', 'success',
'En este segundo trimestre has mantenido una rotación de activos constante y saludable, situándose en diecisiete centésimos al cierre de junio. Tus recursos operativos están trabajando al ritmo adecuado para sostener el crecimiento de tu facturación, demostrando que posees una estructura bien equilibrada que genera valor real por cada peso invertido en el balance.',
'A pesar de la estabilidad, tu rotación de activos sigue reflejando una capacidad instalada que podría producir mucho más de lo que hoy registra en ventas. Tener activos que rotan menos de una quinta parte de su valor en el trimestre significa que todavía tienes espacios de mejora en tu productividad operativa y comercial para ser más eficiente hoy.',
'Te recomiendo que busques contratos de consultoría recurrente o de larga duración que garanticen un uso constante de tu infraestructura durante todo el año. Al estabilizar tus ingresos mensuales, lograrás que tus activos roten con mayor fuerza y que tu rentabilidad operativa final sea muy superior a la que hoy estás registrando en tus informes.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 22. Rotación de Cartera (2024 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_cartera_2Q', 2024, '2Q', 'success',
'La velocidad con la que tus facturas se convierten en dinero ha mejorado notablemente, alcanzando una rotación de trece centésimos de veces al mes en este periodo. Has logrado despertar el flujo de caja que estaba dormido al inicio del año, demostrando que tu equipo administrativo ha tomado las medidas correctas para acelerar el recaudo de honorarios.',
'Aunque has mejorado, tu cartera todavía rota a una velocidad muy baja frente a lo que tu modelo de negocio de servicios corporativos permite. Una rotación decimal tan pequeña indica que el grueso de tu riqueza sigue en manos de tus clientes, lo que te quita agilidad para reaccionar ante oportunidades de inversión que exigen liquidez inmediata en cuenta.',
'Implementa un sistema de gestión de cobranza digital que envíe recordatorios automáticos y permita pagos electrónicos directos. Al facilitar el proceso de pago para tus clientes, lograrás que tu cartera rote dos o tres veces más rápido en el próximo trimestre, devolviéndole a tu empresa el dinamismo financiero que hoy necesita para liderar.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 23. Rotación de Inventarios (2024 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_inventarios_2Q', 2024, '2Q', 'success',
'Consolidas tu perfil de empresa de servicios de alta eficiencia al mantener la rotación de inventarios en cero durante todo este periodo de mitad de año escolar. No tienes capital "quemándose" en una bodega, lo que te permite destinar tus excedentes financieros a fortalecer tu marca y a contratar a los expertos más brillantes del mercado actual.',
'El gran desafío de no tener inventario es que tu capacidad productiva tiene un techo rígido basado en el tiempo de tu equipo; si estás saturado, pierdes ventas porque no tienes "stock" de horas para despachar. Este límite operativo puede estar frenando tu crecimiento justo cuando el mercado está demandando servicios de consultoría con mayor intensidad ahora mismo.',
'Te sugiero que desarrolles alianzas con consultores externos independientes que actúen como tu "inventario bajo demanda" para proyectos específicos. Así, podrás escalar tus ventas sin aumentar tus costos fijos permanentemente, manteniendo la eficiencia absoluta de tu rotación de inventarios pero multiplicando tu capacidad de generar facturación neta mensual este año financiero.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 24. Rotación de Proveedores (2024 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_proveedores_2Q', 2024, '2Q', 'success',
'Has mantenido una rotación de proveedores muy dinámica, situándose por encima de ocho veces al mes en promedio durante este trimestre. Esta rapidez en el cumplimiento de tus obligaciones asegura que tu firma tenga una reputación de oro en el mercado, atrayendo a los mejores aliados estratégicos para el desarrollo de tus proyectos de consultoría.',
'Pagar ocho veces más rápido de lo que cobras es una política financiera que, aunque éticamente admirable, debilita tu posición de liquidez neta. Estás entregando tu efectivo a terceros mucho antes de que tus propios clientes te lo devuelvan, lo que te obliga a depender de tus ahorros corporativos para mantener la marcha diaria de la operación financiera.',
'Mi recomendación es que busques un punto intermedio donde tu rotación de proveedores se estabilice cerca de las cuatro veces al mes. Este cambio te daría el doble de tiempo promedio para pagar sin que se considere mora, oxigenando tu caja y permitiéndote usar ese dinero para financiar tu propia expansión comercial sin costo alguno para ti.',
'Protocolo Actividad Bloque C v1.0')
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

--------------------------------------------------------------------------------
-- LOTE 4: 2024 Q3 (El Bache de Agosto)
--------------------------------------------------------------------------------

-- 25. Ciclo de Conversión de Efectivo (2024 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ciclo_conversion_efectivo_3Q', 2024, '3Q', 'success',
'A pesar de los vientos en contra que trajo el mes de agosto, has logrado cerrar el trimestre con un ciclo de conversión de efectivo promedio de ochenta y seis días. Tu estructura financiera demostró tener los amortiguadores necesarios para absorber un pico de lentitud extrema sin que la operación general de la firma se detuviera por falta de recursos líquidos en cuenta.',
'Es preocupante observar cómo el ciclo se disparó hasta los ciento veintisiete días en agosto, lo que evidencia una vulnerabilidad estacional o una dependencia peligrosa de un grupo pequeño de clientes que decidieron no pagar a tiempo. Pasar de sesenta días en julio a casi el doble en solo un mes es un salto que pone en riesgo tu planificación financiera anual.',
'Te recomiendo que audites por qué el inicio de año generó tal desconexión en tu flujo de recursos y que establezcas metas de recaudo mucho más estrictas para el próimxo primer trimestre vacacional. No puedes permitir que tu capital se duerma durante noventa días; necesitas que el motor de cobranza arranque con mucha más fuerza en los meses lentos.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 26. Días de Cartera - DSO (2024 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dso_3Q', 2024, '3Q', 'success',
'Has mantenido una disciplina de cobranza que, fuera del incidente de agosto, se sitúa cerca de los setenta y cinco días promedio. Esta constancia en el recaudo es fundamental para que tu firma pueda proyectar sus inversiones de fin de año con una base sólida de efectivo real, evitando las sorpresas de última hora en el balance financiero trimestral.',
'El salto del plazo de cobro a ciento cuarenta y dos días en el mes de agosto es una señal de alerta que no puedes ignorar, ya que indica que tus clientes se tomaron vacaciones a costa de tu flujo de caja. Tener facturas que tardan casi cinco meses en pagarse en un periodo de alta demanda operativa es un lujo que tu rentabilidad neta no se puede permitir.',
'Mi sugerencia es que implementes una cláusula de intereses de mora en tus nuevos contratos de consultoría para incentivar el pago oportuno durante los meses de baja actividad administrativa. Necesitas que tus clientes entiendan que tu liquidez tiene un costo y que el retraso en sus pagos afecta directamente la velocidad de crecimiento de los proyectos.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 27. Días de Inventario - DIO (2024 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dio_3Q', 2024, '3Q', 'success',
'Sigues liderando el mercado con una estructura de cero días de inventario, lo que te otorga una agilidad envidiable durante el tercer trimestre del año. Al no tener recursos atrapados en mercancías físicas, puedes reasignar tu presupuesto de forma inmediata hacia las áreas de mayor rentabilidad, como el desarrollo de nuevas metodologías o el mercadeo digital estratégico.',
'Tu inventario real de horas-consultor se ve amenazado por la lentitud del recaudo; si no cobras a tiempo, no puedes contratar el talento adicional necesario para atender los nuevos negocios que surgen en este periodo. La falta de activos físicos te obliga a ser un maestro en la administración del efectivo neto para no quedarte sin aire financiero.',
'Te recomiendo que crees un fondo de imprevistos equivalente a tres meses de nómina para proteger tu modelo de negocio liviano. Como no tienes inventarios que liquidar para obtener dinero rápido, este colchón de seguridad financiera te permitirá operar con total tranquilidad incluso si tus clientes vuelven a retrasar sus pagos en el futuro.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 28. Días de Pago - DPO (2024 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dpo_3Q', 2024, '3Q', 'success',
'En este trimestre has logrado extender de forma muy inteligente tus plazos de pago, alcanzando un promedio de quince días. Esta gestión te ha permitido retener el efectivo en tu cuenta por cinco días adicionales frente al trimestre anterior, dándole a tu firma un aire financiero vital para compensar la lentitud del recaudo que sufriste durante el mes de agosto.',
'Pagar en quince días sigue siendo una velocidad de salida de dinero muy alta para una empresa que tarda más de cien días en cobrar sus propios servicios. Estás asumiendo el papel de financiador de tu cadena de valor, lo que presiona tu capital de trabajo y te obliga a postergar inversiones propias hoy.',
'Te aconsejo que hables con tus tres proveedores más grandes y negocies un plazo de pago fijo de treinta días. Al alinear tus egresos con un ciclo más humano y estándar del mercado real, lograrás que tu empresa respire mucho mejor cada fin de mes, permitiéndote cerrar el año con una posición de caja mucho más robusta que la actual.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 29. Rotación de Activos (2024 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_activos_3Q', 2024, '3Q', 'success',
'Tu rotación de activos se ha mantenido en niveles de quince centésimos por mes, demostrando una resiliencia notable de tu modelo de negocio ante la variabilidad del mercado trimestral. Estás logrando que tu infraestructura operativa genere un flujo de ventas constante, lo que asegura que tu inversión en activos fijos esté plenamente justificada desde el punto de vista comercial.',
'Sin embargo, esta rotación constante indica que has llegado a una meseta de productividad donde tus activos ya no generan ingresos adicionales por sí mismos. Tienes una estructura que funciona bien, pero que parece haber dejado de acelerar, lo que sugiere que necesitas nuevas estrategias para extraer más valor de tu inversión acumulada.',
'Debes enfocarte en la digitalización de tus procesos para escalar tu capacidad de facturación sin necesidad de nuevos activos físicos. Al automatizar tareas administrativas o de consultoría básica, lograrás que tu rotación de activos dé un salto cualitativo, permitiéndote atender a más clientes con la misma base instalada de recursos.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 30. Rotación de Cartera (2024 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_cartera_3Q', 2024, '3Q', 'success',
'Has logrado que tu cartera rote casi una décima de vez al mes en promedio durante este periodo, lo que representa un esfuerzo de cobranza loable en un trimestre marcado por la incertidumbre estacional. Tu dinero está moviéndose, lo cual es la mejor noticia para tu planificación de flujos de caja y para asegurar el cumplimiento de tus obligaciones.',
'La caída de la rotación a siete centésimos en agosto es un golpe directo a tu agilidad financiera, ya que congeló tus recursos justo cuando podrías haberlos necesitado para nuevas oportunidades. Una rotación tan baja te obliga a ser extremadamente cauteloso con cada gasto, quitándote la libertad de negociar descuentos por pronto pago con tus aliados.',
'Mi recomendación es que establezcas un comité de cartera semanal que revise cada cuenta por cobrar de forma personalizada. No permitas que el recaudo se vuelva un proceso automático y frío; necesitas el toque personal de tu gerencia para asegurar que tus clientes prioricen tu factura por encima de otros compromisos financieros de su agenda comercial.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 31. Rotación de Inventarios (2024 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_inventarios_3Q', 2024, '3Q', 'success',
'Mantienes tu estatus de empresa de servicios de máxima pureza operativa con cero días de inventario físico en este tercer trimestre escolar. Esta ligereza extrema es tu mejor defensa contra la inflación y los problemas de suministro global, permitiéndote centrar toda tu inversión en el activo que más rentabilidad genera para tu firma: el conocimiento especializado.',
'Al no rotar inventarios, tu riesgo financiero se concentra totalmente en el flujo de caja de servicios; si la venta se detiene, no tienes activos que liquidar para cubrir huecos de liquidez. Esta falta de "bienes tangibles" para la venta inmediata te obliga a mantener un pipeline comercial siempre lleno y muy diversificado para no sufrir parones.',
'Te sufiero que crees una "librería de activos digitales" que puedas monetizar mediante descargas o licencias de uso. Aunque sigas sin tener inventario físico, tener productos digitales te daría una rotación de ingresos mucho más veloz y menos dependiente del tiempo humano, escalando tu negocio hacia niveles de rentabilidad muy superiores a los actuales.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 32. Rotación de Proveedores (2024 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_proveedores_3Q', 2024, '3Q', 'success',
'Tu rotación de pagos a terceros se ha estabilizado en niveles de seis veces al mes, lo que muestra una madurez financiera muy bienvenida para tu planificación de tesorería trimestral. Estás cumpliendo con todos tus aliados comerciales de forma puntual, lo que te otorga un poder de negociación muy alto para exigir calidad y cumplimiento constante.',
'Sientes la presión de pagar seis veces más rápido de lo que cobras, una práctica que drena tu capital de trabajo sin darte ningún beneficio financiero a cambio hoy mismo. Estar tan al día con tus proveedores mientras tus clientes están en mora contigo es una transferencia de riqueza que está frenando tu capacidad de inversión en mercadeo.',
'Ajusta tu política de pagos para que coincida con la recepción efectiva de los fondos de tus clientes más grandes. No saques dinero de tu capital de reserva para pagar gastos operativos si todavía tienes facturas pendientes de recaudo por montos similares; busca que tu operación se financie a sí misma con el flujo de caja real generado mensualmente.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

--------------------------------------------------------------------------------
-- LOTE 5: 2024 Q4 (Cierre y Estabilización)
--------------------------------------------------------------------------------

-- 33. Ciclo de Conversión de Efectivo (2024 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ciclo_conversion_efectivo_4Q', 2024, '4Q', 'success',
'Has cerrado el año con una tendencia de estabilización muy positiva, logrando que tu ciclo de caja baje a un promedio de ochenta y un días en este último trimestre. Esta mejora frente al trimestre anterior demuestra que has recuperado el ritmo operativo y que tu empresa está lista para iniciar el próximo ciclo con una estructura de flujo mucho más sana.',
'A pesar de la mejoría, el ciclo de ochenta y un días sigue siendo casi treinta veces superior al que tenías al cierre del 2023, lo que indica un cambio estructural en tu modelo de negocio o una relajación peligrosa en tus procesos de cobranza. Operar con un ciclo tan largo te quita agilidad para reinvertir tus utilidades de forma inmediata.',
'Te recomiendo que para el arranque del 2025 establezcas un objetivo de ciclo de caja inferior a los sesenta días. Debes ser implacable con la gestión de los tiempos muertos entre la entrega del servicio y el recaudo efectivo; solo así recuperarás la velocidad de crucero que te permitió crecer de forma explosiva anteriormente.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 34. Días de Cartera - DSO (2024 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dso_4Q', 2024, '4Q', 'success',
'Has logrado una reducción significativa en tus plazos de cobro durante este cierre de año, bajando de los ciento un días promedio del trimestre anterior a noventa días en este último tramo. Este esfuerzo de saneamiento de cartera es fundamental para que el balance de fin de año refleje una posición de liquidez real y no solo riqueza atrapada.',
'Tener el dinero de tus servicios atrapado por tres meses completos sigue siendo un lastre que limita tu capacidad de maniobra financiera hoy. Estás terminando el año con una cartera que, aunque bajo control, es mucho más lenta de lo que el mercado corporativo exige, lo que te obliga a depender de líneas de crédito o de fondos propios líquidos.',
'Mi sugerencia es que antes de que termine el mes de diciembre, realices una campaña de recaudo intensiva ofreciendo pequeños incentivos por pronto pago a tus clientes más representativos. Necesitas limpiar tu balance de facturas antiguas para que el 2025 arranque con una cuenta bancaria robusta que te permita negociar con fuerza absoluta.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 35. Días de Inventario - DIO (2024 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dio_4Q', 2024, '4Q', 'success',
'Tu indicador de inventarios en cero es tu mejor carta de presentación para el cierre fiscal, demostrando una eficiencia operativa inmaculada que te evita cualquier pérdida por existencias obsoletas o deterioro de materiales. Posees una organización sumamente moderna y digital que puede cerrar el año con total transparencia en sus activos corrientes.',
'La ausencia de inventarios físicos te obliga a ser mueso en la gestión de tu cartera; ya que no tienes mercancía que liquidar, tu única fuente de efectivo son tus clientes. Si la cobranza se detiene, tu empresa entra en zona de riesgo inmediato, lo que te exige mantener una vigilancia constante sobre el flujo de caja neto hoy.',
'Te aconsejo que aproveches este cierre de año para invertir en la creación de activos de conocimiento que puedas empaquetar y vender como consultoría pre-diseñada. Al no tener inventarios físicos, esta "bodega digital" te dará una capacidad de escalar ingresos sin aumentar tus costos fijos, preparando el terreno para un 2025 mucho más rentable.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 36. Días de Pago - DPO (2024 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dpo_4Q', 2024, '4Q', 'success',
'Has mantenido una política de pagos muy prudente durante este último trimestre, promediando los diez días para cumplir con tus obligaciones. Ser un socio confiable te asegura que tus proveedores estratégicos te den prioridad absoluta en el suministro de servicios críticos para tus proyectos finales, consolidando una red de apoyo invaluable.',
'Seguir pagando en diez días mientras cobras en noventa es una asimetría financiera que castiga tu capital de trabajo de forma innecesaria. Estás regalando días de liquidez a tus proveedores que podrías estar usando para fortalecer tu propia caja de ahorros corporativa, especialmente en un periodo donde los gastos de personal suelen incrementarse.',
'Te recomiendo que para el presupuesto de pagos del próximo trimestre, ajustes tus plazos de salida de efectivo a un mínimo de veinte días. Comunica este cambio como una optimización de procesos de tesorería; esto te dará diez días extra de aire financiero mensual que te permitirán operar con una agilidad mucho mayor el próximo año.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 37. Rotación de Activos (2024 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_activos_4Q', 2024, '4Q', 'success',
'Tu rotación de activos se ha mantenido constante en quince centésimos al mes, demostrando que tu estructura de consultoría tiene un rendimiento predecible y sólido para cerrar el presente año. Estás logrando que cada peso invertido en tu oficina y tecnología trabaje de forma eficiente para convertir el esfuerzo operativo en facturación real hoy.',
'Esta estabilidad, aunque positiva, sugiere que tu crecimiento se ha estancado en un nivel de productividad que ya no sorprende al balance final. Tener activos que rotan siempre a la misma velocidad indica que no estás innovando lo suficiente en tus servicios para capturar mayores volúmenes de negocio con la misma base instalada de recursos materiales.',
'Te sugiero que realices una auditoría de tus activos actuales y elimines cualquier software o equipo que no contribuya directamente a la generación de ingresos. Al hacer tu firma aún más liviana, tu rotación mejorará y tu rentabilidad dará el salto que tus socios esperan para el inicio del próximo ejercicio comercial estratégico.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 38. Rotación de Cartera (2024 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_cartera_4Q', 2024, '4Q', 'success',
'La velocidad de tus recaudos ha mostrado una mejoría alentadora, alcanzando un promedio de diez centésimos de veces al mes en este tramo final. Lograste evitar que la cartera se durmiera al cierre del año, asegurando que gran parte de tu facturación se convierta en dinero real que puedes usar para honrar tus compromisos financieros.',
'Aunque has mejorado, tu rotación de cartera sigue siendo decimalmente baja, lo que indica que el grueso de tu riqueza sigue atrapado en manos de tus clientes durante la mayor parte del trimestre. No puedes permitir que tus facturas roten tan lento, ya que esto te obliga a ser un espectador de cómo tus recursos pierden dinamismo hoy.',
'Implementa una política de anticipos obligatorios para todos los nuevos servicios que contrates en el 2025. Al cobrar una parte del proyecto por adelantado, mejorarás drásticamente tu rotación de cartera desde el primer día, inyectando una liquidez inmediata que te dará una ventaja competitiva enorme para negociar mejores precios externos.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 39. Rotación de Inventarios (2024 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_inventarios_4Q', 2024, '4Q', 'success',
'Cierras el año con una eficiencia de inventarios del cien por ciento, ratificando la superioridad de tu modelo de servicios sobre los negocios tradicionales. Al no tener un solo peso atrapado en estanterías, tu agilidad para cerrar el año fiscal es total, permitiéndote centrar el interés gerencial en la estrategia comercial del próximo año.',
'El riesgo de no tener inventarios es que tu flujo de caja depende exclusivamente del recaudo activo; si no cobras, no tienes nada que vender para obtener efectivo rápido. Esta vulnerabilidad te obliga a ser impecable en tu planificación, ya que tu capital de stock es inexistente frente a imprevistos que siempre ocurren al cierre anual.',
'Mi recomendación es que diversifiques tu portafolio con la creación de material educativo o cursos corporativos grabados que funcionen como activos intangibles disponibles para la venta. Esto te daría una fuente de ingresos adicional que no depende de tu tiempo y que escalaría tu rentabilidad sin perder la eficiencia del inventario cero.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 40. Rotación de Proveedores (2024 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_proveedores_4Q', 2024, '4Q', 'success',
'Has mantenido una rotación de pagos a terceros excepcionalmente alta durante este cierre de año, promediando dieciocho veces al mes. Esta agilidad te posiciona como un cliente de élite ante tus proveedores, garantizando que siempre tengas acceso a los mejores recursos y talentos disponibles para ejecutar tus proyectos finales hoy.',
'Pagar dieciocho veces al mes significa que estás realizando egresos casi cada tres días, lo que genera una carga administrativa de tesorería agotadora y costosa para tu equipo. Al cerrar el año con esta velocidad de pago, estás drenando tu liquidez de forma acelerada sin obtener beneficios financieros reales por este pronto pago excesivo.',
'Te recomiendo que para el inicio del próximo año fiscal, centralices tus pagos en un solo día de la quincena para todos los proveedores recurrentes. Esto mantendrá tu excelente reputación institucional pero te devolverá el control de tu agenda operativa, permitiéndote planificar tus flujos de salida con mucha mayor precisión estratégica hoy.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

--------------------------------------------------------------------------------
-- LOTE 6: 2025 Q1 (Alerta Roja: Crisis de Recaudo)
--------------------------------------------------------------------------------

-- 41. Ciclo de Conversión de Efectivo (2025 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ciclo_conversion_efectivo_1Q', 2025, '1Q', 'success',
'A pesar de atravesar el trimestre más difícil en la historia reciente de tu firma, has logrado mantener la operación a flote y cerrar marzo con una tendencia de recuperación, bajando de los doscientos ochenta días de febrero a ciento cuarenta al cierre del periodo. Esta resiliencia operativa es la que permitirá que tu empresa sobreviva a este bache.',
'Estamos ante una situación de alerta roja absoluta, con un ciclo de flujo de caja promedio de ciento noventa días durante este trimestre. Tener tu dinero atrapado por más de seis meses significa que tu empresa está trabajando gratis hoy para el mercado, lo que asfixia cualquier posibilidad de inversión estratégica y pone en riesgo tus fijos.',
'Te recomiendo que declares una emergencia de tesorería inmediata y que suspendas cualquier gasto no esencial hasta que el ciclo de caja baje de los noventa días. Necesitas recuperar el aire financiero de forma urgente; busca negociar el factoraje de tus facturas más grandes para inyectar liquidez inmediata a la firma.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 42. Días de Cartera - DSO (2025 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dso_1Q', 2025, '1Q', 'success',
'La gestión de recaudo al cierre de marzo ha mostrado una reacción valiente, logrando cobrar deudas que parecían perdidas y reduciendo el plazo de cartera en casi ciento treinta días en un solo mes. Esta agresividad administrativa es la única medicina posible para curar la herida financiera que se abrió a principios de este ejercicio comercial.',
'Es inaceptable que tu plazo de cobro haya llegado a los doscientos noventa y un días en febrero, lo que indica un colapso total en tus procesos de crédito y cobranza o un incumplimiento masivo de tus clientes principales. Estás financiando a terceros por casi diez meses, actuando como un banco sin cobrar réditos hoy.',
'Mi sugerencia es que realices una auditoría forense sobre tus cuentas por cobrar para identificar si hay facturas en disputa o errores de radicación. No puedes permitir que este desorden se repita en el próximo trimestre; necesitas un manual de crédito estricto que no permita que ninguna deuda supere los cuarenta y cinco días.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 43. Días de Inventario - DIO (2025 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dio_1Q', 2025, '1Q', 'success',
'Tu indicador de cero días de inventario físico sigue siendo tu salvoconducto para no entrar en una crisis de solvencia terminal en este trimestre. Al no tener recursos inmovilizados en mercancías que se deprecian, tu única y gran preocupación debe ser la recuperación de la cartera móvil, simplificando tu enfoque hacia lo vital.',
'Sin embargo, al no tener inventarios, tu "mercancía de tiempo" se ha vuelto extremadamente costosa de mantener debido a la lentitud del recaudo; estás pagando salarios de expertos cuyos honorarios no llegan a la caja de la firma. Esta descompensación entre el costo del talento y el ingreso real representa hoy tu mayor riesgo de capital.',
'Te aconsejo que implementes un modelo de consultoría por resultados inmediatos que exija el pago de un "success fee" al cierre de cada hito mensual. Esto te dará un flujo de caja pequeño pero constante que ayudará a sostener la estructura liviana de la empresa mientras logras normalizar la rotación de tus recaudos más grandes.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 44. Días de Pago - DPO (2025 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dpo_1Q', 2025, '1Q', 'success',
'Has demostrado una ética comercial inquebrantable al mantener tus plazos de pago en un promedio de diez días, incluso en medio de la tormenta de liquidez de este trimestre. Esta honestidad financiera te garantiza que tus aliados no te abandonen en el momento de mayor necesidad, protegiendo el activo más valioso: tu red de talento externo.',
'Pagar en diez días cuando tus clientes te pagan en doscientos es una política suicida que no puedes sostener por más tiempo sin comprometer la propia nómina de tu equipo directivo. Te estás desangrando financieramente por cumplir con terceros que quizás no tengan la misma urgencia asistencial que tú hoy en día.',
'Habla con sinceridad con tus proveedores y diles que necesitas extender los plazos a cuarenta y cinco días de forma temporal mientras recuperas la cartera. La mayoría preferirá darte este aire a que dejes de contratarlos; usa tu reputación para comprar tiempo financiero antes de que la caja se agote este año.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 45. Rotación de Activos (2025 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_activos_1Q', 2025, '1Q', 'success',
'Durante este periodo has logrado mantener un uso constante de tu infraestructura operativa, con una rotación que duplicó su fuerza entre enero y marzo. Esto indica que a pesar de la crisis de recaudo, tu firma no ha dejado de vender y de ejecutar proyectos, lo que es la mayor señal de esperanza para el futuro comercial.',
'Tener una rotación de ingresos tan baja frente a la inversión total de activos indica que tu eficiencia productiva está siendo castigada por la lentitud administrativa general. Gastas lo mismo en oficina y tecnología, pero el balance registra movimientos muy tímidos en proporción al capital que hoy tienes comprometido.',
'Te recomiendo que busques optimizar al máximo el uso de tus activos fijos, quizás ofreciendo tus servicios a través de plataformas digitales que no requieran presencia física constante. Necesitas que cada peso que posees en el balance trabaje al triple de su velocidad para compensar el costo del capital estancado.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 46. Rotación de Cartera (2025 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_cartera_1Q', 2025, '1Q', 'success',
'Has logrado romper la parálisis total de inicios de año, llevando la rotación de tus facturas de niveles insignificantes en febrero a seis centésimos al cierre de marzo. Cada centavo que has logrado atraer de nuevo es una victoria estratégica que te da el aire necesario para seguir operando bajo presión hoy.',
'Operar con una rotación de cartera promedio de solo cuatro centésimos al mes es como intentar mover un trasatlántico con un remo pequeño. Tu dinero está prácticamente petrificado, lo que te quita cualquier capacidad de reacción ante las oportunidades y te obliga a trabajar en pro de sostener la operación básica.',
'Implementa un sistema de "cobro a la vista" para todos los servicios de consultoría inmediata o de corto plazo. Necesitas que el dinero llegue antes de que el trabajo se complete totalmente; solo este cambio logrará que tu rotación dé el salto necesario para sacarte de la zona de riesgo actual.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 47. Rotación de Inventarios (2025 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_inventarios_1Q', 2025, '1Q', 'success',
'Mantienes la agilidad estratégica al tener cero días de inventario físico, lo que te permite navegar esta crisis con una preocupación menos en el balance. Al no tener productos que se venzan o pierdan vigencia, puedes concentrar todo tu talento en la resolución de los problemas de flujo que hoy asfixian tu gestión.',
'El gran riesgo es que tu inventario de tiempo profesional es hoy extremadamente caro y no tiene retorno inmediato de caja. Estás quemando el tiempo de tus mejores expertos en proyectos cuyos recaudos tardan meses, lo que financieramente equivale a tener la mercancía deteriorándose en una bodega corporativa sin venta.',
'Te sugiero que desarrolles módulos de aprendizaje o herramientas de diagnóstico automatizadas que tus clientes puedan comprar como productos listos para usar. Esto te daría un ingreso similar a la rotación de un stock físico, dándole una dinámica comercial nueva a tu firma para capturar efectivo líquido trimestral.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 48. Rotación de Proveedores (2025 Q1)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_proveedores_1Q', 2025, '1Q', 'success',
'Has mantenido una rotación de pagos a terceros muy disciplinada, promediando ocho veces al mes durante este complejo primer trimestre. Esta velocidad de pago es tu mejor activo de confianza hoy, demostrando a todos que tu firma es una institución seria que honra sus promesas incluso en estados críticos de caja.',
'Considero que ser tan buen pagador es hoy tu mayor debilidad financiera, ya que estás entregando tu escaso efectivo ocho veces más rápido de lo que logras recuperarlo de tus deudores. Esta descompensación es la que está vaciando tus reservas y te está llevando a un callejón sin salida de liquidez neta.',
'Ajusta tu política de pagos para que se realice únicamente cuando el hito de cobranza asociado al proyecto se haya cumplido efectivamente. Deja de financiar la operación de otros con tu poco efectivo; necesitas priorizar tu propia supervivencia operativa por encima de cualquier otra consideración de imagen comercial estratégica.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

--------------------------------------------------------------------------------
-- LOTE 7: 2025 Q2 (El Renacer de la Caja)
--------------------------------------------------------------------------------

-- 49. Ciclo de Conversión de Efectivo (2025 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ciclo_conversion_efectivo_2Q', 2025, '2Q', 'success',
'Has protagonizado una recuperación espectacular en este segundo trimestre, logrando que tu ciclo de caja baje de los ciento cuarenta días a solo dieciséis días en el mes de junio. Este "borrón y cuenta nueva" financiero devuelve a tu firma la agilidad y el poder de inversión que se habían extraviado a principios de año comercial.',
'A pesar de este éxito rotundo, pasar de un extremo de lentitud a un extremo de velocidad tan alto puede generar una falsa sensación de seguridad operativa hoy. Debes recordar que la estabilidad es vital; un ciclo tan corto indica que estás operando al límite de tu capacidad administrativa para procesar cobros y pagos inmediatos.',
'Te recomiendo que documentes los procesos que te permitieron este milagro financiero y los conviertas en tu nuevo estándar operativo de oro. No permitas que la disciplina de cobranza se relaje ahora que tienes dinero en la cuenta; mantén este ritmo de dieciséis días como tu meta permanente para asegurar un crecimiento muy sano.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 50. Días de Cartera - DSO (2025 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dso_2Q', 2025, '2Q', 'success',
'La eficiencia en tu recaudo ha alcanzado niveles históricos este trimestre, situándose en un promedio de treinta y tres días. Has logrado educar a tus clientes sobre la importancia del pago oportuno, transformando tu cartera de un lastre pesado en una fuente de energía constante que alimenta diariamente tu operación comercial.',
'Todavía quedan algunos residuos de facturas lentas del trimestre pasado que promedian los cuarenta y tres días en los meses iniciales del periodo, lo que indica que la limpieza no ha sido total. Estos fantasmas de la cartera vieja aún consumen tiempo de tu equipo que podría estar dedicado a generar nuevos negocios estratégicos hoy.',
'Mi sugerencia es que cierres definitivamente el capítulo de las deudas antiguas mediante acuerdos de pago definitivos o descuentos por liquidación inmediata. Necesitas que tu reporte de cartera sea cristalino y que el plazo de treinta días sea una regla inviolable para cualquier cliente corporativo que hoy contrate tus servicios.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 51. Días de Inventario - DIO (2025 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dio_2Q', 2025, '2Q', 'success',
'Mantienes con éxito tu modelo de cero inventarios, lo cual ha sido clave para que la recuperación de la caja sea tan rápida y efectiva en este tramo del año. Al no tener que preocuparte por vender existencias, has podido centrar toda tu artillería gerencial en la cobranza y la prestación de servicios de alto valor neto real.',
'La falta de activos físicos te hace totalmente dependiente de tu cartera; si ésta falla de nuevo, tu única defensa sería el efectivo que hoy tienes guardado en tus cuentas. Esta desnudez de activos es tu mayor fortaleza operativa, pero también tu mayor vulnerabilidad financiera ante un frenazo inesperado del mercado este año.',
'Te aconsejo que aproveches la liquidez actual para invertir en el desarrollo de software propietario o metodologías cerradas que aumenten el valor intrínseco de tu firma. Así, aunque sigas sin tener inventario físico para la venta, estarás construyendo un patrimonio intelectual sólido que te dará una estabilidad financiera mucho mayor.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 52. Días de Pago - DPO (2025 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dpo_2Q', 2025, '2Q', 'success',
'Has logrado una gestión de pagos sumamente ágil, promediando los ocho días en este periodo de recuperación total. Ser un excelente pagador te ha permitido negociar mejores condiciones de servicio y asegurar que tus aliados estratégicos se sientan parte de tu éxito, consolidando tu reputación como el mejor cliente del sector.',
'Pagar en ocho días sigue siendo una velocidad de salida de dinero muy alta, incluso ahora que cobras mucho más rápido que antes. Estás perdiendo la oportunidad de usar ese efectivo por diez días adicionales para inversiones de corto plazo hoy en día en fondos de renta fija que podrían generarte réditos financieros extras.',
'Te recomiendo que estabilices tus pagos en un ciclo de quince días fijos, sin importar la rapidez con la que cobres tus facturas. Este pequeño margen de maniobra te dará una reserva de seguridad en tu cuenta bancaria que te protegerá ante cualquier eventualidad, asegurando que tu firma nunca vuelva a sufrir desbalance financiero.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 53. Rotación de Activos (2025 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_activos_2Q', 2025, '2Q', 'success',
'Tu rotación de activos ha mostrado un dinamismo excelente, alcanzando los dieciséis centésimos al mes en el cierre de junio. Estás logrando extraer el máximo valor de tu infraestructura corporativa, demostrando que tu modelo de consultoría es altamente escalable y eficiente cuando el entorno de recaudo se normaliza efectivamente.',
'A pesar de la mejoría, tu rotación aún tiene margen para crecer si logras diversificar tus fuentes de ingresos sin aumentar tu base de activos fijos. Tienes una estructura potente que hoy se usa de forma intermitente, lo que sugiere que podrías estar dejando dinero sobre la mesa al no aprovechar tus recursos el cien por ciento.',
'Debes enfocarte en la captación de proyectos de mantenimiento o consultoría recurrente que aseguren una rotación constante de tus activos durante todo el mes. Evita los picos de trabajo seguidos de periodos de inactividad; busca que el motor de tu empresa funcione a una velocidad constante y productiva para tu bolsillo.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 54. Rotación de Cartera (2025 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_cartera_2Q', 2025, '2Q', 'success',
'La velocidad de tu cobranza ha dado un salto cuántico, pasando de cuatro centésimos al mes a cuarenta y dos centésimos en el cierre de este trimestre. Has multiplicado por diez la agilidad de tu recaudo, lo que significa que tu dinero está rotando a una velocidad envidiable que garantiza salud y vitalidad para tu firma hoy.',
'Este incremento tan súbito en la rotación puede generar un desorden administrativo si no se cuenta con las herramientas de registro adecuadas para controlar el flujo de entrada masiva de recursos. Recaudar rápido es bueno, pero hacerlo sin una conciliación bancaria perfecta puede ocultar errores que te pasen factura comercial.',
'Mi recomendación es que automatices totalmente tu proceso de facturación y recaudo mediante un sistema integrado que te dé visibilidad en tiempo real de cada peso que entra. Aprovecha esta inercia positiva para limpiar cualquier saldo de dudoso cobro y empezar el próximo semestre con un presupuesto de ingresos saneado.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 55. Rotación de Inventarios (2025 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_inventarios_2Q', 2025, '2Q', 'success',
'Tu modelo de negocio sigue brillando por su agilidad extrema al mantener cero días de inventario físico en este periodo de alto crecimiento. Esta característica te ha permitido girar tu estrategia comercial de forma inmediata hacia los sectores que más rápido están pagando hoy, sin tener el lastre de mercancías acumuladas.',
'No rotar inventarios te obliga a ser el mejor en la rotación de servicios humanos, lo cual es mucho más complejo de gestionar emocionalmente que una bodega de productos. Tu mayor riesgo ahora es el agotamiento de tu equipo ante la alta demanda, lo que podría afectar la calidad y la percepción de valor de tus clientes finales.',
'Te sugiero que utilices la liquidez actual para contratar apoyo administrativo externo que libere a tus consultores estrella de tareas operativas mundanas hoy en día. Al optimizar tu inventario de horas hombre, lograrás que la rentabilidad por cada proyecto suba, manteniendo la eficiencia del inventario cero pero con un equipo sano.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 56. Rotación de Proveedores (2025 Q2)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_proveedores_2Q', 2025, '2Q', 'success',
'Has mantenido una rotación de proveedores muy dinámica, situándose cerca de doce veces al mes en promedio. Esta rapidez en tus pagos te sitúa como un cliente premium en el mercado, asegurándote el acceso a los mejores recursos y talentos disponibles para ejecutar tus proyectos de consultoría con una calidad inalcanzable.',
'Pagar doce veces al mes significa que estás realizando egresos casi de forma semanal, lo que genera una carga administrativa de tesorería agotadora y costosa hoy por hoy. Podrías estar simplificando tu operación financiera concentrando tus pagos en fechas específicas, liberando tiempo valioso de tu gerencia para temas productivos.',
'Mi recomendación es que adoptes un esquema de pagos quincenales para todos tus proveedores recurrentes. Esto mantendrá tu excelente reputación de pagador puntual pero te devolverá el control de tu agenda financiera, permitiéndote planificar tus flujos de salida con mucha mayor precisión estratégica para el final del año.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

--------------------------------------------------------------------------------
-- LOTE 8: 2025 Q3 (Consolidación y Madurez)
--------------------------------------------------------------------------------

-- 57. Ciclo de Conversión de Efectivo (2025 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ciclo_conversion_efectivo_3Q', 2025, '3Q', 'success',
'Has logrado consolidar un ciclo de caja envidiable de veinticuatro días promedio durante este tercer trimestre, neutralizando totalmente el efecto de "freno de mano" que sufriste el año pasado. Esta estabilidad demuestra que tu firma ha alcanzado una madurez operativa donde la liquidez ya no es una preocupación diaria hoy.',
'Aunque el ciclo es corto, la variabilidad entre julio y septiembre indica que todavía hay ligeros ajustes que realizar en la coordinación de tus recaudos más grandes del trimestre. Pasar de dieciséis a treinta y seis días de un mes a otro, aunque dentro de rangos sanos, aún genera pequeñas ondas de incertidumbre hoy.',
'Te recomiendo que establezcas una meta de "ciclo de caja plano" para el cierre del año, buscando que la diferencia entre los meses no supere los cinco días de margen comercial. Esta predictibilidad absoluta te permitirá planificar inversiones de largo plazo con una precisión quirúrgica, asegurando que cada peso tenga un destino rentable.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 58. Días de Cartera - DSO (2025 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dso_3Q', 2025, '3Q', 'success',
'Tu disciplina de cobranza se ha mantenido firme en los treinta y siete días promedio, rompiendo la maldición de los retrasos estacionales que históricamente afectaban a la firma en esta época. Has logrado que tus clientes respeten todos tus plazos de consultoría, asegurando un flujo de ingresos predecible que es el motor de tu tranquilidad.',
'Todavía observo un ligero repunte hacia los cuarenta y cuatro días en el mes de agosto, lo que sugiere que la cultura del pago después de vacaciones aún persiste en algunos de tus aliados. Estos siete días de retraso adicional representan una suma considerable que deja de rentar en tu cuenta bancaria hoy en día.',
'Mi sugerencia es que refuerces tu comunicación comercial un mes antes de los periodos vacacionales, recordando los plazos de vencimiento y ofreciendo facilidades de pago digital. Al anticiparte al comportamiento del cliente, lograrás que tus recaudos se mantengan inalterables sin importar el calendario festivo o administrativo nacional.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 59. Días de Inventario - DIO (2025 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dio_3Q', 2025, '3Q', 'success',
'Sigues liderando con una estructura de inventario cero, lo que te otorga una ventaja competitiva masiva frente a cualquier consultora tradicional del mercado. Al no tener costos de almacenamiento ni capital atrapado en stock físico, tu rentabilidad sobre el capital de trabajo es hoy una de las más altas de tu sector económico.',
'La ausencia de inventarios físicos te obliga a ser extremadamente cuidadoso con tu cartera de servicios; ya que tus facturas son tu único activo de cambio rápido. Cualquier retraso en la aceptación de un hito por parte de un cliente se traduce inmediatamente en un inventario de tiempo no facturable hoy por hoy.',
'Te aconsejo que implementes una bitácora de ejecución de proyectos en tiempo real que tus clientes puedan consultar digitalmente. Al hacer visible el progreso de tu inventario intelectual, reducirás los tiempos de aprobación y facturación, logrando que el ciclo de servicio-a-dinero sea aún más veloz y transparente para todos.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 60. Días de Pago - DPO (2025 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dpo_3Q', 2025, '3Q', 'success',
'Has optimizado de forma magistral tus plazos de pago, promediando los doce días durante este trimestre. Has logrado un equilibrio perfecto entre cumplir religiosamente con tus proveedores y mantener un nivel de liquidez que te permite reaccionar ante cualquier oportunidad de negocio inesperada hoy.',
'A pesar de la optimización, todavía pagas tres veces más rápido de lo que cobras, lo que sigue siendo una transferencia de liquidez gratuita hacia tu cadena de valor. Aunque tu caja es sólida, esta práctica limita tu capacidad de autofinanciación total, obligándote a mantener reservas de capital mayores a las necesarias.',
'Te sugiero que negocies con tus proveedores clave el pago a los veinte días, alineando este egreso con la segunda quincena de cada mes. Al ganar esos días adicionales de permanencia del dinero en tu bolsillo, podrías estar financiando pequeñas mejoras tecnológicas para tu equipo sin tocar tus ahorros actuales.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 61. Rotación de Activos (2025 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_activos_3Q', 2025, '3Q', 'success',
'Tu rotación de activos se ha mantenido en un sólido nivel de quince centésimos por mes, demostrando que tu infraestructura operativa está plenamente sincronizada con tu capacidad de ventas. Estás logrando que cada recurso de la empresa rinda al máximo de su capacidad para generar facturación real hoy mismo para el balance.',
'Observo que la rotación se ha estancado en este nivel durante los últimos seis meses, lo que indica que has alcanzado un techo de eficiencia comercial. Para seguir creciendo, necesitas buscar formas de optimizar tus precios operativos, ya que el volumen de uso de tus activos físicos parece haber llegado a su límite actual.',
'Te recomiendo que realices un análisis de rentabilidad por cliente y que priorices aquellos proyectos que generen mayor margen con el mismo uso de activos. Al enfocarte en el valor agregado y no solo en el volumen, lograrás que tu rotación de activos adquiera una calidad financiera superior para tus dividendos anuales.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 62. Rotación de Cartera (2025 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_cartera_3Q', 2025, '3Q', 'success',
'La velocidad de rotación de tu cartera se ha estabilizado en un promedio de veintisiete centésimos al mes, una cifra que garantiza una salud financiera robusta. Has logrado que el flujo de entrada de efectivo sea constante, permitiéndote operar con una tranquilidad que muchas empresas de tu tamaño envidiarían hoy por hoy.',
'No obstante, la rotación bajó a dieciocho centésimos en agosto, lo que evidencia que la vigilancia sobre los cobros debe ser perpetua y no puede relajarse en ningún periodo vacacional. Una rotación fluctuante te obliga a mantener excesos de caja ociosa para cubrir posibles baches de recaudo comercial o administrativo.',
'Mi sugerencia es que implementes una política de premios por pronto pago para aquellos clientes que mantengan una rotación superior a la media de tu cartera. Al incentivar la velocidad, convertirás a tus propios deudores en aliados de tu liquidez neta, asegurando que tu dinero siempre esté en movimiento circular.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 63. Rotación de Inventarios (2025 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_inventarios_3Q', 2025, '3Q', 'success',
'Mantienes tu posición de vanguardia con cero días de inventario físico, lo que te permite concentrar toda tu energía en la innovación de tus servicios. Al no tener mercancía ociosa, tu firma es extremadamente resiliente ante cambios rápidos en el mercado consultor o administrativo de este tercer trimestre estratégico hoy.',
'El riesgo de este modelo es que tu capacidad instalada humana es hoy tu único factor de stock y éste se encuentra limitado por el tiempo físico. No tener inventarios físicos te quita la posibilidad de realizar ventas inmediatas que inyecten efectivo extra sin requerir de tu presencia o la de tu equipo experto.',
'Te sugiero que desarrolles una línea de productos tecnológicos estandarizados que puedas vender de forma masiva y automática sin requerir consultoría directa. Esto te daría una rotación similar a la de un inventario físico, diversificando tus fuentes de ingresos sin comprometer tu tiempo vital de gestión y dirección.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 64. Rotación de Proveedores (2025 Q3)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_proveedores_3Q', 2025, '3Q', 'success',
'Has mantenido una rotación de ocho veces al mes en tus pagos a terceros, lo que demuestra un respeto profundo por todos tus compromisos financieros. Esta consistencia es la que te permite hoy contar con los mejores talentos del país, quienes están siempre dispuestos a dar un paso extra por asegurar tu éxito comercial.',
'Sientes la presión de realizar ocho ciclos de pago al mes, lo que parece excesivo para el volumen de facturación externa que hoy manejas en el día a día. Estás dedicando demasiados recursos a la gestión de egresos pequeños, en lugar de consolidar tus pagos y dedicar ese tiempo a la captación de nuevos negocios.',
'Te recomiendo que centralices tus pagos en un solo día de la quincena para todos los proveedores pequeños o recurrentes de la firma. Al simplificar tu gestión de tesorería acumulada, reducirás los errores operativos y ganarás una claridad mental invaluable para dirigir la empresa hacia objetivos mucho más rentables hoy.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

--------------------------------------------------------------------------------
-- LOTE 9: 2025 Q4 (El Cierre de Oro)
--------------------------------------------------------------------------------

-- 65. Ciclo de Conversión de Efectivo (2025 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'ciclo_conversion_efectivo_4Q', 2025, '4Q', 'success',
'Has culminado el año 2025 con una eficiencia de flujo de caja magistral, logrando un ciclo promedio de solo veinte días frente a los noventa y cuatro que tenías al inicio del año pasado. Esta transformación radical de tu estructura de liquidez convierte a tu firma en una máquina de generar efectivo neto capaz de autofinanciarse.',
'La perfección operativa alcanzada este trimestre no debe llevarte a bajar la guardia durante el próximo periodo vacacional de inicio de año. Mantener un ciclo de veinte días requiere de una coordinación quirúrgica entre tus equipos; cualquier desconexión en este engranaje podría devolverte a las demoras que ya superaste.',
'Te recomiendo que utilices este excedente de liquidez para crear un fondo de reserva institucional que te dé total autonomía frente al sector bancario en el 2026. Con un ciclo de caja tan corto, tienes el poder de negociar descuentos por pronto pago con todos tus aliados, convirtiendo tu eficiencia en rentabilidad pura.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 66. Días de Cartera - DSO (2025 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dso_4Q', 2025, '4Q', 'success',
'Has logrado estabilizar tu recaudo en los treinta y un días promedio, una cifra de excelencia que garantiza que tu facturación se convierta en dinero contante y sonante en tiempo récord. Has eliminado la cultura del retraso en tus clientes, consolidando una relación comercial basada en la agilidad y el respeto mutuo de los acuerdos.',
'Incluso con este éxito, observo que diciembre tiende a relajarse hacia los treinta y ocho días, lo que indica que el cierre administrativo de tus deudores aún presiona ligeramente tu flujo de entrada neto. Esta pequeña demora de una semana representa hoy un capital que podrías estar disfrutando como utilidad líquida institucional.',
'Mi sugerencia es que cierres tu facturación de diciembre antes del día quince de cada año para evitar quedar atrapado en los cierres contables pesados de tus clientes. Al adelantarte al calendario administrativo, asegurarás que el dinero entre en tu cuenta antes de que termine el ejercicio fiscal, maximizando tu caja anual.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 67. Días de Inventario - DIO (2025 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dio_4Q', 2025, '4Q', 'success',
'Terminas el año con una gestión inmaculada de inventarios en cero, ratificando tu modelo de servicios puros como la estrategia financiera más ganadora para tu firma hoy. No poseer activos corrientes pesados te da una libertad absoluta para mover tu capital hacia las mejores oportunidades de rentabilidad inmediata del mercado corporativo.',
'Tu riesgo hoy es la trampa de la consultoría: al no tener inventarios, tu capacidad de generar ingresos depende totalmente del tiempo humano de tus expertos. Si la demanda supera tu capacidad de entrega, podrías estar perdiendo oportunidades valiosas por no tener productos terminados estandarizados para la venta masiva hoy por hoy.',
'Te aconsejo que transformes tus mejores casos de éxito en productos de consultoría empaquetada que requieran poca intervención humana directa para su entrega. Esto te permitiría tener una rotación de pseudo-inventario digital que escalaría tus ventas sin aumentar el estrés de tu equipo, manteniendo la eficiencia del inventario cero.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 68. Días de Pago - DPO (2025 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'dpo_4Q', 2025, '4Q', 'success',
'Has mantenido una política de pagos de once días promedio, lo que te posiciona como un socio comercial de primer nivel para tus proveedores estratégicos al cierre del año. Estás honrando tus compromisos con una celeridad admirable que te garantiza prioridad absoluta en el mercado de servicios profesionales y técnicos hoy.',
'Ser un pagador tan rápido, mientras tus clientes te pagan en treinta días, sigue generando una pequeña brecha de capital de trabajo que podrías estar financiando tú mismo de forma gratuita. Estás entregando tu efectivo veinte días antes de lo estrictamente necesario según los estándares comerciales promedio del país hoy en día.',
'Te recomiendo que para el próximo año fiscal, establezcas una política de pagos a quince días fijos para todos tus aliados comerciales recurrentes. Esos cuatro días de margen adicional te permitirán gestionar tu tesorería con una calma mucho mayor, asegurando que tu firma mantenga siempre un saldo positivo y robusto.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 69. Rotación de Activos (2025 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_activos_4Q', 2025, '4Q', 'success',
'Tu rotación de activos cierra el año en un sólido nivel de quince centésimos al mes, demostrando que tu infraestructura está trabajando a pleno rendimiento bajo tu dirección gerencial. Has logrado equilibrar perfectamente tu inversión corporativa con un nivel de facturación constante que justifica plenamente cada peso del balance hoy.',
'Observo que has llegado a una meseta de productividad donde tus activos físicos ya no pueden generar más ingresos por sí mismos sin una renovación estratégica integral. Tienes una estructura eficiente, pero que parece haber agotado su capacidad de asombro financiero en el balance, lo que te obliga a repensar tu expansión para el próximo año.',
'Te sugiero que realices una auditoría tecnológica para identificar software que pueda automatizar la entrega de tus servicios actuales de forma masiva. Al reducir la intervención humana operativa, tu rotación de activos mejorará drásticamente, permitiéndote facturar mucho más con la misma base instalada de recursos materiales que hoy posees.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 70. Rotación de Cartera (2025 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_cartera_4Q', 2025, '4Q', 'success',
'La velocidad de rotación de tus recaudos ha sido excepcional en este cierre de año, alcanzando los cuarenta y cinco centésimos al mes en noviembre. Has logrado que tu dinero vuele a tu cuenta bancaria, garantizando que tu firma cierre el ciclo fiscal con una liquidez envidiable y lista para nuevos retos comerciales hoy.',
'Aunque la rotación es alta, la caída a veintiséis centésimos en diciembre muestra que el final del año siempre intenta frenar tu dinamismo financiero corporativo habitual. No debes permitir que la inercia del mercado te robe velocidad en el recaudo; cada día que el dinero no está en tu cuenta es un costo de oportunidad directo hoy.',
'Mi recomendación es que implementes un sistema de facturación electrónica con recordatorios automáticos de pago para todos tus clientes corporativos permanentes. Al eliminar el factor humano del cobro, asegurarás que tu rotación se mantenga en niveles de excelencia durante todos los meses del calendario, sin importar la temporada actual.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 71. Rotación de Inventarios (2025 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_inventarios_4Q', 2025, '4Q', 'success',
'Mantienes con total éxito tu estatus de empresa liviana con cero inventarios físicos, lo que te permite cerrar el año fiscal con una flexibilidad financiera que es la envidia de tus competidores. Tu capacidad de adaptarte a los cambios es total, al no tener stock que te amarre a estrategias comerciales que hoy se consideran obsoletas.',
'La falta de inventarios tangibles te obliga a ser el mejor en la gestión de tu capital intelectual corporativo, el cual es inmaterial y difícil de cuantificar. Si tu equipo de expertos no está plenamente motivado, tu inventario real se verá afectado y tu capacidad de entrega de valor neto decaerá notablemente e el corto plazo.',
'Te sugiero que inviertas una parte de tus utilidades en capacitación avanzada para tu equipo de consultores principales hoy mismo. Al aumentar la calidad de tu "inventario humano", estarás garantizando que la rotación de tus servicios sea de un valor cada vez mayor para tus clientes, elevando tu rentabilidad sin activos físicos.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;

-- 72. Rotación de Proveedores (2025 Q4)
INSERT INTO activity.insights_ai (empresa_id, indicador_key, periodo_ano, period_key, tipo, analisis_positivo, analisis_negativo, recomendacion, metodologia)
VALUES (3099, 'rotacion_proveedores_4Q', 2025, '4Q', 'success',
'Has estabilizado tu rotación de pagos a terceros en niveles de ocho veces al mes, lo que proyecta una imagen de solvencia y seriedad inmejorable ante todo el mercado externo. Estás cumpliendo con todos tus aliados de forma puntual, lo que te otorga un poder de negociación enorme para exigir calidad máxima en el cierre de año comercial.',
'Pagar ocho veces al mes mientras cobras una sola vez en el periodo sigue siendo un desbalance que te genera un estrés administrativo innecesario en tu tesorería diaria. Podrías estar simplificando tu vida gerencial centralizando tus pagos, sin que esto afecte tu excelente reputación actual de buen pagador corporativo ante terceros.',
'Te recomiendo que para el inicio del nuevo ciclo fiscal, adoptes un esquema de pagos centralizado el último viernes de cada mes. Esto te dará un control absoluto sobre tu flujo de salida y te permitirá dedicar tu tiempo a la estrategia de crecimiento masivo que hoy tienes planeada para liderar tu sector de consultoría.',
'Protocolo Actividad Bloque C v1.0')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET analisis_positivo = EXCLUDED.analisis_positivo, analisis_negativo = EXCLUDED.analisis_negativo, recomendacion = EXCLUDED.recomendacion;
