@ECHO OFF
XCOPY C:\AUTOEXEC.BAT D:IF ERRORLEVEL 1 ECHO �ļ�����ʧ��
IF ERRORLEVEL 0 ECHO �ɹ������ļ�
pause>nul



goto note
Ȼ��ִ���ļ�:
C:\>TEST4
����ļ������ɹ�����Ļ�ͻ���ʾ���ɹ������ļ���������ͻ���ʾ���ļ�����ʧ�ܡ���
IF ERRORLEVEL ����������������һ��DOS����ķ���ֵ�ģ�ע��ֻ����һ������ķ���ֵ��
���ҷ���ֵ�������մӴ�С����˳���жϡ����������������ļ��Ǵ���ģ�
@ECHO OFF
XCOPY C:\AUTOEXEC.BAT D:\
IF ERRORLEVEL 0 ECHO �ɹ������ļ�
IF ERRORLEVEL 1 ECHO δ�ҵ������ļ�
IF ERRORLEVEL 2 ECHO �û�ͨ��ctrl-c��ֹ��������
IF ERRORLEVEL 3 ECHO Ԥ�ô�����ֹ�ļ���������
IF ERRORLEVEL 4 ECHO ����������д�̴���
���ۿ����Ƿ�ɹ�������ģ�
δ�ҵ������ļ�
�û�ͨ��ctrl-c��ֹ��������
Ԥ�ô�����ֹ�ļ���������
����������д�̴���
������ʾ������
:note