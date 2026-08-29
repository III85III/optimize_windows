@echo off
title Windows Optimization Toolkit - Created by III85III
color 0E

:menu
cls
echo ==========================================
echo       Windows Optimization Toolkit
echo       Developer: III85III
echo ==========================================
echo 1. Auto Disk Cleanup (Full)
echo 2. Enable High Performance Power Plan
echo 3. Optimize Network (TCP/IP)
echo 4. System Health Check
echo 5. Disable Bloatware
echo 6. Extreme Debloat
echo 7. Enable God Mode
echo 8. Exit
echo ==========================================
set /p choice="Enter your choice (1-8): "

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
