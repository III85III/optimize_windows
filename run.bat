@echo off
:: Force the script to run from its own directory
cd /d "%~dp0"

:: Set console title and modern color (Cyan on Black)
title III85III - Windows Optimization Toolkit
color 0B

:menu
cls
echo ==============================================================================
echo.
echo     ██╗██╗██╗██████╗  ███████╗███████╗██╗
echo     ██║██║██║╚════██╗ ██╔════╝██╔════╝██║
echo     ██║██║██║ █████╔╝ ███████╗███████╗██║
echo     ██║██║██║ ╚═══██╗ ╚════██║╚════██║██║
echo     ╚═╝╚═╝╚═╝██████╔╝ ███████║███████║██║
echo     ╚═══════════════╝ ╚══════╝╚══════╝╚═╝
echo                      [ Windows Optimization Toolkit ]
echo ==============================================================================
echo.
echo   [1] Auto Disk Cleanup (Full)
echo   [2] Enable High Performance Power Plan
echo   [3] Optimize Network (TCP/IP)
echo   [4] System Health Check
echo   [5] Disable Bloatware
echo   [6] Extreme Debloat
echo   [7] Enable God Mode
echo   [8] Exit
echo.
echo ==============================================================================
echo   ^> Creator: III85III
echo ==============================================================================
echo   /\_/\
echo  ( o.o )  * Purr... Ready to optimize your system! *
echo   > ^ <
echo ==============================================================================

set /p choice=" Enter your choice (1-8): "

if "%choice%"=="1" call "%~dp0scripts\auto_disk_cleanup.bat" & pause & goto menu
if "%choice%"=="2" call "%~dp0scripts\set_high_perf.bat" & pause & goto menu
if "%choice%"=="3" call "%~dp0scripts\optimize_network.bat" & pause & goto menu
if "%choice%"=="4" call "%~dp0scripts\system_info.bat" & pause & goto menu
if "%choice%"=="5" call "%~dp0scripts\disable_bloatware.bat" & pause & goto menu
if "%choice%"=="6" call "%~dp0scripts\extreme_debloat.bat" & pause & goto menu
if "%choice%"=="7" call "%~dp0scripts\run_god_mode.bat" & pause & goto menu
if "%choice%"=="8" exit

echo Invalid choice, try again.
pause
goto menu
