@Echo Off
Title General DirectX Tweaks  (3)
cd %systemroot%\system32
call :IsAdmin

Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "DisableAGPSupport" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "UseNonLocalVidMem" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "DisableDDSCAPSInDDSD" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "EmulatePointSprites" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "EmulateStateBlocks" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "DisableAGPSupport" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "UseNonLocalVidMem" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "DisableDDSCAPSInDDSD" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "EmulatePointSprites" /f
Reg.exe delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "EmulateStateBlocks" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
    Cls & Echo You must have administrator rights to continue ... 
    Pause & Exit
)
Cls
goto:eof
