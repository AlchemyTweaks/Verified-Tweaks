@Echo Off
Title Revert General DirectX Tweaks  (5)
cd %systemroot%\system32
call :IsAdmin

Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D" /v "UseNonLocalVidMem" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D" /v "FullDebug" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D" /v "DisableDM" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D" /v "EnableMultimonDebugging" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D" /v "LoadDebugRuntime" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D" /v "FewVertices" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D" /v "DisableMMX" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D" /v "UseMMXForRGB" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D" /v "DisableVidMemVBs" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
    Cls & Echo You must have administrator rights to continue ... 
    Pause & Exit
)
Cls
goto:eof
