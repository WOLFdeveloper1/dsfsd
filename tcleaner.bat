@echo off
title 🧹 Temp Cleaner
color 0A

:: Short delay to start
timeout /t 1 >nul

%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Yellow "Starting Temp Cleaning..."

:: Step 1 - Notify
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red "Cleaning TEMP files..."

:: Step 2 - Delete and recreate %temp%
rd /s /q "%temp%" >nul 2>&1
md "%temp%" >nul 2>&1
timeout /t 1 >nul

:: Step 3 - Windows temp folders
del /f /s /q "C:\Windows\Prefetch\*" >nul 2>&1
del /f /s /q "C:\Windows\Temp\*" >nul 2>&1
del /f /s /q "C:\Windows\System32\Temp\*" >nul 2>&1
timeout /t 1 >nul

:: Step 4 - User temp folders
del /f /s /q "%USERPROFILE%\AppData\Local\Temp\*" >nul 2>&1
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*" >nul 2>&1
timeout /t 1 >nul

:: Step 5 - Success message
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Green "✅ TEMP CLEANER completed successfully!"
timeout /t 2 >nul
exit
