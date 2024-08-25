@Echo Off
Title General DirectX Tweaks (3)
cd %systemroot%\system32
call :IsAdmin

Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "DisableAGPSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "UseNonLocalVidMem" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "DisableDDSCAPSInDDSD" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "EmulatePointSprites" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectDraw" /v "EmulateStateBlocks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "DisableAGPSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "UseNonLocalVidMem" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "DisableDDSCAPSInDDSD" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "EmulatePointSprites" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\DirectDraw" /v "EmulateStateBlocks" /t REG_DWORD /d "0" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof
