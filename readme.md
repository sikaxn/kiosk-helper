kioskhelper窗口会话管理器


preview.docx 运行效果图
kioskhelper.exe v1编译好的
kioskhelper_V2.exe v2编译好的
cmdow.exe 关闭窗口调用的工具
serverconfig.txt 服务器登录界面地址设置，编译前要设置好服务器地址。
introweb 服务器网页样本
finishpage.html V2版本调用kioskhelper关闭器网页样例
kioskhelper.smm smart install maker V1版工程文件
kioskhelper_V2.smm smart install maker V2版工程文件
resources 调用kioskhelper关闭器的注册表项

说明：第一个版本，只是关闭所有窗口和explorer，全屏打开浏览器。关闭程序要用js代码关闭窗口。 第二个版本相比第一个版本，加入了浏览器守护功能，浏览器被非法关闭后会自动重新打开浏览器。因此关闭需要调用关闭程序杀掉守护。
由于sim的兼容性，使用sim创建的程序打开explorer时无法显示任务栏。因此所有结束后执行的动作都设置成了注销。

注意事项：
1.启动程序前要保存文档，因为cmdow会强制关闭窗口。
2.v2版本要求运行的用户有注册表权限。如果没有可以使用V1
3.文件释放目录为d:\kiosktmp，这是考虑部分计算机没有c盘读写权限。
4.目录下finish.exe为结束程序，是sim安装包自动生成的

以下是v1版本代码的解释
@echo off

rem -- Nathan Zhou
rem -- Survey access control for CCSC
rem -- Version Beta_01

title Kiosk webpage starter Vb.01


echo DONOT close this windows!
echo Nathan needs a GF!

cmdow @ /hid
for /f %%a in ('cmdow /t') do cmdow %%a /cls //关闭所有窗口

set /p servaddr=<serverconfig.txt
eoch server address is %servaddr% //读取服务器地址

taskkill /f /im explorer.exe //杀掉explorer


mshta vbscript:msgbox("Server address: %servaddr%",64,"Kioskhelper welcome")(window.close) //弹窗，不用可以去掉



start /wait C:\Progra~1\Intern~1\iexplore.exe -k %servaddr% //启动IE并等待

finish.exe //运行结束程序，清除文件并注销
