@echo off
set /p num1=���һ����������:
set /p num2=��ڶ�����������:
if not %num1% LSS %num2% (
rem lss��ʾС�ڡ���
rem [not]Ϊ��ѡ����,��ʾ��,���������num1��С�ڱ���num2�������һ�����ִ�,��������ڶ������ִ󡡡�
	echo ��һ�����ִ�
) ELSE (
	echo �ڶ������ִ󡡡�
)
pause>nul

rem ��δ������ʵ��һ���򵥵��ж�,�������в���֮��-----������������������,���Ҫ������ǵ�else if��(��Ȼ��Ҳ�����ü���if���ж�)
set /p num1=���һ����������:
set /p num2=��ڶ�����������:
if "%num1%" gtr "%num2%" (
	echo ��һ�����ִ�
) ELSE if "%num1%" EQU "%num2%" (
	echo һ���󡡡�
) ELSE (
	echo �ڶ������ִ󡡡�
)
pause>nul

goto note
------�Ƚ������-----
EQU - ����
NEQ - ������
LSS - С��
LEQ - С�ڻ����
GTR - ����
GEQ - ���ڻ����
:note

rem IF�ĵڶ����÷�,�Ƚ�����