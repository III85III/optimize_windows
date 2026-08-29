@echo off
:menu
cls
echo ==========================================
echo       Windows Optimization Toolkit
echo ==========================================
echo 1. Clean Cache and RAM (Basic)
echo 2. Clear Standby Memory (EmptyStandbyList)
echo 3. Disable Bloatware
echo 4. Extreme Debloat
echo 5. Enable God Mode
echo 6. Exit
echo ==========================================
set /p choice="Enter your choice (1-6): "

if "%choice%"=="1" call scripts\clean_cache_and_ram.bat & pause & goto menu
if "%choice%"=="2" call scripts\clear_cache_0.bat & pause & goto menu
if "%choice%"=="3" call scripts\disable_bloatware.bat & pause & goto menu
if "%choice%"=="4" call scripts\extreme_debloat.bat & pause & goto menu
if "%choice%"=="5" call scripts\run_god_mode.bat & pause & goto menu
if "%choice%"=="6" exit

echo Invalid choice, try again.
pause
goto menu
