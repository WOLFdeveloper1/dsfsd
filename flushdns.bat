cls
ipconfig /all
ipconfig /registerdns
ipconfig /displaydns
ipconfig /release
ipconfig /renew
ipconfig /flushdns
cls
netsh int ip reset
netsh winsock reset
netsh interface ipv4 reset
netsh interface ipv6 reset
netsh advfirewall reset
nbtstat -r
nbtstat -rr

%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor green FLUSH DNS Successfully!