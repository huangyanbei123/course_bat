@echo off
IF "%1" == "A" ECHO XIAO
IF "%2" == "B" ECHO TIAN
IF "%3" == "C" ECHO XIN
pause>nul



goto note
������У�
C:\>TEST3 A B C
��Ļ�ϻ���ʾ:
XIAO
TIAN
XIN

������У�
C:\>TEST3 A B
��Ļ�ϻ���ʾ
XIAO
TIAN
���������ִ�й����У�DOS�Ὣһ�����ַ���ָ��������%3��
:note