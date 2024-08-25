@echo off
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
    for /f "tokens=3" %%a in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%i" /v "Driver"') do (
        for /f %%j in ('echo %%a ^| findstr "{"') do (
            Reg.exe add "HKLM\System\ControlSet001\Control\Class\%%j" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f >nul 2>&1
        )
    )
)
