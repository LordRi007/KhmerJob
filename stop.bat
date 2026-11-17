@echo off
echo Stopping Khmer Job Matcher processes on ports 8000 and 5173...
powershell -NoLogo -NoProfile -ExecutionPolicy Bypass -Command "Get-NetTCPConnection -LocalPort 8000, 5173 -ErrorAction SilentlyContinue | Select-Object -ExpandProperty OwningProcess -Unique | ForEach-Object { Stop-Process -Id $_ -Force -ErrorAction SilentlyContinue }; Write-Output 'Stopped all running services.'"
if "%1"=="" timeout /t 5
