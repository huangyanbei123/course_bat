@echo off
:start
title �Ź���
mode con:cols=82 lines=25
set one=��& set two=��& set thr=��
set fou=��& set fiv=��& set six=��
set sev=��& set eig=��& set nin=��
::��ʼ������
:loop
cls
:���Խ׶�
echo %one%%two%%thr%%fou%%fiv%%six%%sev%%eig%%nin%>data.txt
set /p data=<data.txt
::��������������ʲô����
set /a xxx=1+%random%%%9
if "%xxx%"=="1" if "%one%"=="��" set one=��
if "%xxx%"=="2" if "%two%"=="��" set two=��
if "%xxx%"=="3" if "%thr%"=="��" set thr=��
if "%xxx%"=="4" if "%fou%"=="��" set fou=��
if "%xxx%"=="5" if "%fiv%"=="��" set fiv=��
if "%xxx%"=="6" if "%six%"=="��" set six=��
if "%xxx%"=="7" if "%sev%"=="��" set sev=��
if "%xxx%"=="8" if "%eig%"=="��" set eig=��
if "%xxx%"=="9" if "%nin%"=="��" set nin=��
if "%data%"=="%one%%two%%thr%%fou%%fiv%%six%%sev%%eig%%nin%" goto loop
:�ж��׶�
if "%one%"=="��" if "%two%"=="��" if "%thr%"=="��" call:ʤ��
if "%fou%"=="��" if "%fiv%"=="��" if "%six%"=="��" call:ʤ��
if "%sev%"=="��" if "%eig%"=="��" if "%nin%"=="��" call:ʤ��
if "%one%"=="��" if "%fou%"=="��" if "%sev%"=="��" call:ʤ��
if "%two%"=="��" if "%fiv%"=="��" if "%eig%"=="��" call:ʤ��
if "%thr%"=="��" if "%six%"=="��" if "%nin%"=="��" call:ʤ��
if "%one%"=="��" if "%fiv%"=="��" if "%nin%"=="��" call:ʤ��
if "%thr%"=="��" if "%fiv%"=="��" if "%sev%"=="��" call:ʤ��
if "%one%"=="��" if "%two%"=="��" if "%thr%"=="��" call:ʧ��
if "%fou%"=="��" if "%fiv%"=="��" if "%six%"=="��" call:ʧ��
if "%sev%"=="��" if "%eig%"=="��" if "%nin%"=="��" call:ʧ��
if "%one%"=="��" if "%fou%"=="��" if "%sev%"=="��" call:ʧ��
if "%two%"=="��" if "%fiv%"=="��" if "%eig%"=="��" call:ʧ��
if "%thr%"=="��" if "%six%"=="��" if "%nin%"=="��" call:ʧ��
if "%one%"=="��" if "%fiv%"=="��" if "%nin%"=="��" call:ʧ��
if "%thr%"=="��" if "%fiv%"=="��" if "%sev%"=="��" call:ʧ��
if not "%one%"=="��" if not "%two%"=="��" if not "%thr%"=="��" if not "%fou%"=="��" if not "%fiv%"=="��" if not "%six%"=="��" if not "%sev%"=="��" if not "%eig%"=="��" if not "%nin%"=="��" call:�;�
::ö������Ϸ�����п����ԡ���for�˽��ͬѧ�������Լ򻯴��롣
:��ҽ׶�
echo %one%%two%%thr%%fou%%fiv%%six%%sev%%eig%%nin%>data.txt
set /p data=<data.txt
:choose
cls
echo �����ש��ש���
echo ��%one%��%two%��%thr%��
echo �ǩ��贈�贈��
echo ��%fou%��%fiv%��%six%��
echo �ǩ��贈�贈��
echo ��%sev%��%eig%��%nin%��
echo �����ߩ��ߩ���
::��ӡ���̸���ҿ�
set /p ooo=������Ų��س���
if %ooo% == 1 if "%one%"=="��" set one=��
if %ooo% == 2 if "%two%"=="��" set two=��
if %ooo% == 3 if "%thr%"=="��" set thr=��
if %ooo% == 4 if "%fou%"=="��" set fou=��
if %ooo% == 5 if "%fiv%"=="��" set fiv=��
if %ooo% == 6 if "%six%"=="��" set six=��
if %ooo% == 7 if "%sev%"=="��" set sev=��
if %ooo% == 8 if "%eig%"=="��" set eig=��
if %ooo% == 9 if "%nin%"=="��" set nin=��
if "%data%"=="%one%%two%%thr%%fou%%fiv%%six%%sev%%eig%%nin%" goto choose
goto loop

:ʤ��
cls
echo Congratulation!(��ϲ!)
mshta vbscript:createobject("sapi.spvoice").speak("congratulation")(window.close)
goto start

:ʧ��
cls
echo YOU ARE LOSE!(������!)
mshta vbscript:createobject("sapi.spvoice").speak("U R loose")(window.close)
goto start

:�;�
cls
echo Play even!(�;�!)
mshta vbscript:createobject("sapi.spvoice").speak("Play even")(window.close)
goto start
::======================================================================
goto note
���ʣ�
call:XXX-------����XXX��ǩ
mshta----------���ã�vb��java�ű���
U R loose��you are lose�����Ƕ�����������ɵ������������������ʡ�ַ��������ݱ���ճ���������곶Զ��= =
���ͣ�
set /p XXX=<YYY ��XXX����ΪYYY�е����ݡ���set /p o=<order.ini
if...if...�����...�����...
createobject("sapi.spvoice").speak("congratulation")(window.close)������VB�ű�����Ϊ:
============�ñ��ص�TTS�ļ��ʶ���congratulation��
============(window.close)��Ϊ�رմ��ڡ�
============���ֻ��Ҫ֪�������ʽ�ͺ��ˡ�
��ϰ��
�������������顱����������if�ж�����������Ӳ���¾Ϳ���ʵ�֡�
���
���������������壿��Ц������ѧ����һ����˵�ɣ�
:note