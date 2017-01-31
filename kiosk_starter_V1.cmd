@echo off

rem -- Nathan Zhou
rem -- Survey access control for CCSC
rem -- Version Beta_01

title Kiosk webpage starter Vb.01


echo DONOT close this windows!
echo Nathan needs a GF!

cmdow @ /hid
for /f %%a in ('cmdow /t') do cmdow %%a /cls

set /p servaddr=<serverconfig.txt
eoch server address is %servaddr%

taskkill /f /im explorer.exe


mshta vbscript:msgbox("Server address: %servaddr%",64,"Kioskhelper welcome")(window.close)



start /wait C:\Progra~1\Intern~1\iexplore.exe -k %servaddr%

finish.exe