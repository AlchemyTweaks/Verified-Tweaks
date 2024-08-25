@echo off
SETLOCAL ENABLEEXTENSIONS
cd %windir%\system32

reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v AnimationAttributionEnabled /t REG_DWORD /d 1 /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v UseHWDrawListEntriesOnWARP /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResampleModeOverride /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v RenderThreadWatchdogTimeoutMilliseconds /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ParallelModePolicy /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableResizeOptimization /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableMegaRects /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableFrontBufferRenderChecks /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableEffectCaching /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableDesktopOverlays /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnablePrimitiveReordering /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v MaxD3DFeatureLevel /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v OverlayQualifyCount /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v OverlayDisqualifyCount /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResizeTimeoutModern /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResizeTimeoutGdi /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableResizeOptimization /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableEffectCaching /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v HighColor /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableDeviceBitmaps /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableCpuClipping /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableDrawListCaching /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v AnimationsShiftKey /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableCommonSuperSets /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableAdvancedDirectFlip /f

ENDLOCAL


taskkill /f /im dwm.exe
timeout /t 5
start %windir%\system32\dwm.exe