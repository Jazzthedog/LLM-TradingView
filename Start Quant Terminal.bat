@echo off
rem Starts Quant Terminal in the background and opens it in your browser.
rem To stop it later, run:  node quant-terminal\scripts\stop.js
cd /d "%~dp0quant-terminal"
node scripts\launch.js
if errorlevel 1 pause
