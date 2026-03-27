param (
    [Parameter(Mandatory=$true, HelpMessage="Ruta de la carpeta que contiene los archivos SQL")]
    [string]$Folder
)

# Validar existencia de la carpeta
if (-Not (Test-Path $Folder)) {
    Write-Host "[ERROR] La carpeta '$Folder' no existe." -ForegroundColor Red
    exit 1
}

# Configurar codificación UTF-8 para consola
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host ""
Write-Host "==============================================================================" -ForegroundColor Cyan
Write-Host "CARGA MASIVA DE INSIGHTS - DATIA LIQUIDITY DASHBOARD" -ForegroundColor Cyan
Write-Host "==============================================================================" -ForegroundColor Cyan
Write-Host "Carpeta origen: $Folder" -ForegroundColor Yellow
Write-Host ""

# Buscar archivos SQL
$sqlFiles = Get-ChildItem -Path $Folder -Filter "*.sql"

if ($sqlFiles.Count -eq 0) {
    Write-Host "[ALERTA] No se encontraron archivos .sql en la carpeta especificada." -ForegroundColor Yellow
    exit 0
}

# Procesar cada archivo SQL con el inyector v4.6
foreach ($file in $sqlFiles) {
    Write-Host ""
    Write-Host "------------------------------------------------------------------------------" -ForegroundColor Cyan
    Write-Host "Ejecutando: v46_sql_injector.py --file `"$($file.Name)`"" -ForegroundColor Green
    Write-Host "------------------------------------------------------------------------------" -ForegroundColor Cyan
    
    python v46_sql_injector.py --file "$($file.FullName)"
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host "[ERROR] Hubo un problema al procesar $($file.Name)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "==============================================================================" -ForegroundColor Cyan
Write-Host "PROCESO FINALIZADO." -ForegroundColor Cyan
Write-Host "==============================================================================" -ForegroundColor Cyan
