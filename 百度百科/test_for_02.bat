@echo off
for /L %%a in (1 2 100) do echo %%a
pause>nul
rem ����÷��ܼ�,û��ʲôҪ�����,����δ�����Ҫ�ǿ����˶��ſ���ʡ��.
rem ��Ȼ����һЩϡ��Źֵ��÷�Ϊ�˷�ֹ����Ū��������Ͳ�������

goto note
FOR /L %variable IN (start,step,end) DO command [command-parameters]
�ü���ʾ��������ʽ�ӿ�ʼ��������һ���������С�
��ˣ�(1,1,5) ���������� 1 2 3 4 5��(5,-1,1) ���������� (5 4 3 2 1)��
:note