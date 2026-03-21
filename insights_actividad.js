// ============================================================================
// REPOSITORIO DE HALLAZGOS DE AUDITORÍA: ACTIVIDAD (EFICIENCIA OPERATIVA)
// Estándar Matriz 231 - MAS CONSULTA SAS
// ============================================================================

const indicatorMetadataActividad = {
    ciclo_efectivo: {
        name: { es: "Ciclo de Conversión de Efectivo", en: "Cash Conversion Cycle" },
        definition: { es: "Tiempo total que tarda tu operación en volver a ser caja.", en: "Total time for operations to return to cash." },
        formula: "DSO + DIO - DPO",
        target: "< 45 días"
    },
    dso: {
        name: { es: "Días de Cartera (DSO)", en: "Days Sales Outstanding" },
        definition: { es: "Días promedio que tus clientes tardan en pagarte.", en: "Average days customers take to pay." },
        formula: "(Cuentas por Cobrar / Ventas) * 365",
        target: "< 30 días"
    },
    dio: {
        name: { es: "Días de Inventario (DIO)", en: "Days Inventory Outstanding" },
        definition: { es: "Días que tus servicios o insumos permanecen en bodega.", en: "Days inventory remains in stock." },
        formula: "(Inventario / Costo Ventas) * 365",
        target: "< 15 días"
    },
    dpo: {
        name: { es: "Días de Pago (DPO)", en: "Days Payables Outstanding" },
        definition: { es: "Días que logras financiarte a través de tus proveedores.", en: "Days to pay suppliers (leverage)." },
        formula: "(Cuentas por Pagar / Costo Ventas) * 365",
        target: "> 45 días"
    },
    rotacion_activos: {
        name: { es: "Rotación de Activos", en: "Asset Turnover" },
        definition: { es: "Cuántas veces tus activos generan ventas en el año.", en: "How many times assets generate sales." },
        formula: "Ventas / Activos Totales",
        target: "> 2.0 x"
    },
    rotacion_cartera: {
        name: { es: "Rotación de Cartera", en: "Accounts Receivable Turnover" },
        definition: { es: "Veces que logras cobrar tu cartera promedio al año.", en: "Times you collect average A/R per year." },
        formula: "Ventas / Cuentas por Cobrar",
        target: "> 12 x"
    },
    rotacion_inventarios: {
        name: { es: "Rotación de Inventarios", en: "Inventory Turnover" },
        definition: { es: "Veces que renuevas tu stock operativo en el periodo.", en: "Times you renew operational stock per period." },
        formula: "Costo de Ventas / Inventario",
        target: "> 24 x"
    },
    rotacion_proveedores: {
        name: { es: "Rotación de Proveedores", en: "Accounts Payable Turnover" },
        definition: { es: "Frecuencia con la que cancelas tus deudas comerciales.", en: "Frequency of paying commercial debt." },
        formula: "Costo de Ventas / Cuentas por Pagar",
        target: "< 8 x"
    }
};

const auditRepositoryActividad = {
    "2025": {
        "Annual": {
            report: {
                status: "warning",
                analisis_positivo: "Has logrado mantener una rotación de activos saludable sobre las 2 veces, lo que indica que tu operación sigue siendo productiva a pesar de la presión externa.",
                analisis_negativo: "Tu ciclo de efectivo se ha estirado por encima de los 55 días. Estás financiando a tus clientes con caja operativa que necesitas para otros proyectos.",
                recomendacion: "Ajusta tu política comercial para exigir pagos a 15 días y utiliza el pronto pago como herramienta de negociación inmediata."
            }
        },
        "1Q": {
            report: {
                status: "success",
                analisis_positivo: "Iniciaste el año con un ritmo de cobro excepcional. La cartera se movió rápido y liberó flujo de caja justo cuando más se necesitaba para el arranque.",
                analisis_negativo: "La rotación de proveedores está siendo demasiado frecuente. Estás pagando más rápido de lo que cobras, perdiendo apalancamiento gratuito de tus aliados.",
                recomendacion: "Negocia con tus aliados estratégicos para extender los plazos de pago a 45 días sin afectar tu historial crediticio."
            }
        },
        "2Q": {
            report: {
                status: "warning",
                analisis_positivo: "La gestión de stocks operativos ha sido impecable, evitando que el dinero se quede 'dormido' en insumos que no se están facturando.",
                analisis_negativo: "Notamos un incremento en los días de cartera. Algunos clientes están excediendo los plazos pactados y esto impacta tu liquidez inmediata.",
                recomendacion: "Establece un sistema de recordatorios automáticos 5 días antes del vencimiento de cada factura para prevenir retrasos."
            }
        },
        "3Q": {
            report: {
                status: "danger",
                analisis_positivo: "La rotación de activos se mantiene estable, lo que demuestra que tus recursos físicos y humanos están bien aprovechados en la generación de ingresos.",
                analisis_negativo: "El ciclo comercial se ha deteriorado este trimestre. El hueco entre lo que pagas y lo que cobras se está haciendo más difícil de llenar.",
                recomendacion: "Urge una auditoría de cartera para identificar los 3 clientes con mayor mora y ejecutar acciones de cobro jurídico si es necesario."
            }
        },
        "4Q": {
            report: {
                status: "success",
                analisis_positivo: "Lograste cerrar el año recuperando eficiencia. El esfuerzo de cobranza del último trimestre fue clave para equilibrar nuevamente tu ciclo de caja.",
                analisis_negativo: "A pesar de la mejora, dependes mucho de los picos de fin de año. La eficiencia debería ser constante y no solo por estacionalidad de cierre.",
                recomendacion: "Mantén el rigor de cobranza del trimestre actual durante el inicio del 2026 para asegurar un arranque con caja fuerte."
            }
        }
    },
    "2024": {
        "Annual": {
            report: {
                status: "success",
                analisis_positivo: "El 2024 fue un año de consolidación técnica. Lograste reducir el ciclo de efectivo promedio en 12 días comparado con el año anterior, liberando capital.",
                analisis_negativo: "La rotación de inventarios operativos aún muestra cuellos de botella en la entrega de proyectos largos, lo que retiene facturación potencial.",
                recomendacion: "Segmenta tus proyectos por hitos de facturación mensual para que la rotación de activos no dependa de entregas finales."
            }
        },
        "1Q": {
            report: {
                status: "warning",
                analisis_positivo: "Buen inicio de año en la gestión de proveedores; lograste estirar el DPO permitiendo un respiro a la caja durante los meses de baja venta.",
                analisis_negativo: "Vemos una relajación en el recaudo de cartera tras el cierre del año anterior. Los días de calle están subiendo por encima de lo presupuestado.",
                recomendacion: "Refuerza el incentivo de pronto pago para clientes corporativos durante el primer trimestre."
            }
        },
        "2Q": {
            report: {
                status: "success",
                analisis_positivo: "Excelente rotación de activos totales. La maquinaria comercial está funcionando a plena capacidad y cada peso invertido genera el retorno esperado.",
                analisis_negativo: "El ciclo comercial sigue muy dependiente del apalancamiento con proveedores. Si un aliado recorta plazos, tu flujo se verá comprometido.",
                recomendacion: "Busca diversificar tu base de proveedores estratégicos para evitar concentración de deuda en un solo actor."
            }
        },
        "3Q": {
            report: {
                status: "warning",
                analisis_positivo: "Lograste estabilizar los días de inventario, asegurando que los recursos destinados a servicios no se queden sin facturar por más de 10 días.",
                analisis_negativo: "La eficiencia de cobranza bajó ligeramente. Tienes facturas estancadas que ya superan el umbral de los 60 días de antigüedad fuera de contrato.",
                recomendacion: "Inicia gestiones de cobro administrativo preventivo mucho antes del vencimiento para evitar el aumento del DSO."
            }
        },
        "4Q": {
            report: {
                status: "success",
                analisis_positivo: "Cierre de año robusto. La rotación de cartera alcanzó su pico máximo del año, permitiendo una entrada masiva de caja para el cierre de vigencia.",
                analisis_negativo: "Nivel de apalancamiento con proveedores al límite. Has forzado el plazo de pago al máximo permitido por el sector comercial.",
                recomendacion: "Aprovecha la liquidez del cierre de año para saldar deudas críticas y recuperar capacidad de negociación con proveedores."
            }
        }
    },
    "2023": {
        "Annual": {
            report: {
                status: "danger",
                analisis_positivo: "A pesar de las dificultades logísticas del año, la empresa no detuvo su operación y mantuvo una rotación mínima de activos para sostenerse.",
                analisis_negativo: "Fue un año de ciclos extremadamente largos. La caja se quedó atrapada en clientes por más de 75 días en promedio, afectando toda la operatividad.",
                recomendacion: "Para el siguiente ejercicio, el enfoque debe ser 100% recaudo. No aceptes contratos con plazos superiores a 30 días sin anticipos."
            }
        },
        "1Q": {
            report: {
                status: "warning",
                analisis_positivo: "El control de costos permitió que la rotación de proveedores no se desbordara, protegiendo las relaciones comerciales vitales de la firma.",
                analisis_negativo: "Los días de cartera iniciaron en niveles históricos. Estás tardando demasiado en cobrar lo que ya ejecutaste, creando un déficit de caja ciego.",
                recomendacion: "Implementa una política de anticipos obligatorios del 30% para mitigar el riesgo de cartera de largo plazo."
            }
        },
        "2Q": {
            report: {
                status: "warning",
                analisis_positivo: "La eficiencia operativa en proyectos cortos ayudó a que los inventarios rotaran más rápido que en el trimestre anterior.",
                analisis_negativo: "Tu ciclo de conversión de efectivo es negativo respecto al benchmark del sector. No estás transformando ventas en dinero líquido oportunamente.",
                recomendacion: "Realiza un comité de tesorería semanal para priorizar facturas con mayor probabilidad de recaudo inmediato."
            }
        },
        "3Q": {
            report: {
                status: "danger",
                analisis_positivo: "Se mantiene la tracción comercial, lo que garantiza que los activos totales sigan rotando y no existan recursos subutilizados.",
                analisis_negativo: "Nivel crítico de alertas en cartera. El tiempo promedio de recaudo ha sobrepasado los 80 días, lo que asfixia el flujo de caja operativo.",
                recomendacion: "Suspende servicios a clientes con mora superior a 90 días para detener la hemorragia de recursos sin retorno."
            }
        },
        "4Q": {
            report: {
                status: "warning",
                analisis_positivo: "El esfuerzo de fin de año en cobranza permitió bajar la cartera un 15%, lo que da oxígeno para iniciar el próximo año con algo de liquidez.",
                analisis_negativo: "Has cerrado el año con un ciclo de efectivo total todavía muy por encima de los 65 días. La eficiencia acumulada es baja.",
                recomendacion: "Reestructura el departamento de recaudo. Necesitas perfiles más agresivos en la gestión de cobro para el año venidero."
            }
        }
    }
};
