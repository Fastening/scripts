@echo off
echo Closing Valorant and associated bootstrap executables...

:: Do you need to run this script as an admin?

:: Close Valorant main game executable
taskkill /F /IM VALORANT-Win64-Shipping.exe
timeout /t 3 /nobreak
taskkill /F /IM VALORANT.exe

:: REMOVE THE DOTS TO ENABLE THE COMMANDS
:: You may or may not need the timeout command to add a delay in tasks.

:: Close Riot Client services
:: taskkill /F /IM RiotClientServices.exe
:: timeout /t 3 /nobreak

:: Close the bootstrapper
:: taskkill /F /IM RiotClientUx.exe
:: timeout /t 3 /nobreak
:: taskkill /F /IM RiotClientUxRender.exe
:: timeout /t 3 /nobreak

:: Close Vanguard anti-cheat (you might have to include this depending on how Valorant launches Vanguard)
:: taskkill /F /IM vgtray.exe
:: timeout /t 3 /nobreak
:: taskkill /F /IM vgc.exe

echo Done.
:: pause
