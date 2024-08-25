@Echo Off
Title DirectX Cleanup
Color 04

cd %systemroot%\system32
call :IsAdmin

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_ENABLE_UNSAFE_COMMAND_BUFFER_REUSE" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_ENABLE_RUNTIME_DRIVER_OPTIMIZATIONS" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_RESOURCE_ALIGNMENT" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D11_MULTITHREADED" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_MULTITHREADED" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D11_DEFERRED_CONTEXTS" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_DEFERRED_CONTEXTS" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D11_ALLOW_TILING" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D11_ENABLE_DYNAMIC_CODEGEN" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_ALLOW_TILING" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_CPU_PAGE_TABLE_ENABLED" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_HEAP_SERIALIZATION_ENABLED" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_MAP_HEAP_ALLOCATIONS" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\DirectX" /v "D3D12_RESIDENCY_MANAGEMENT_ENABLED" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
    Cls & Echo You must have administrator rights to continue ... 
    Pause & Exit
)
Cls
goto:eof

