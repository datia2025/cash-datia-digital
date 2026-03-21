La API devuelve el campo period_key de la base de datos, pero cuando inyectamos los trimestres via POST, el servidor puede no estar guardando ese campo. Déjame verificar qué devuelve la API para los insights con period_key:

Ran background command
…\MASCONSULTA > python -c "import json, urllib.request; f = urllib.request.urlopen('https://datia-liquidity-worker.coaba7.easypanel.host/api/insights/3104'); data = json.loads(f.read().decode('utf-8')); sample = [ins for ins in data['insights'] if ins['indicador_key'] == 'ebitda'][:4]; print(json.dumps(sample, indent=2, ensure_ascii=False))"
[
  {
    "id": 198,
    "empresa_id": 3104,
    "indicador_key": "ebitda",
    "periodo_ano": 2023,
    "tipo": "success",
    "analisis_positivo": "Durante este 4Q, la caja operativa generada por tus servicios principales fue notable, permitiendo que la empresa se autofinanciara sin recurrir a socios externos. Lograste un margen de dinero libre suficiente para cubrir salarios y gastos b�sicos de oficina con total solvencia.",
    "analisis_negativo": "Detectamos que el incremento en los gastos fijos durante el cierre de este 4Q comprimi� ligeramente el margen disponible, debido a que la contrataci�n de nuevos especialistas especializados no se tradujo de forma inmediata en una mayor facturaci�n bruta hacia los clientes externos.",
    "recomendacion": "Nuestra recomendaci�n es implementar un control semanal de las horas facturables por consultor, asegurando que el equipo administrativo no crezca m�s r�pido que las ventas reales de la firma consultora, manteniendo as� un flujo de caja operativa del 13% constante.",
    "metodologia": "Protocolo Trimestral Certificado - 4Q",
    "generado_por": "antigravity",
    "created_at": "2026-03-19T22:16:12.091083",
    "updated_at": "2026-03-19T22:16:12.091083"
  },
  {
    "id": 222,
    "empresa_id": 3104,
    "indicador_key": "ebitda",
    "periodo_ano": 2024,
    "tipo": "success",
    "analisis_positivo": "Durante este 4Q, la caja operativa generada por tus servicios principales fue notable, permitiendo que la empresa se autofinanciara sin recurrir a socios externos. Lograste un margen de dinero libre suficiente para cubrir salarios y gastos b�sicos de oficina con total solvencia.",
    "analisis_negativo": "Detectamos que el incremento en los gastos fijos durante el cierre de este 4Q comprimi� ligeramente el margen disponible, debido a que la contrataci�n de nuevos especialistas especializados no se tradujo de forma inmediata en una mayor facturaci�n bruta hacia los clientes externos.",
    "recomendacion": "Nuestra recomendaci�n es implementar un control semanal de las horas facturables por consultor, asegurando que el equipo administrativo no crezca m�s r�pido que las ventas reales de la firma consultora, manteniendo as� un flujo de caja operativa del 13% constante.",
    "metodologia": "Protocolo Trimestral Certificado - 4Q",
    "generado_por": "antigravity",
    "created_at": "2026-03-19T22:16:21.822382",
    "updated_at": "2026-03-19T22:16:21.822382"
  },
  {
    "id": 246,
    "empresa_id": 3104,
    "indicador_key": "ebitda",
    "periodo_ano": 2025,
    "tipo": "success",
    "analisis_positivo": "Durante este 4Q, la caja operativa generada por tus servicios principales fue notable, permitiendo que la empresa se autofinanciara sin recurrir a socios externos. Lograste un margen de dinero libre suficiente para cubrir salarios y gastos b�sicos de oficina con total solvencia.",
    "analisis_negativo": "Detectamos que el incremento en los gastos fijos durante el cierre de este 4Q comprimi� ligeramente el margen disponible, debido a que la contrataci�n de nuevos especialistas especializados no se tradujo de forma inmediata en una mayor facturaci�n bruta hacia los clientes externos.",
    "recomendacion": "Nuestra recomendaci�n es implementar un control semanal de las horas facturables por consultor, asegurando que el equipo administrativo no crezca m�s r�pido que las ventas reales de la firma consultora, manteniendo as� un flujo de caja operativa del 13% constante.",
    "metodologia": "Protocolo Trimestral Certificado - 4Q",
    "generado_por": "antigravity",
    "created_at": "2026-03-19T22:16:31.423983",
    "updated_at": "2026-03-19T22:16:31.423983"
  }
]
Exit code 0
Checked command status
Ran background command
…\MASCONSULTA > python -c "import json, urllib.request; f = urllib.request.urlopen('https://datia-liquidity-worker.coaba7.easypanel.host/api/insights/3104'); data = json.loads(f.read().decode('utf-8')); sample = [ins for ins in data['insights'] if ins['indicador_key'] == 'ebitda'][:2]; [print('Keys:', list(s.keys())) for s in sample]"
Keys: ['id', 'empresa_id', 'indicador_key', 'periodo_ano', 'tipo', 'analisis_positivo', 'analisis_negativo', 'recomendacion', 'metodologia', 'generado_por', 'created_at', 'updated_at']
Keys: ['id', 'empresa_id', 'indicador_key', 'periodo_ano', 'tipo', 'analisis_positivo', 'analisis_negativo', 'recomendacion', 'metodologia', 'generado_por', 'created_at', 'updated_at']
Exit code 0
Checked command status
El problema está confirmado: la API no devuelve el campo period_key. La base de datos no tiene esa columna — los insights se guardan solo por indicador_key + periodo_ano, sin distinción trimestral. El script de inyección guardó los textos trimestrales pero todos terminaron sobreescribiéndose, quedando solo el último (el de 4Q).

La solución real es: incluir el trimestre en el indicador_key (ej: ebitda_1Q, ebitda_2Q) para distinguirlos, ya que la columna period_key no existe en el esquema.

Déjame verificar cómo el frontend construye la búsqueda para asegurar que la solución sea compatible:

Analyzed
Ahora entiendo todo el flujo completo. La búsqueda en línea 162-166 hace:

js
ins.year === parseInt(yearFilter) && 
(ins.period_key === quarterFilter || (quarterFilter === 'all' && ins.period_key === 'Annual'))
El campo period_key NO existe en la DB (la API no lo retorna). La solución correcta es agregar la normalización en 

api.js
 para derivar el period_key desde la metodologia del insight (que sí se almacena), ya que guardamos el trimestre allí. Pero la mejor solución a largo plazo es que cuando el period_key no está en la DB, el frontend use el insight 

Annual
 para todos los filtros de trimestre. Vamos a actualizar el 

api.js
:

Analyzed
Error
You have exhausted your capacity on this model. Your quota will reset after 165h38m38s.
