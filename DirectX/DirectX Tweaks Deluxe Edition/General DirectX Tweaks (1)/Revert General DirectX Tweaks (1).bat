@Echo Off
Title Revert General DirectX Tweaks (1)
cd %systemroot%\system32
call :IsAdmin

Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_PREEMPTION_MODE" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_FRAME_LATENCY_WAITABLE_OBJECT" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_WAITABLE_OBJECT" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_FORCE_FLIP_DISCARD" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_SCALE" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_ALLOW_MODE_SWITCH" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_SWAP_CHAIN_FULLSCREEN_FLIP_MODE" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_DISABLE_DWM_THROTTLING" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_FORCE_FLIP_SEQUENTIAL" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_FORCE_FULLSCREEN_FLIP_MODE" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_MAX_FRAME_LATENCY" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\DirectX" /v "DXGI_USE_OPTIMIZED_SWAP_CHAIN" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
    Cls & Echo You must have administrator rights to continue ... 
    Pause & Exit
)
Cls
goto:eof
