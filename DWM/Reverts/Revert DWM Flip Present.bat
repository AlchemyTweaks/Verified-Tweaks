@echo off
SETLOCAL ENABLEEXTENSIONS
cd %windir%\system32

reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v FrameLatency /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v ForceDirectDrawSync /f
reg delete "HKLM\SOFTWARE\Microsoft\WINDOWS\DWM" /v MaxQueuedPresentBuffers /f

ENDLOCAL


taskkill /f /im dwm.exe
timeout /t 5
start %windir%\system32\dwm.exe
