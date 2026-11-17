@echo off
echo Starting Khmer Job ^& Skills Matcher...
powershell -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%~dp0khmer-job-matcher\scripts\Start-Local.ps1"
if "%1"=="" timeout /t 5
