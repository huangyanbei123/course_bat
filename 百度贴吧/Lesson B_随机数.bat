@echo off
rem ����Զ����1-40�����Ҳ��ظ�
:loop
set /p shouka=��Ҫͬʱ�����������
set /a tnum=1+%random%%%40
rem ���[1+(1-40)-1]��Ϊtunm
rem ��%%���ߵĿո�ȥ��Ч��û�
if not defined _%tnum% ( set s=%s% _%tnum% & set /a i+=1)
rem ���û�б���_tnum�����ñ���s=����s_����tnum������i+1
set _%tnum%=%tnum%
rem ���ñ���_%tnum%Ϊ����tnum
if not "%i%" equ "%shouka%" goto loop
rem �������i������%shouka%����ת��loop
echo %s%
rem ��ʾ����s
pause>nul


goto note
���ͣ�
if not defined %XXX%���������XXX��������balabala...
====================defined ������ԽӸ��ֱ�����%%X���ֱ������ǽ��ڵڶ���ѧ����
set /a XXX=[W]+%random%%%Y+[Z]������%XXX%Ϊ���[W+(0~Y)+Z](W��Z�ɲ���)
�ַ���
:��ǩ
cls����
set/p����
if�ж�
goto��ǩ
--------------------
���Ǿ���������ַ����û�����ѡ������Ĵ�ʱ���Ӵ𰸲��Ҽ������ʡ�
��ϰ��
������һ��ѡ�����Ȥζ��Ϸ����Ŀ��������ظ���
���
����������һ����ʱ������������һ�����ڵ���0��С�ڳ������������ڴ˾���Lesson3ԭ�ĵ�5�еġ�%random%%%9��Ӧ��Ϊ��%random%%%10�������͡�set /a XXX=%random%%%Y+Z���Ĵ���Ҳ�ɱ�ƪ���ĵľ��͸�����
:note