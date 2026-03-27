"""
Appends 8 missing quarterly Dictamen records to actividad_bloque_a_3099.sql
Records: 2023 (1Q-4Q) and 2024 (1Q-4Q) for insight-actividad-ai
"""

new_records = """

-- ============================================================
-- REGISTROS TRIMESTRALES FALTANTES: 2023 y 2024
-- Completa la matriz Bloque A para todos los años y periodos.
-- ============================================================

-- 2023 1Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_1Q', 2023, '1Q',
'Durante este primer trimestre de 2023 tu operacion funciono con una agilidad de manual, manteniendo el tiempo de recuperacion de tu capital en niveles minimos. Tu ciclo operativo arranco el ano con las tuercas bien apretadas, lo que te dio liquidez inmediata para sostener compromisos iniciales sin necesidad de apalancar recursos de terceros ni acudir a financiacion costosa.',
'El talon de Aquiles de este arranque fue la practica de pago casi de contado a proveedores, con plazos que no superaban los dos dias. Estabas entregando tu caja antes de que la labor fuera siquiera facturada en su totalidad, lo que te quito margen de maniobra ante cualquier gasto imprevisto o demora menor de parte de tus clientes corporativos.',
'Aprovecha el buen dinamismo de recaudo que tienes en este trimestre para comenzar a negociar plazos de pago de al menos quince dias con tus aliados mas estables. Retener el dinero esos dias sin dejar de ser un pagador puntual es la palanca mas simple para construir un colchon financiero que te proteja en los trimestres de mayor estres operativo.',
'Dictamen Trimestral 1Q 2023')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2023 2Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_2Q', 2023, '2Q',
'El segundo trimestre de 2023 mantuvo la tonica de alta eficiencia en el recaudo, con un ciclo de conversion de efectivo que se sostuvo en cifras de un solo digito. Tu operacion demostro que no necesitaba capital externo para funcionar, ya que el dinero de cada servicio prestado regresaba a tu cuenta antes de que terminara el mes en curso.',
'La contracara de esta velocidad fue una ausencia total de apalancamiento comercial con proveedores. Seguiste pagando al dia siguiente de cada compra de servicio, lo que te impedia usar el credito de tus aliados como fuente gratuita de financiacion. Esta practica, aunque honrable, drenaba tu efectivo disponible con una velocidad que no dejaba margen de holgura operativa.',
'Es el momento de institucionalizar una politica de credito con tus tres proveedores principales. Proppon plazos de pago de veinte dias argumentando crecimiento y mayor volumen de contratos; a cambio, ofrece puntualidad absoluta. Esta negociacion sencilla puede liberar un flujo de caja mensual significativo para reinversion y fortaleza financiera inmediata.',
'Dictamen Trimestral 2Q 2023')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2023 3Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_3Q', 2023, '3Q',
'El tercer trimestre de 2023 consolido el patron de alta rotacion operativa que caracterizo tu ano: ciclos de caja cortos y un recaudo de cartera que mantuvo el dinero entrando con fluidez. Son los meses en que tu firma mostro la madurez de una organizacion dominando su propio flujo financiero con criterio solido y disciplina consistente.',
'La debilidad que persiste es la escasa negociacion con proveedores, manteniendose los plazos de pago por debajo de los cinco dias. En los meses de verano, donde el ritmo comercial suele bajar, ese pago acelerado presiono tu caja justo cuando la entrada de nuevos contratos era mas lenta, dejando poco espacio de maniobra operativo.',
'Este trimestre debe ser tu punto de arranque para construir un fondo de reserva operativa. Con los excedentes de liquidez generados por la eficiencia en recaudo, destina entre un diez y quince por ciento de cada cobro a un fondo de contingencia. Al cierre de ano tendras un amortiguador real para los retos del primer trimestre siguiente del ejercicio.',
'Dictamen Trimestral 3Q 2023')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2023 4Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_4Q', 2023, '4Q',
'Cerraste 2023 con el mejor cierre operativo del ano: un ciclo de conversion de efectivo de apenas tres dias y un recaudo de cartera en menos de veinte. Este resultado de excelencia refleja una sincronía perfecta entre tu gestion comercial y tu administracion financiera que muy pocas firmas de tu nivel logran alcanzar en el mismo ejercicio fiscal.',
'El unico punto de atencion es que este desempeno espectacular de fin de ano descanso sobre la misma debilidad de siempre: proveedores pagados practicamente de contado. Aunque el ciclo corto lo compensa, entrar al nuevo ano sin una politica de apalancamiento establecida significa que el riesgo de 2024 quedo sin blindar anticipadamente por parte de la gerencia.',
'Usa el impulso de este cierre brillante para formalizar ante tu junta una politica de capital de trabajo para 2024. Define metas de DSO maximo de treinta dias y DPO minimo de quince dias, y ponlas por escrito como compromiso gerencial. Ese orden te dara la estructura financiera que tu talento operativo ya merece tener en el proximo ciclo.',
'Dictamen Trimestral 4Q 2023')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2024 1Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_1Q', 2024, '1Q',
'A pesar de que enero fue un golpe severo con una cartera que llego a los doscientos veinticuatro dias, tu capacidad de reaccion durante febrero y marzo fue admirable. Lograste reducir el ciclo de caja de forma sostenida mes a mes, demostrando que tu firma tiene los reflejos gerenciales necesarios para salir de baches sin derrumbarse ante la presion.',
'El promedio de ciento treinta y seis dias de ciclo en este trimestre es la cifra mas preocupante de los ultimos doce meses. Pasar de tres dias en diciembre a cinco meses en enero implica un colapso en la transicion entre ejercicios fiscales que no puedes volver a permitir. Tu liquidez quedo practicamente paralizada durante el mes mas critico del ejercicio.',
'Debes implementar antes del primero de enero un protocolo de arranque de ano que active la cobranza de cartera pendiente antes del cierre de diciembre. El primer dia del ano no puede ser el primero en que tu equipo piensa en cobrar. Esta medida sencilla reduciria el impacto del primer trimestre y salvaria meses de angustia financiera en el futuro.',
'Dictamen Trimestral 1Q 2024')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2024 2Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_2Q', 2024, '2Q',
'La recuperacion del segundo trimestre de 2024 fue uno de los mejores momentos de gestion operativa del ano. Redujiste tu ciclo de conversion de efectivo de ciento treinta y seis dias a solo cincuenta y siete en promedio, lo que equivale a haberle devuelto a tu caja meses enteros de liquidez atrapada y demostrar capacidad de ejecucion bajo presion.',
'Aunque la mejoria fue notable, setenta y tres dias promedio de cartera indica que tus clientes estan usando tu empresa como fuente de financiacion gratuita por mas de dos meses. El hecho de que la recuperacion dependa de esfuerzos extraordinarios y no de un proceso estandar es el riesgo mas latente que hoy tienes en tu estructura financiera.',
'Aprovecha el impulso de este trimestre para redactar una politica formal de credito con condiciones claras de plazo, mora e incentivos por pronto pago. Que este nivel de eficiencia no sea producto del esfuerzo heroico sino de un proceso que funcione automaticamente. Con la politica correcta, el tercer trimestre puede consolidar este ritmo sin desgastar al equipo.',
'Dictamen Trimestral 2Q 2024')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2024 3Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_3Q', 2024, '3Q',
'El tercer trimestre de 2024 mantuvo una estabilidad operativa razonable, con un ciclo de caja promediando los ochenta y seis dias. Has logrado que la organizacion funcione dentro de un rango predecible despues del caos del primer trimestre, lo que ya es un logro de gestion que le da certeza a tu planificacion de flujos futuros dentro del ano.',
'El mes de agosto fue un retroceso puntual que llevo el ciclo hasta los ciento veintisiete dias, evidenciando que la estacionalidad vacacional sigue siendo tu punto ciego. Tu operacion no tiene mecanismos automaticos para defender la liquidez cuando el mercado se desacelera; dependes de la reaccion manual en lugar de protocolos preventivos y alertas tempranas.',
'Instala un semaforo de cartera que te alerte cuando cualquier cliente supere los cuarenta y cinco dias sin pago antes de que llegues a los noventa. Esa alerta temprana te daria el tiempo suficiente para negociar acuerdos sin presion y evitar que agosto vuelva a ser el mes que le roba el impulso a toda la recuperacion del semestre comercial.',
'Dictamen Trimestral 3Q 2024')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;

-- 2024 4Q
INSERT INTO insights (empresa_id, indicador_key, periodo_ano, period_key, positivo, negativo, recomendacion, metodologia)
VALUES (3099, 'insight-actividad-ai_4Q', 2024, '4Q',
'Cerraste el cuarto trimestre de 2024 con una tendencia de estabilizacion muy alentadora, bajando el ciclo de caja a ochenta y un dias promedio. Esta mejora respecto al trimestre anterior demuestra que el equipo tiene la capacidad de apretar las tuercas justo cuando el ano lo exige, terminando en una posicion mucho mas sana de lo que inicio el ejercicio.',
'El cierre en noventa dias de cartera sigue siendo casi tres veces mas lento que el estandar de excelencia que tenias al final del 2023. El ano te enseno que sin una politica de credito formal, los indicadores oscilan al ritmo de la voluntad de los clientes y no al ritmo de tu presupuesto. Esa dependencia externa es tu mayor vulnerabilidad estructural.',
'Antes de cerrar diciembre, ejecuta una campana intensiva de saneamiento de cartera ofreciendo pequenos descuentos por pago inmediato a clientes con facturas de mas de sesenta dias. Entra al 2025 con la cartera limpia y haras que el arranque del proximo ano sea radicalmente distinto al desastre de enero que acabas de superar este ano.',
'Dictamen Trimestral 4Q 2024')
ON CONFLICT (empresa_id, indicador_key, periodo_ano, period_key) DO UPDATE SET positivo = EXCLUDED.positivo, negativo = EXCLUDED.negativo, recomendacion = EXCLUDED.recomendacion, metodologia = EXCLUDED.metodologia;
"""

target = r"database\3099\Actividad\actividad_bloque_a_3099.sql"

with open(target, 'a', encoding='utf-8') as f:
    f.write(new_records)

print(f"Appended 8 records to {target}")
