/**
 * data_resumen.js - Versión Limpia
 * Los datos de esta sección se cargan dinámicamente desde la API.
 */

// Perfil de la Empresa (Valores iniciales vacíos para ser llenados por app.js o api.js)
const empresaPerfil = {
    nombre: "Cargando...",
    sector: "Cargando...",
    pais: "Colombia",
    moneda: "COP",
    periodoAnalisis: "-",
    descripcion: "Cargando información de la empresa...",
};

// Score Global por Año (Se llena dinámicamente)
const scoreHistorico = [];

// KPIs Top por Módulo (Se llena dinámicamente)
const kpisPorModulo = [
    {
        modulo: "Liquidez",
        definicion: "Capacidad para cumplir obligaciones financieras de corto plazo.",
        color: "#3b82f6",
        icono: "droplets",
        kpis: [],
    },
    {
        modulo: "Rentabilidad",
        definicion: "Capacidad del negocio para generar utilidades y crear valor.",
        color: "#10b981",
        icono: "trending-up",
        kpis: [],
    },
    {
        modulo: "Solvencia",
        definicion: "Capacidad para cumplir compromisos financieros a largo plazo.",
        color: "#8b5cf6",
        icono: "landmark",
        kpis: [],
    },
    {
        modulo: "Actividad",
        definicion: "Eficiencia operativa en la gestión y uso de los activos.",
        color: "#ef4444",
        icono: "activity",
        kpis: [],
    },
    {
        modulo: "Estructura",
        definicion: "Relación entre capital propio y financiamiento de terceros.",
        color: "#f59e0b",
        icono: "layers",
        kpis: [],
    },
];

// Señales de Alerta (Se llena dinámicamente desde insights o riesgos de api.js)
const senalesAlerta = [];

// Fortalezas Detectadas (Se llena dinámicamente)
const fortalezas = [];

// Narrativa: Historia de la Compañía (Se llena dinámicamente)
const historiaNarrativa = [];

// Dictamen Ejecutivo Final (Se llena dinámicamente)
const dictamenEjecutivo = {
    titulo: "Dictamen de Auditoría Integral",
    estado: "info",
    texto: "Cargando análisis de auditoría...",
    recomendaciones: [],
};
