@echo off
IF EXIST \AUTOEXEC.BAT TYPE \AUTOEXEC.BAT
IF NOT EXIST \AUTOEXEC.BAT ECHO \AUTOEXEC.BAT does not exist
pause>nul


goto note
Ȼ����������
C:\>TEST1.BAT
���C:\����AUTOEXEC.BAT�ļ�����ô�������ݾͻᱻ��ʾ��������������ڣ�������ͻ���ʾ����ļ������ڡ�

@ECHO OFF
IF EXIST \%1 TYPE \%1
IF NOT EXIST \%1 ECHO \%1 does not exist

ִ��:
C:\>TEST2 AUTOEXEC.BAT
���������н��ͬ�ϡ�
˵����
(1) IF EXIST �����������ļ��Ƿ���ڵģ���ʽΪ
IF EXIST [·��+�ļ���] ����
(2) test2.bat�ļ��е�%1�ǲ�����DOS������9����������Ϣ���������ļ����ֱ�Ϊ%1~%9(%0��ʾtest2�����) �����е������е�ʵ�κ��βεĹ�ϵ��%1���βΣ�AUTOEXEC.BAT��ʵ�Ρ�
:note