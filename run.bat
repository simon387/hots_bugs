@echo off
cd /d "%~dp0"
rem Termina i processi Blizzard
taskkill /f /im "Agent.exe" 2>nul


rem Aspetta un momento
timeout /t 2 /nobreak >nul

rem Avvia il gioco
set __COMPAT_LAYER=RunAsInvoker
start "" "Heroes of the Storm.exe"

rem Continua a terminare i processi in background
:loop
timeout /t 30 /nobreak >nul
taskkill /f /im "Agent.exe" 2>nul

goto loop