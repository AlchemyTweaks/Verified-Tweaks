@Echo Off
Title General DirectX Tweaks (1)
cd %systemroot%\system32
call :IsAdmin

Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_PREEMPTION_MODE" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_FRAME_LATENCY_WAITABLE_OBJECT" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_WAITABLE_OBJECT" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_FORCE_FLIP_DISCARD" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_SCALE" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_ALLOW_MODE_SWITCH" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_FULLSCREEN_FLIP_MODE" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_DISABLE_DWM_THROTTLING" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_FORCE_FLIP_SEQUENTIAL" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_FORCE_FULLSCREEN_FLIP_MODE" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_MAX_FRAME_LATENCY" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_USE_OPTIMIZED_SWAP_CHAIN" /t REG_DWORD /d "1" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof
