@echo off
color 1a
echo.
echo���ù����������̨
echo.
echo                       ����:jack
echo                      2013��10��16��
echo.
:input
echo ����ѡ��
echo          [1] ϵͳ����̨ [mmc] 
echo          [2] �򿪳������±����� [notepad++]
echo          [3] �򿪻�ͼ�༭���� [mspaint]
echo          [4] Զ�����湤�� [mstsc]
echo          [5] ���������� [calc]
echo          [6] ��������� [taskmgr]
echo          [7] ÿ��SVCHOST�����ṩ�˶���ϵͳ���� [tasklist /svc]
echo          [8] ��Telnet�ͻ��� [Telnet]
echo          [9] ���ݺ͹����޸����� [ntbackup]
echo          [10] ����������ļ��� [%temp%]
echo          [11] �򿪱����û����� [lusrmgr.msc]
echo          [12] �鿴����������� [mem]
echo          [13] ��Ȿ��Ĭ��IP��ַ [ipconfig /all]
echo          [14] �������(192.168.1.1) [����5�����ݰ�]
echo          [r] �������
echo          [c] �رյ���
echo          [e] �˳�
echo.
set /p s=��������Ҫ�Ĺ��ܣ�
if %s%==1 goto A
if %s%==2 goto B
if %s%==3 goto C
if %s%==4 goto D
if %s%==5 goto E
if %s%==6 goto F
if %s%==7 goto G
if %s%==8 goto H
if %s%==9 goto I
if %s%==10 goto J
if %s%==11 goto K
if %s%==12 goto L
if %s%==13 goto M
if %s%==14 goto N
if %s%==r goto R
if %s%==c goto sh
if %s%==e goto q
cls
echo ��������������������룺
goto input
:A
mmc.exe
goto input
:B
start notepad++
goto input
:C
mspaint
goto input
:D
mstsc
goto input
:E
calc
goto input
:F
taskmgr
goto input
:G
tasklist /svc 
ping -n 3 127.1>null
goto input
:H
telnet
goto input
:I
ntbackup
goto input
:J
cd %temp%
goto input
:K
lusrmgr.msc
goto input
:L
mem
goto input
:M
ipconfig /all| find "IPv4" & ipconfig /all|find "Ĭ������"
goto input
:N
set /p ping=��������ҪPING�ĵ�ַ�����أ�
ping %ping% -n 5
ping -n 3 127.1>null
goto input
:R
shutdown -r -t 0
goto e
:sh
shutdown -s -t 0
goto e
:q
goto e