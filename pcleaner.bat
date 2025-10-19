@echo off
title Power Cleaner
color 0A
cls

:: Display status
powershell -Command "Write-Host 'PLEASE WAIT...' -ForegroundColor Red"
powershell -Command "Write-Host 'BE PATIENT...' -ForegroundColor Yellow"
powershell -Command "Write-Host 'POWER CLEANER NEED TIME TO CLEAN...' -ForegroundColor Cyan"

:: Clean temporary files
del /f /s /q "%systemdrive%\*.tmp" >nul 2>&1
del /f /s /q "%systemdrive%\*._mp" >nul 2>&1
del /f /s /q "%systemdrive%\*.log" >nul 2>&1
del /f /s /q "%systemdrive%\*.gid" >nul 2>&1
del /f /s /q "%systemdrive%\*.pnf" >nul 2>&1
del /f /s /q "%systemdrive%\*.chk" >nul 2>&1
del /f /s /q "%systemdrive%\*.old" >nul 2>&1

:: Clean Windows Temp
if exist "%windir%\temp" rd /s /q "%windir%\temp"
md "%windir%\temp" >nul 2>&1

:: Clean user temp & recent
del /f /q "%userprofile%\cookies\*.*" >nul 2>&1
del /f /q "%userprofile%\recent\*.*" >nul 2>&1
del /f /s /q "%userprofile%\AppData\Local\Temp\*.*" >nul 2>&1
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.*" >nul 2>&1
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\History\*.*" >nul 2>&1

:: Clean Prefetch
if exist "%windir%\prefetch" rd /s /q "%windir%\prefetch"
md "%windir%\prefetch" >nul 2>&1

:: Clean dump files
del /f /s /q "%SystemRoot%\MEMORY.DMP" >nul 2>&1
del /f /s /q "%SystemRoot%\Minidump.dmp" >nul 2>&1
if exist "%SystemRoot%\Minidump" rd /s /q "%SystemRoot%\Minidump"
md "%SystemRoot%\Minidump" >nul 2>&1

:: Clean Tencent-related files
if exist "C:\ProgramData\Tencent" rd /s /q "C:\ProgramData\Tencent"
if exist "%userprofile%\AppData\Local\Tencent" rd /s /q "%userprofile%\AppData\Local\Tencent"
if exist "%userprofile%\AppData\Roaming\Tencent" rd /s /q "%userprofile%\AppData\Roaming\Tencent"

:: Clear IE cache silently (ignore if not installed)
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255 >nul 2>&1

:: Success message
powershell -Command "Write-Host 'POWER CLEANER Successfully!' -ForegroundColor Green"

:: Auto close immediately
exit /b 0
