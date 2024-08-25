@echo off
echo Adding the "DpcWatchdogProfileOffset" value to the Registry...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogProfileOffset /t REG_DWORD /d 10000 /f

echo Deleting the remaining DWORD values from the Registry key...
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcTimeout /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IdealDpcRate /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaximumDpcQueueDepth /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MinimumDpcRate /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogPeriod /f
echo Completed actions in the Registry.
pause
