@echo off
setlocal
echo ========================================
echo    DISABLING USELESS WINDOWS SERVICES
echo ========================================

:: Use >nul 2>&1 to hide "Service not started" errors
echo [+] Stopping SysMain...
sc stop SysMain >nul 2>&1
sc config SysMain start= disabled >nul 2>&1

echo [+] Stopping DiagTrack...
sc stop DiagTrack >nul 2>&1
sc config DiagTrack start= disabled >nul 2>&1

echo [+] Stopping WSearch...
sc stop WSearch >nul 2>&1
sc config WSearch start= disabled >nul 2>&1

echo [+] Stopping Xbox Services...
sc stop XblAuthManager >nul 2>&1
sc config XblAuthManager start= disabled >nul 2>&1
sc stop XblGameSave >nul 2>&1
sc config XblGameSave start= disabled >nul 2>&1

echo ========================================
echo    SERVICES OPTIMIZED AND DISABLED
echo ========================================
endlocal
