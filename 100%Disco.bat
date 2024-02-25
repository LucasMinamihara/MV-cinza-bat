@echo off

wmic diskdrive get caption, status

timeout 5

sfc /scannow

timeout 5

dism /online /cleanup-image /restorehealth

timeout 5

sc stop "SysMain"
sc config "SysMain" start=disabled
sc config wuauserv start=disabled

chkdsk /f /r 

cls

echo Agora seu computador precisa ser reiniciado...

timeout 10

shutdown /r

pause