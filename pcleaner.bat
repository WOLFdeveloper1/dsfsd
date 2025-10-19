@echo off
title System Cleaner
color 0A

echo ======================================
echo 🔧 Starting PC Cleaner...
echo ======================================
echo.

:: Step 1 - Clear Temp files
echo 🧹 Clearing Temp files...
del /f /s /q "%temp%\*" >nul 2>&1
timeout /t 2 >nul

:: Step 2 - Clear Windows Temp
echo 🧹 Clearing Windows Temp...
del /f /s /q "C:\Windows\Temp\*" >nul 2>&1
timeout /t 2 >nul

:: Step 3 - Clear Prefetch
echo 🧹 Clearing Prefetch files...
del /f /s /q "C:\Windows\Prefetch\*" >nul 2>&1
timeout /t 2 >nul

:: Step 4 - Clear recent files
echo 🧹 Clearing Recent Documents...
del /f /s /q "%AppData%\Microsoft\Windows\Recent\*" >nul 2>&1
timeout /t 2 >nul

:: Step 5 - Clear DNS Cache
echo 🌐 Flushing DNS Cache...
ipconfig /flushdns >nul 2>&1
timeout /t 2 >nul

:: Step 6 - Reset IP and Firewall
echo 🔁 Resetting IP Configuration and Firewall...
netsh int ip reset >nul 2>&1
netsh winsock reset >nul 2>&1
netsh advfirewall reset >nul 2>&1
timeout /t 2 >nul

echo.
echo ✅ Cleaning Completed Successfully!
echo ======================================
timeout /t 3 >nul
exit
