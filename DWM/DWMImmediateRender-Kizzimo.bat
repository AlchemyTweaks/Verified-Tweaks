@echo off
SETLOCAL ENABLEEXTENSIONS
cd %windir%\system32


reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v UseHWDrawListEntriesOnWARP /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResampleModeOverride /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v RenderThreadWatchdogTimeoutMilliseconds /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ParallelModePolicy /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableResizeOptimization /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableMegaRects /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableFrontBufferRenderChecks /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableEffectCaching /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableDesktopOverlays /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnablePrimitiveReordering /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v MaxD3DFeatureLevel /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v OverlayQualifyCount /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v OverlayDisqualifyCount /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResizeTimeoutModern /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ResizeTimeoutGdi /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableResizeOptimization /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableEffectCaching /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v HighColor /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableDeviceBitmaps /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableCpuClipping /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableDrawListCaching /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v AnimationsShiftKey /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v AnimationAttributionEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v EnableCommonSuperSets /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v DisableAdvancedDirectFlip /t REG_DWORD /d 1 /f


ENDLOCAL


taskkill /f /im dwm.exe
timeout /t 5
start %windir%\system32\dwm.exe