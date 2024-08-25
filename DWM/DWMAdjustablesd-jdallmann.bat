@Echo Off
Title Reg Converter v1.2 & Color 1A
cd %systemroot%\system32
call :IsAdmin


reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v SuperWetEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v SDRBoostPercentOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResampleInLinearSpace /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v OneCoreNoDWMRawGameController /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v MPCInputRouterWaitForDebugger /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v InteractionOutputPredictionDisabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v InkGPUAccelOverrideVendorWhitelist /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableRenderPathTestMode /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v FlattenVirtualSurfaceEffectInput /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableCpuClipping /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisallowNonDrawListRendering /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableProjectedShadowsRendering /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableProjectedShadows /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableLockingMemory /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableHologramCompositor /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableDeviceBitmaps /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DebugFailFast /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DDisplayTestMode /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableLockingMemory /t REG_DWORD /d 1 /f

Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls

goto:eof
