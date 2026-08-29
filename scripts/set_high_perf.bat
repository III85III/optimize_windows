@echo off
:: Enable High Performance Power Plan
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
echo [+] High Performance Mode Enabled!
exit /b
