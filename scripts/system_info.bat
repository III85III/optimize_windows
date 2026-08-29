@echo off
cls
echo ==========================================
echo       System Health Check
echo ==========================================
echo CPU Info:
wmic cpu get name
echo RAM (Total):
wmic ComputerSystem get TotalPhysicalMemory
echo Disk C: Free Space:
powershell -Command "Get-PSDrive C | Select-Object -ExpandProperty Free"
echo ==========================================
pause
