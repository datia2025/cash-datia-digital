@echo off
setlocal
chcp 65001 >nul

if "%~1"=="" (
    echo [ERROR] Por favor, especifica la ruta de la carpeta con los archivos SQL.
    echo Uso: load_insights.bat ^<ruta_carpeta^>
    echo Ejemplo: load_insights.bat "database\3099\Liquidez"
    exit /b 1
)

set "FOLDER=%~1"

if not exist "%FOLDER%" (
    echo [ERROR] La carpeta "%FOLDER%" no existe.
    exit /b 1
)

echo.
echo ==============================================================================
echo CARGA MASIVA DE INSIGHTS - DATIA LIQUIDITY DASHBOARD
echo ==============================================================================
echo Carpeta origen: %FOLDER%
echo.

for %%f in ("%FOLDER%\*.sql") do (
    echo.
    echo ------------------------------------------------------------------------------
    echo Ejecutando: v46_sql_injector.py --file "%%~f"
    echo ------------------------------------------------------------------------------
    python v46_sql_injector.py --file "%%~f"
    if errorlevel 1 (
        echo [ERROR] Hubo un problema procesando "%%~f"
    )
)

echo.
echo ==============================================================================
echo PROCESO FINALIZADO.
echo ==============================================================================
endlocal
