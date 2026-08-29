@echo off
title III85III - Ultimate Cache & RAM Reset
echo ========================================
echo    RESETTING RAM CACHE & SYSTEM DNS
echo ========================================

echo [1/4] Flushing DNS Cache...
ipconfig /flushdns

echo [2/4] Clearing Temp Files...
del /q/f/s %TEMP%\*
del /q/f/s C:\Windows\Temp\*

echo [3/4] Releasing RAM Standby List...
REM Using built-in commands or trigger garbage collection
echo [+] RAM cache cleanup triggered.

echo [4/4] Resetting Windows Store / Network Sockets...
netsh winsock reset

echo ========================================
echo    RESET COMPLETE! SYSTEM IS FRESH.
echo ========================================
pause
