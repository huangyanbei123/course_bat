@echo off
echo msgbox("bat��������......")>1.vbs
rem ���......��1.vbs
start /wait 1.vbs
rem �Ի�����ʧǰ���������
del 1.vbs
reg add HKEY_CLASSES_ROOT\batfile\DefaultIcon /ve /d "%SystemRoot%\System32\shell32.dll,-3" /f 1>nul 2>nul
rem ������256ɫ����153 ������278
taskkill /f /im explorer.exe
explorer.exe
rem �ر���Դ��������������Դ������������ˢ����Դ�������Ա������鿴ע����޸ĺ��Ч����
rem ��ǰ����дΪһ��Ҫд�ɡ�taskkill /f /im explorer.exe && explorer.exe�����ֻ��һ��&�����ɹر����Ρ�


goto note
���ʣ�
reg add�����...��ע���
batfile��bat�ļ�����ôcmd�ļ��أ���
%SystemRoot%��ϵͳ���̡���ϵͳ�����ļ��е�·��
shell32.dll�����ϵͳͼ���dll
1>nul���ɹ���Ϣ����ʾ��2>nul����ʧ����Ϣ����ʾ�����ھ�ĩ��
taskkill����������
explorer������Դ��������������ϵͳ�����ǲ���Ҫstart�ģ�����taskmgr.exe��
���ͣ�
start /wait XXX������XXX���ȴ������

taskkill [/f] [/t] [[/im] XXX] [[/pid] YYYY]��������ΪXXX�Ľ��̻����YYYY�Ľ���
=======================/f�ǲ���ʾǿ�ƽ���
=======================/t�ǽ����������ɴ˽��̴򿪵Ľ���
=======================[/im]��ӽ�������Ҳ�ɲ���/im����/pidָ�����̵Ĵ��š�
�ַ���
echo msgbox("balabala")>XXX.vbs�����vbs�Ĵ��뵽XXX.vbs���������������vbs���ֶΡ�
==============================msgbox("balabala")���ǶԻ�����ʾbalabala
��ϰ��
���ܰ���bat��ͼ��Ļ�ȥ�𣿻��߰�cmd��ͼ��Ҳ�������ԣ�
���
��Щ���룬��һ��Ҫ�������ã�����ע���Ҳ�ܽ���һЩ�򵥵��޸ġ�ѧϰ�����������ĸı��˵Ĵ���鿴�仯�����ֵĺ�ϰ�ߡ��Ҿ�������ϰ�ߡ�
:note