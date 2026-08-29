@echo off
title III85III - Extreme Windows Debloat
echo [!] WARNING: This will disable MANY non-critical background services to reach <100 processes.

echo [+] Disabling Windows Store Apps Update...
powershell -Command "Get-AppxPackage *WindowsStore* | Remove-AppxPackage" 2>nul

echo [+] Disabling Cortana, Maps, and Edge Background Sync...
powershell -Command "Get-AppxPackage *Cortana* | Remove-AppxPackage" 2>nul
powershell -Command "Get-AppxPackage *Maps* | Remove-AppxPackage" 2>nul

echo [+] Hard-Stopping Services (SysMain, DiagTrack, WSearch, MapsBroker, ConnectedUser)...
sc stop SysMain & sc config SysMain start= disabled
sc stop DiagTrack & sc config DiagTrack start= disabled
sc stop WSearch & sc config WSearch start= disabled
sc stop MapsBroker & sc config MapsBroker start= disabled
sc stop ClickToRunSvc & sc config ClickToRunSvc start= disabled
sc stop TabletInputService & sc config TabletInputService start= disabled

echo [+] Killing Unnecessary Scheduled Tasks...
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks /change /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable

echo [+] Disabling Automatic Windows Updates (Trigger only)...
sc stop wuauserv & sc config wuauserv start= demand

echo [+] Cleaning Driver Store Cache...
cleanmgr /sageset:1 & cleanmgr /sagerun:1

echo ========================================
echo SYSTEM DEBLOATED! REBOOT RECOMMENDED.
echo ========================================
pause
