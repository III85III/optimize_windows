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

if "%choice%"=="1" scripts\clean_cache_and_ram.bat
if "%choice%"=="2" scripts\clear_cache_0.bat
if "%choice%"=="3" scripts\disable_bloatware.bat
if "%choice%"=="4" scripts\extreme_debloat.bat
if "%choice%"=="5" scripts\run_god_mode.bat
if "%choice%"=="6" exit

goto menu
