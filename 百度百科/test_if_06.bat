@echo off
:menu
cls
color 0A
mode con cols=82 lines=25
echo --------------------------------------------------------
echo.
echo.                     1.�Ŀ�������...............
echo.                     2.�ϲ�MUMA.................
echo.                     3.�Ա���IP.................
echo.                     4.������.................
echo.                     5.����inputtdown...........
echo.                     6.ɾ�����и�Ŀ¼ָ���ļ�...
echo.                     7.����ػ�.................
echo.                     8.Add\Del�û�..............
echo.                     
echo --------------------------------------------------------
set /p input=    ��ѡ��,��q�˳�[ ]
if "%input%"=="1" cls & goto one
if "%input%"=="2" cls & goto two
if "%input%"=="3" cls & goto three
if "%input%"=="4" cls & goto four
if "%input%"=="5" cls & goto five
if "%input%"=="6" cls & goto six
if "%input%"=="7" cls & goto seven
if "%input%"=="8" cls & goto eight
if "%input%"=="q" exit
:err
cls
echo �Բ���������������밴������������룡
pause > nul
goto menu