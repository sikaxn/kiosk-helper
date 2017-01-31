@echo off

rem -- Nathan Zhou
rem -- Survey access control for CCSC
rem -- Version Beta_01

title Kiosk webpage starter Vb.01


echo DONOT close this windows!


cmdow @ /hid
for /f %%a in ('cmdow /t') do cmdow %%a /cls

set /p servaddr=<serverconfig.txt
eoch server address is %servaddr%

taskkill /f /im explorer.exe

mshta vbscript:msgbox("KIOSKHELPER Version: 1.0. Copyright: Nathan Zhou,2016. Agree, click on 'OK'.",64,"Kioskhelper welcome")(window.close)

mshta vbscript:msgbox("Hi there! Welcome to the survey! Not it is about the time to get you access the survey. If you have any question, please do not afraid raise your hand and ask for help.  Click on OK to continue.",64,"Kioskhelper welcome")(window.close)


mshta vbscript:msgbox("If the webpage cannot load up, press F5 to refreash the webpage. Click on OK to continue.",64,"Kioskhelper welcome")(window.close)

mshta vbscript:msgbox(" Once you finish the survey, you will be log off from windows. Just simply login to continuing usingt the computer. If your computer crash, please calm down and raise your hand. DONOT shutdown the computer or trying to close anything! Havefun! Click on OK to continue.",64,"Kioskhelper welcome")(window.close)


start /wait C:\Progra~1\Intern~1\iexplore.exe -k %servaddr%

finish.exe