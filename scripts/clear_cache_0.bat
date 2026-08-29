@echo off
:: Check for admin privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Please run this script as Administrator.
    pause
    exit
)

echo Clearing standby list...
if not exist "EmptyStandbyList.exe" (
    echo Error: EmptyStandbyList.exe not found in this folder.
    echo Please download EmptyStandbyList.exe and place it here.
    pause
    exit
)

:: Run the tool to clear the standby list
EmptyStandbyList.exe standbylist

echo Standby cache cleared successfully.
pause
