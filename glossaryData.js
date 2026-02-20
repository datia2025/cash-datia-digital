/**
 * Glosario de Indicadores Financieros
 * Datos extraídos de Indicador.csv
 */
const glossaryData = [
    { indicador: "Apalancamiento Financiero (Gearing Ratio)", definicion: "Relación de deuda bancaria frente al patrimonio.", formula: "Deuda bancaria / Patrimonio", margen: "< 50%" },
    { indicador: "Capital de Trabajo (Working Capital)", definicion: "Recursos netos para operar en el corto plazo.", formula: "Activo corriente – Pasivo corriente", margen: "> 0" },
    { indicador: "Ciclo de Conversión de Efectivo (CCC)", definicion: "Tiempo de recuperación del efectivo operativo.", formula: "DSO + DIO – DPO", margen: "< 90 días" },
    { indicador: "Cobertura de Activos Fijos", definicion: "Respaldo patrimonial de los activos fijos.", formula: "Patrimonio / Activos fijos", margen: "> 1" },
    { indicador: "Cobertura de Cargos Fijos", definicion: "Capacidad para cubrir gastos fijos y financieros.", formula: "EBITDA / Cargos fijos", margen: "> 1.5" },
    { indicador: "Cobertura de Intereses", definicion: "Capacidad para pagar intereses financieros.", formula: "EBITDA / Gastos financieros", margen: "> 2" },
    { indicador: "Cobertura Servicio de Deuda (DSCR)", definicion: "Capacidad de pago del servicio total de deuda.", formula: "Flujo operativo / Servicio deuda", margen: "≥ 1.2" },
    { indicador: "Deuda a Activos Tangibles", definicion: "Proporción de deuda sobre activos físicos.", formula: "Pasivo total / Activos tangibles", margen: "< 60%" },
    { indicador: "Deuda Neta / EBITDA", definicion: "Nivel de deuda respecto a la generación operativa.", formula: "Deuda neta / EBITDA", margen: "< 3" },
    { indicador: "Días de Cartera (DSO)", definicion: "Días promedio de cobro a clientes.", formula: "(CxC / Ventas) × 360", margen: "< 60" },
    { indicador: "Días de Inventario (DIO)", definicion: "Días promedio de permanencia del inventario.", formula: "(Inventario / Costo ventas) × 360", margen: "< 90" },
    { indicador: "Días de Proveedores (DPO)", definicion: "Días promedio de pago a proveedores.", formula: "(CxP / Compras) × 360", margen: "> 45" },
    { indicador: "Endeudamiento Total", definicion: "Nivel de pasivos sobre activos.", formula: "Pasivo total / Activo total", margen: "< 60%" },
    { indicador: "Estructura de la Deuda", definicion: "Proporción de deuda de corto plazo.", formula: "Pasivo CP / Pasivo total", margen: "< 50%" },
    { indicador: "Margen Bruto", definicion: "Rentabilidad después del costo de ventas.", formula: "Utilidad bruta / Ventas", margen: "> 30%" },
    { indicador: "Margen EBITDA", definicion: "Rentabilidad operativa antes de depreciaciones.", formula: "EBITDA / Ventas", margen: "> 20%" },
    { indicador: "Margen Neto", definicion: "Rentabilidad final del negocio.", formula: "Utilidad neta / Ventas", margen: "> 10%" },
    { indicador: "Margen Operativo", definicion: "Rentabilidad de la operación principal.", formula: "Utilidad operativa / Ventas", margen: "> 15%" },
    { indicador: "Multiplicador de Capital", definicion: "Nivel de apalancamiento financiero.", formula: "Activos / Patrimonio", margen: "< 2.5" },
    { indicador: "Prueba Ácida", definicion: "Liquidez inmediata sin inventarios.", formula: "(Activo corriente – Inventarios) / Pasivo corriente", margen: "≥ 1" },
    { indicador: "Ratio de Capitalización", definicion: "Proporción de deuda de largo plazo.", formula: "Deuda LP / (Deuda LP + Patrimonio)", margen: "< 40%" },
    { indicador: "Ratio de Efectivo", definicion: "Capacidad de pago inmediato.", formula: "Efectivo / Pasivo corriente", margen: "≥ 0.3" },
    { indicador: "Ratio de Propiedad", definicion: "Participación del patrimonio en los activos.", formula: "Patrimonio / Activo total", margen: "> 40%" },
    { indicador: "Ratio de Solvencia Patrimonial", definicion: "Respaldo patrimonial de los pasivos.", formula: "Patrimonio / Pasivo total", margen: "> 1" },
    { indicador: "Razón Corriente", definicion: "Capacidad de pago en el corto plazo.", formula: "Activo corriente / Pasivo corriente", margen: "≥ 1.5" },
    { indicador: "Relación Deuda/Patrimonio", definicion: "Nivel de endeudamiento frente al capital propio.", formula: "Pasivo total / Patrimonio", margen: "< 1.5" },
    { indicador: "ROA", definicion: "Rentabilidad de los activos.", formula: "Utilidad neta / Activos", margen: "> 8%" },
    { indicador: "ROE", definicion: "Rentabilidad del patrimonio.", formula: "Utilidad neta / Patrimonio", margen: "> 15%" },
    { indicador: "Rotación de Activos Totales", definicion: "Eficiencia en el uso de los activos.", formula: "Ventas / Activos", margen: "> 1" },
    { indicador: "Rotación de Cartera", definicion: "Frecuencia de recuperación de cartera.", formula: "Ventas / CxC", margen: "> 6" },
    { indicador: "Rotación de Inventarios", definicion: "Velocidad de venta del inventario.", formula: "Costo ventas / Inventario", margen: "> 4" },
    { indicador: "Rotación de Proveedores", definicion: "Frecuencia de pago a proveedores.", formula: "Compras / CxP", margen: "< 8" }
];
