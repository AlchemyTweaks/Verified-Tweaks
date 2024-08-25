@Echo Off
Title General DirectX Tweaks  (4)
cd %systemroot%\system32
call :IsAdmin

Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "ForceRgbRasterizer" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "EnumReference" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "EnumSeparateMMX" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "EnumRamp" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "EnumNullDevice" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Direct3D\Drivers" /v "UseMMXForRGB" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "ForceRgbRasterizer" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "EnumReference" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "EnumSeparateMMX" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "EnumRamp" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "EnumNullDevice" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Direct3D\Drivers" /v "UseMMXForRGB" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
    Cls & Echo You must have administrator rights to continue ... 
    Pause & Exit
)
Cls
goto:eof
