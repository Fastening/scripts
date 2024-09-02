@echo off
set "source=C:\gameserver\corekeeper\NoPauseLaunch.ps1"
set "destination=C:\gameserver\corekeeper\Launch.ps1"

rem Overwrite the destination file with the source file
copy /y "%source%" "%destination%"

echo The file "%destination%" has been overwritten with "%source%".
