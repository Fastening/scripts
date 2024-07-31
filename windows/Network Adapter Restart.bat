@echo off

:: Check if the script is running as admin
openfiles >nul 2>&1
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%0' -Verb RunAs"
    exit /B
)

set adapterName="Ethernet"

echo Disabling %adapterName%...
netsh interface set interface "%adapterName%" admin=disabled

timeout /t 3 >nul  # Wait for 3 seconds (adjust as needed)

echo Enabling %adapterName%...
netsh interface set interface "%adapterName%" admin=enabled

echo %adapterName% has been disabled and enabled.

pause
