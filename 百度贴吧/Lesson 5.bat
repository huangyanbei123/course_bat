@echo off
echo ���ڼ������......
rem �����ִ����Duapp�ٶȷ������������ӱ�����
ping>nul http://bcs.duapp.com/futurer && echo ��˵�ǵ����ٶȲ����������� ||goto ap
pause>nul
exit
:ap
cls
echo ���ڽ��뵥���ٶ�......
echo @echo off>1.cmd
echo set a=>>1.cmd
echo set/p a=������ؼ���: >>1.cmd
echo start http://www.baidu.com >>1.cmd
rem start "�ٶ�����" 1.cmd
rem start "XX" YYY����XX�����YYY��
rem call 1.cmd
echo exit>>1.cmd
start/wait 1.cmd
del 1.cmd
exit

::=====================================================
goto note
���ʣ�
start �򿪣�������ַ��
���ͣ�
ping[>nul] XXXX����������XXXX�����������>nul����ʾ���������
================nul���û��������ļ���XXXX��������ַ��

XXXX && YYYY || ZZZZ������XXXX���룬����ɹ�������YYYY���룬��������ZZZZ���롣

XXX.cmd����Ҳ���������ļ���
��������bat�ļ���16λ����cmd����32λ��
cmd��Win32���ֻ����32λϵͳ�е������д�����ʹ�ã������ǻ���windows�����µļ�DOS 
bat��DOS������κλ����¶�����ʹ�á� 

��ϰ��
�����һ�л���call 1.cmd�����к���ͬ����˼��call������ʲô�ط������á�
call������������߱�ǩ���߽���
��ʾ��call XXX : ����XXX�ļ�����˼��һ�£����XXX�ļ��и�ʽ�����𣿣�
:note