:::::::�����޸��ļ���.bat:::::::
@echo off
title �����޸��ļ���

set num=0
setlocal ENABLEDELAYEDEXPANSION

:: dir /a-d/b *.jpg����˼����ʾĿ¼������jpg�ļ����ļ�������ȥĿ¼��
:: ren "%%a" "!num!.jpg"����˼�ǽ��ļ�����Ϊ������1��ʼ�����֡�
for /f "delims=" %%a in('dir /a-d/b *.jpg') do (
	set /a num+=1
	ren "%%a" "!num!.jpg"
)

echo ���������
pause>nul
::::::::::::::::::::::::::::::::