@echo off
title III85III Windows Optimizer
color 0b
:menu
cls
echo ========================================
echo       III85III WINDOWS OPTIMIZER
echo ========================================
echo  1. Clean Cache, Temp & Reset RAM
echo  2. Disable Useless Background Services
echo  3. Exit
echo ========================================
set /p choix="Select an option (1-3): "

if "%choix%"=="1" call clean_cache_and_ram.bat & goto menu
if "%choix%"=="2" call disable_bloatware.bat & goto menu
if "%choix%"=="3" exit
goto menu
