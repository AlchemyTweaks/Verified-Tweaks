@Echo Off
Title Reg Deleter v1.2 & Color 1A
cd %systemroot%\system32
call :IsAdmin


reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v SuperWetEnabled /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v SDRBoostPercentOverride /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResampleInLinearSpace /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v OneCoreNoDWMRawGameController /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v MPCInputRouterWaitForDebugger /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v InteractionOutputPredictionDisabled /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v InkGPUAccelOverrideVendorWhitelist /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableRenderPathTestMode /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v FlattenVirtualSurfaceEffectInput /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableCpuClipping /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisallowNonDrawListRendering /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableProjectedShadowsRendering /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableProjectedShadows /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableLockingMemory /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableHologramCompositor /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableDeviceBitmaps /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DebugFailFast /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DDisplayTestMode /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableLockingMemory /f



Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls

goto:eof


