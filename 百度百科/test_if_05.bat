@echo off
echo;>>%systemroot%\test.txt
if errorlevel 1 ( echo д��ɹ�! ) else echo д��ʧ��
pause>nul
rem ��δ��볢����%systemroot%\system32\д������,���Ȩ�޲�����ɱ��������ؾͻ�д��ʧ��,��ʱ�ͻ���ʾ"д��ʧ��"��
rem ��֪��%systemroot%��ʾ��ʲô?��������set�Լ���ϸ��һ�½��.
����

rem ��������������ᷢ����δ��뻹�и�����д��
rem ע:�� if errorlevel�жϷ���ֵʱҪ������ֵ�Ӵ�С����
@echo off����
choice /C:ABC /n "A/B/C"
if errorlevel 3 echo You choose the C
if errorlevel 2 echo You choose the B
if errorlevel 1 echo You choose the A
pause>nul

rem IF�ĵ������÷�,�жϷ���ֵ(ERRORLEVEL)