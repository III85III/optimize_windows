@echo off
:: Force the script to run from its own directory
cd /d "%~dp0"

:: Check for admin privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Please run as Administrator!
    exit /b
)

echo ==========================================
echo       Automated Deep Disk Cleanup
echo ==========================================

echo [1/6] Cleaning User Temporary Files...
del /q /f /s "%temp%\*" >nul 2>&1
for /d %%x in ("%temp%\*") do rd /s /q "%%x" >nul 2>&1

echo [2/6] Cleaning Windows Temporary Files...
del /q /f /s "C:\Windows\Temp\*" >nul 2>&1
for /d %%x in ("C:\Windows\Temp\*") do rd /s /q "%%x" >nul 2>&1

echo [3/6] Cleaning Windows Prefetch...
del /q /f /s "C:\Windows\Prefetch\*" >nul 2>&1
for /d %%x in ("C:\Windows\Prefetch\*") do rd /s /q "%%x" >nul 2>&1

echo [4/6] Cleaning Recycle Bin...
powershell.exe -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue" >nul 2>&1

echo [5/6] Cleaning Windows Update Cache...
net stop wuauserv >nul 2>&1
del /q /f /s "C:\Windows\SoftwareDistribution\Download\*" >nul 2>&1
net start wuauserv >nul 2>&1

echo [6/6] Running Windows Built-in Cleanup (Automated)...
:: Using /verylowdisk runs cleanmgr without user interaction
cleanmgr /verylowdisk /d C

echo ==========================================
echo       Cleanup Completed Successfully!
echo ==========================================
