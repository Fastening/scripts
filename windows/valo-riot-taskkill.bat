@echo off
echo Closing Valorant and associated bootstrap executables...

:: Close Valorant main game executable
taskkill /F /IM VALORANT-Win64-Shipping.exe
timeout /t 3 /nobreak
taskkill /F /IM VALORANT.exe

:: REMOVE THE DOTS TO ENABLE THE COMMANDS

:: Close Riot Client services
:: taskkill /F /IM RiotClientServices.exe

:: Close the bootstrapper
:: taskkill /F /IM RiotClientUx.exe
:: taskkill /F /IM RiotClientUxRender.exe

:: Close Vanguard anti-cheat (you might have to include this depending on how Valorant launches Vanguard)
:: taskkill /F /IM vgtray.exe
:: taskkill /F /IM vgc.exe

echo Done.
