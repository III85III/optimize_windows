@echo off
cd /d %~dp0
echo [+] God Mode Optimizer Initialized...
powershell -ExecutionPolicy Bypass -File clear_ram_standby.ps1
call extreme_debloat.bat
echo [+] Optimization Complete. Performance Mode Activated.
pause
