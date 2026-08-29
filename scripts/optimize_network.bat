@echo off
echo [+] Optimizing Network...
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh int tcp set global chimney=enabled >nul 2>&1
echo [+] Network Optimized!
exit /b
