@echo off
echo ===================================================
echo   Running Local Helm Chart Linting & Validation
echo ===================================================
cd /d "%~dp0"

echo [INFO] Running Helm template lint checks...
call bin\helm.exe lint helm/app-chart

echo.
echo [INFO] Generating Helm dry-run template output...
call bin\helm.exe template test-release helm/app-chart

echo.
echo ===================================================
echo   Checks Completed.
echo ===================================================
pause
