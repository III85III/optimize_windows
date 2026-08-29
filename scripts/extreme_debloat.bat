@echo off
setlocal
echo [!] Starting Extreme Windows Debloat...

:: Disabling Apps silently
powershell -Command "Get-AppxPackage *WindowsStore* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *Cortana* | Remove-AppxPackage -ErrorAction SilentlyContinue"
powershell -Command "Get-AppxPackage *Maps* | Remove-AppxPackage -ErrorAction SilentlyContinue"

:: Services
for %%s in (SysMain DiagTrack WSearch MapsBroker ClickToRunSvc TabletInputService) do (
    sc stop %%s >nul 2>&1
    sc config %%s start= disabled >nul 2>&1
)

:: Scheduled Tasks (Force disable)
schtasks /change /tn "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable >nul 2>&1

echo ========================================
echo SYSTEM DEBLOATED! REBOOT RECOMMENDED.
echo ========================================
endlocal
