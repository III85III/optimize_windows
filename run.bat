@echo off
:: Force the script to run from its own directory
cd /d "%~dp0"

:menu
cls
echo ==========================================
echo       Windows Optimization Toolkit
echo ==========================================
echo 1. Auto Disk Cleanup (Full)
echo 2. Disable Bloatware
echo 3. Extreme Debloat
echo 4. Enable God Mode
echo 5. Exit
echo ==========================================
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" call scripts\auto_disk_cleanup.bat & pause & goto menu
if "%choice%"=="2" call scripts\disable_bloatware.bat & pause & goto menu
if "%choice%"=="3" call scripts\extreme_debloat.bat & pause & goto menu
if "%choice%"=="4" call scripts\run_god_mode.bat & pause & goto menu
if "%choice%"=="5" exit

echo Invalid choice, try again.
pause
goto menu
