@echo off
:loop
cls
color 9E
mode con cols=82 lines=25
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo 1.���ѹ�
echo.
echo 2.��D��
echo.
echo --------------------------------------------------------------------------------
set /p input=��ѡ��
if %input%==1 goto 1
if %input%==2 goto 2
:1
cd "F:\Program Files\SogouExplorer" 
start SogouExplorer.exe http://www.sogou.com
exit
:2
start D:\
exit