@echo off
echo ��ǰ�������е��������ļ���ȫ·����%~x0
pause

@echo off
setlocal EnableDelayedExpansion
echo ��ǰ�������е��������ļ�����·����!cd!
pause

@echo off
echo ��ǰĿ¼�ǣ�%cd%
pause

@echo off
:: set "abc=%cd%"
echo ��ǰ�������е��������ļ�����·����%~dp0
pause

@echo off
echo ��ǰ���̷���·��:%~dp0
echo ��ǰ���̷���·���Ķ��ļ�����ʽ:%~sdp0
pause

@echo ȡ��ǰ�ļ����ϼ�Ŀ¼������
set a=%cd%
for %%a in ("%a%") do (
        set ok=%%~dpa
        for /f "delims=" %%b in ("!ok:~0,-1!") do (
                echo %%~nb
        )
)
pause