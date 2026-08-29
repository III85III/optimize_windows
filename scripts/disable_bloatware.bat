@echo off
title III85III - Process & Background Killer
echo ========================================
echo    DISABLING USELESS WINDOWS SERVICES
echo ========================================

echo [+] Stopping SysMain (Superfetch - reduces disk/RAM load)...
sc stop SysMain
sc config SysMain start= disabled

echo [+] Stopping DiagTrack (Telemetry/Tracking)...
sc stop DiagTrack
sc config DiagTrack start= disabled

echo [+] Stopping WSearch (Windows Search - optional, saves CPU)...
sc stop WSearch
sc config WSearch start= disabled

echo [+] Stopping Xbox Game Monitoring Services...
sc stop XblAuthManager
sc config XblAuthManager start= disabled
sc stop XblGameSave
sc config XblGameSave start= disabled
sc stop XboxNetApiSvc
sc config XboxNetApiSvc start= disabled

echo ========================================
echo    SERVICES OPTIMIZED & DISABLED!
echo ========================================
pause
