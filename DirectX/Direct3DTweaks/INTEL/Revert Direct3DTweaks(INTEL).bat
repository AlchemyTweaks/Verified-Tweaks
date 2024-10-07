@echo off
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Direct3D" /v "DisableVidMemVBs" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Direct3D" /v "MMX Fast Path" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Direct3D" /v "FlipNoVsync" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Direct3D\Drivers" /v "SoftwareOnly" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectDraw" /v "EmulationOnly" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Direct3D\Drivers" /v "SoftwareOnly" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\DirectDraw" /v "EmulationOnly" /f
echo Completed.
pause
