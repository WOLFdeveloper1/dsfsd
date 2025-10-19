SLEEP 2
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red CLEANING TEMP FILES...
rd /s /f /q %temp% /s /q
md %temp%
del /s /f /q C:\Windows\Prefetch\*.*
del /s /f /q C:\Windows\temp\*.*
del /s /f /q C:\Windows\System32\temp\*.*
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"

%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor 2 TEMP CLEANER Successfully!