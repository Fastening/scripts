@echo off

:: Check if the script is running as admin
openfiles >nul 2>&1
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%0' -Verb RunAs"
    exit /B
)

@echo off
echo Checking the status of Hyper-V Virtual Machine Management service...
:: Run PowerShell command to check the status of the service
powershell -Command ^
"$service = Get-Service -Name vmms; ^
if ($service.Status -eq 'Running') { ^
    Stop-Service -Name vmms; ^
    Start-Sleep -Seconds 5; ^
    Set-Service -Name vmms -StartupType Disabled; ^
    Write-Output 'Hyper-V Virtual Machine Management service has been stopped and disabled.'; ^
} elseif ($service.Status -eq 'Stopped') { ^
    Set-Service -Name vmms -StartupType Manual; ^
    Start-Sleep -Seconds 5; ^
    Start-Service -Name vmms; ^
    Write-Output 'Hyper-V Virtual Machine Management service has been set to manual and enabled.'; ^
} else { ^
    Write-Output 'BROKE- Hyper-V Virtual Machine Management service is not in a configured state readable by this script or another error occured.'; ^
}"

echo Process complete.
pause
