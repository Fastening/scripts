:x 
echo start
echo [34m[47mFastening says this is starting![0m[0m
timeout /t 1

echo [31m[47mChange directory to see steamCMD[0m[0m
cd C:\steamcmd
echo [31m[47mDirectory changed![0m[0m
timeout /t 1

echo [31m[47mLets try to update![0m[0m
C:\steamcmd\steamcmd.exe +force_install_dir C:\gameserver\corekeeper +login anonymous +app_update 1007 validate +app_update 1963720 validate +quit
echo [31m[47mUpdate command has been OK![0m[0m
timeout /t 2

echo [31m[47mLets change directory to do some gamefile work[0m[0m
cd C:\gameserver\
echo [31m[47mGotta try to fix some briken shiz from updating...![0m[0m
timeout /t 1
call C:\gameserver\changeCOREKEEPERSETTING.bat

timeout /t 4
echo [31m[47mMight be great now?![0m[0m
timeout /t 2

echo [31m[47mLets change directory to see CoreKeeper Server[0m[0m
cd C:\gameserver\corekeeper
timeout /t 1

echo [31m[47mLets try to run the server![0m[0m
timeout /t 2
powershell -executionpolicy unrestricted -File Launch.ps1 %*

echo [31m[47mThe server script will now restart![0m[0m
timeout /t 8
goto x