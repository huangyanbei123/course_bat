@echo off

rem ָ��������
set runlog="%~dp0\test_1og.txt"

rem ָ������ļ���Ŀ¼
set work_path=D:\Shortcuts 

rem ��ǰ�̷�
%~d0

rem ɾ����־
del %runlog%


rem ���ñ���
set title_0=��������ǰĿ¼�µ��ļ���
set title_1=������ָ��Ŀ¼�µ��ļ���
set title_2=������Ŀ¼���ļ���
set title_3=��������Ŀ¼��
set title_4=����
set title_5=����
set title_6=����
set title_7=����
set title_8=����
set title_9=����ȡ��ǰ�̷��͵�ǰĿ¼���ϼ�Ŀ¼��

:menu
cls
title ѡ����
color 0A
mode con cols=82 lines=25
echo --------------------------------------------------------
echo.
echo 0.%title_0%
echo 1.%title_1%
echo 2.%title_2%
echo 3.%title_3%
echo 4.%title_4%
echo 5.%title_5%
echo 6.%title_6%
echo 7.%title_7%
echo 8.%title_8%
echo 9.%title_9%
echo.
echo --------------------------------------------------------
set /p input=��ѡ��
if "%input%"=="0" cls & goto NO.0
if "%input%"=="1" cls & goto NO.1
if "%input%"=="2" cls & goto NO.2
if "%input%"=="3" cls & goto NO.3 
if "%input%"=="4" cls & goto NO.4
if "%input%"=="5" cls & goto NO.5
if "%input%"=="6" cls & goto NO.6
if "%input%"=="7" cls & goto NO.7
if "%input%"=="8" cls & goto NO.8
if "%input%"=="9" cls & goto NO.9 
:err
cls
echo �Բ���������������밴������������룡
pause > nul
goto menu

:NO.0
@echo off
title %title_0%
rem delims�Ƿָ��ʾ����
for /f "delims=" %%a in ('dir /b/a-d/oN *.*') do (
  echo %%a >> %runlog%
)
pause
exit

:NO.1
@echo off
title %title_1%
for /f "delims=\" %%a in ('dir /b /a-d /o-d "%work_path%\*.*"') do (
  echo %%a >> %runlog%
)
pause
exit

:NO.2
@echo off
title %title_2%
cd %work_path% 
for /R %%s in (.,*) do ( 
  echo %%s >> %runlog%
) 
pause
exit

:NO.3
@echo off
title %title_3%
for /R %%s in (.) do ( 
echo %%s >> %runlog%
) 
pause
exit

:NO.4
@echo off
title %title_4%

pause
exit

:NO.5
@echo off
title %title_5%


pause
exit

:NO.6
@echo off
title %title_6%


pause
exit

:NO.7
@echo off
title %title_7%


pause
exit

:NO.8
@echo off
title %title_8%


pause
exit

:NO.9
@echo off
title %title_9%
echo ��ǰ�̷���%~d0
echo ��ǰ�̷���·����%~dp0
echo ��ǰ�̷���·���Ķ��ļ�����ʽ��%~sdp0
echo ��ǰ������ȫ·����%~f0
echo ��ǰCMDĬ��Ŀ¼��%cd%
pause
exit