@echo off
:st
cls
set /p a=���뱻����
set /p b=�������
set /a answer=%a% %% %b%
echo ������%a%������%b%
echo ������Ϊ%answer%
pause>nul
cls
echo ������%%random%%,����10
pause>nul
echo ������Ϊ0-9
pause>nul
echo �⣬����ȡ�࣡������������%%ת�壬����set/a֮�м���������
pause>nul
:loop
cls
set /p q=�Ƿ��ٿ�һ�飿���ش�YES����NO����
if "%q%" == "YES" goto st
if "%q%" == "NO" exit
::���ִ�Сд
rem ���롰YES����NO��֮����ַ��������������������룡
goto loop