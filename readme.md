kioskhelper���ڻỰ������


preview.docx ����Ч��ͼ
kioskhelper.exe v1����õ�
kioskhelper_V2.exe v2����õ�
cmdow.exe �رմ��ڵ��õĹ���
serverconfig.txt ��������¼�����ַ���ã�����ǰҪ���ú÷�������ַ��
introweb ��������ҳ����
finishpage.html V2�汾����kioskhelper�ر�����ҳ����
kioskhelper.smm smart install maker V1�湤���ļ�
kioskhelper_V2.smm smart install maker V2�湤���ļ�
resources ����kioskhelper�ر�����ע�����

˵������һ���汾��ֻ�ǹر����д��ں�explorer��ȫ������������رճ���Ҫ��js����رմ��ڡ� �ڶ����汾��ȵ�һ���汾��������������ػ����ܣ���������Ƿ��رպ���Զ����´����������˹ر���Ҫ���ùرճ���ɱ���ػ���
����sim�ļ����ԣ�ʹ��sim�����ĳ����explorerʱ�޷���ʾ��������������н�����ִ�еĶ��������ó���ע����

ע�����
1.��������ǰҪ�����ĵ�����Ϊcmdow��ǿ�ƹرմ��ڡ�
2.v2�汾Ҫ�����е��û���ע���Ȩ�ޡ����û�п���ʹ��V1
3.�ļ��ͷ�Ŀ¼Ϊd:\kiosktmp�����ǿ��ǲ��ּ����û��c�̶�дȨ�ޡ�
4.Ŀ¼��finish.exeΪ����������sim��װ���Զ����ɵ�

������v1�汾����Ľ���
@echo off

rem -- Nathan Zhou
rem -- Survey access control for CCSC
rem -- Version Beta_01

title Kiosk webpage starter Vb.01


echo DONOT close this windows!
echo Nathan needs a GF!

cmdow @ /hid
for /f %%a in ('cmdow /t') do cmdow %%a /cls //�ر����д���

set /p servaddr=<serverconfig.txt
eoch server address is %servaddr% //��ȡ��������ַ

taskkill /f /im explorer.exe //ɱ��explorer


mshta vbscript:msgbox("Server address: %servaddr%",64,"Kioskhelper welcome")(window.close) //���������ÿ���ȥ��



start /wait C:\Progra~1\Intern~1\iexplore.exe -k %servaddr% //����IE���ȴ�

finish.exe //���н�����������ļ���ע��
