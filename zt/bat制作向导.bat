@echo off
mode con cols=50 lines=20
color 5f
title bat������
set tmp=usetemp.bat
if exist "%temp%\bat.tmp" (goto jump) else (goto unjump)
:jump
cls
set/p off=�Ƿ�رջ��� 1.��
if %off%==1 (echo @echo off>>%tmp%) else (
set back=jump
goto error
)
cls
set/p title=�Ƿ������ �������� 2.��
if %title%==2goto one else (echo %title%>>%tmp%)
:one
cls
set/p con=�Ƿ��崰�ڳߴ� 1.�� 2.��
if %con%==1 goto setcon
if %con%==2 goto two
set back=one
goto error
:setcon
cls
set/p heng=�������ȣ����֣�
set/p shu=�����볤�ȣ����֣�
echo mode con cols=%heng% lines=%shu%>>%tmp%
:two
cls
set/p color=�Ƿ�����ɫ 1.�� 2.��       ��֪����ɫ����������help   
if %color%=="1" goto setcolor
if %color%=="2" goto three
if %color%=="help" goto colorhelp
set back=two
goto error
:setcolor
cls
set/p colord=��������ɫ����
echo color %colord%>>%tmp%
goto three
:colorhelp
cls
color/?
echo �����������
pause>nul
goto two
:three
cls
set/p echo=�������������� ����exit������һ��
if %echo%==exit goto four
echo echo %echo%>>%tmp%
goto three
:four
cls
set/p esit=�Ƿ�������˳� 1.�� 2.��
if %esit%==1 goto setexit
if %esit%==2 goto five
set back=four
goto error
:setexit
cls
set/p esid=��ѡ������˳� 1.����������� 2.echo ��ʾ pause^>nul 3.����ͣ������
if %esid%==1 goto pause
if %esid%==2 goto pnul
if %esid%==3 goto ping
set back=setexit
goto error
:pause
cls
echo pause>>%tmp%
goto five
:pnul
cls
echo pause^>nul>>%tmp%
goto five
:ping
cls
set/p png=������ping��ʱ��
echo ping %png%^>nul>>%tmp%
goto five
:five
cls
set/p end=1.�����ļ� 2.�����ļ� 3.����ļ�(���±��༭) 4.�˳�
if %end%==1 goto type
if %end%==2 goto save
if %end%==3 goto note
if %end%==4 exit
goto five
:type
cls
call %tmp%
mode con cols=50 lines=20
color 5f
goto five
:save
cls
set/p name=�������ļ�����
ren "%tmp%" "%name%"
set/p save=�����뱣��·�������û�н���������
if %save%=="" (
echo ��û��д����ȷ���Ƿ���ļ��ŵ���Ŀ¼%cd%��
set /p saveerror=1.�� ��������
if %saveerror%==1 set save=%cd%
)
if exist %save% (goto yesstor)else (goto nostor)
:yesstor
cls
move "%name%" "%save%\%name%.bat">nul
goto five
:nostor
cls
md "%save%"
move "%name%" "%save%\%name%.bat">nul
goto five
:note
cls
if exist %mane% (goto noteyes) else (goto noteno)
goto five
:unjump
echo ��ӭ����bat������   by:�����鰮
echo �����˽������Ϣ �����qqȺ 280588143 66612321  
echo.>"%temp%\bat.tmp"
for /l %%i in (1,1,5)do ping -n 2 127.1.1.1>nul
goto jump
:error
echo �����������������
pause>nul
goto %back%
:noteyes
notepad.exe %name%
goto five
:noteno
notepad.exe "%save%\%name%.bat"