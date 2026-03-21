# Workflow Operativo: Segmentación por Empresa y Soporte Analítico

Este documento define el ciclo de vida de una empresa dentro del ecosistema **Datia Liquidity**, desde su llegada hasta la entrega de la inteligencia financiera.

---

## 1. Detección y Notificación de Nuevo Cliente

El proceso es **segmentado por empresa**. Cada ráfaga de datos cargada en NocoDB dispara un evento de procesamiento independiente.

### 1.1 Alerta al Equipo de Soporte (Analista Senior)
En cuanto el sistema detecta una nueva carga de datos (`Master Account` y `Movimientos`), el Worker generará automáticamente un correo electrónico de alerta:

*   **Destinatario**: `support@talentracking.com`
*   **Asunto**: `🚨 ALERTA: Nuevo Cliente Detectado para Procesamiento AI - [NOMBRE_EMPRESA]`
*   **Contenido**:
    *   Nombre de la Empresa y NIT.
    *   Tipo de Catálogo (PUC Crudo vs Master Parametrizado).
    *   Estado de la carga inicial.
    *   Enlace directo al Dashboard Administrativo.

**Acción del Analista**: Al recibir este correo, el analista debe validar la calidad de la carga y prepararse para el **Paso 0** de la `GUIA_GENERACION_INSIGHTS_AI.md`.

---

## 2. Bienvenida al Cliente Final

Simultáneamente a la alerta de soporte, el sistema enviará un correo de bienvenida al cliente:

*   **Destinatario**: Email registrado por el contador/gerente en la carga.
*   **Objetivo**: Brindar tranquilidad de que el proceso ha iniciado y entregar credenciales de acceso inicial.

---

## 3. Protocolo de Procesamiento "First In, First Out" (FIFO)

Para asegurar el completamiento y evitar el desbordamiento de recursos:

1.  **Segmentación**: Empresa que llega es empresa que se procesa de forma prioritaria.
2.  **Procesamiento Único**: No se deben procesar múltiples empresas en paralelo usando el mismo hilo de IA para evitar dilución de contexto.
3.  **Cierre de Ciclo**: Una empresa se considera "Procesada" únicamente cuando los **44 puntos de inteligencia** han sido verificados en el Dashboard mediante el [Protocolo de Estabilidad de API](GUIA_GENERACION_INSIGHTS_AI.md#8-gestión-de-carga-y-estabilidad-de-api-protocolo-anti-desbordamiento).

---

## 4. Gestión de Ticket de Soporte

Cada correo enviado a `support@talentracking.com` actúa como un "Ticket Virtual". El analista debe:
1.  **Confirmar Recepción**: Aceptar la carga.
2.  **Ejecutar AI Pipeline**: Generar los insights segmentados.
3.  **Validar Calidad**: Asegurar que el "Lenguaje No Técnico" se cumpla al 100%.
4.  **Cierre**: Notificar al cliente que su Dashboard está "Live" con inteligencia de auditoría.

---

> [!IMPORTANT]
> **Seguridad de Datos**: Nunca compartas archivos de movimientos o bases de datos por correo. Toda la información debe residir en el entorno seguro de PostgreSQL. El correo solo contiene metadatos de alerta.

> [!TIP]
> **Tiempos de Respuesta**: La meta es que desde que llega el correo de alerta hasta que el Dashboard tiene los primeros insights cargados, no transcurran más de 30 minutos por empresa.
