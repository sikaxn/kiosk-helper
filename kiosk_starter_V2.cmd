@echo off

rem -- Nathan Zhou
rem -- Survey access control for CCSC
rem -- Version Beta_02

title Kiosk webpage starter Vb.01

cmdow @ /hid
for /f %%a in ('cmdow /t') do cmdow %%a /cls


taskkill /f /im explorer.exe

set /p servaddr=<serverconfig.txt
eoch server address is %servaddr%

mshta vbscript:msgbox("Server address: %servaddr%. Suppor& Bug Report:sikaxn@163,com",64,"Kioskhelper welcome")(window.close)

set var=100
rem ************循环开始了
:continue
echo Detect IE is not running! Please wait to restart
start /wait C:\Progra~1\Intern~1\iexplore.exe -k %servaddr%
set /a var-=1
if %var% gtr 0 goto continue
rem ************循环结束了
