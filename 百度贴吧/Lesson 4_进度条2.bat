@echo off
title ������
mode con cols=113 lines=15
color 9f
cls
echo.
echo �������ڳ�ʼ��. . .
echo.
echo ��������������������������������������������������������������
for /L %%i in (0 5 100) do set /p a=��<nul & ping /n 1 127.0.0.1>nul & title %%i%%
echo 100%%
echo ��������������������������������������������������������������
pause>nul