@echo off
::�жϱ������Ӹ�ֵa
for /f "tokens=3,4 delims== " %%i in ('ipconfig ^|findstr /r "��"') do echo %%i %%j >DNS.txt
for /f "tokens=1 delims==:" %%d in (DNS.txt) do set a=%%d
echo �����ʵ�����������������
set slection1=
set/p slection1=������IP��ַ��
netsh interface ip set address name="%a%" source=static addr=%slection1% mask=255.255.255.0
set slection2=
set/p slection2=���������ص�ַ��
netsh interface ip set address name="%a%" gateway=%slection2% gwmetric=0
set slection3=
set/p slection3=��������dns��ַ
netsh interface ip set dns name="%a%" source=static addr=%slection3% register=PRIMARY
set slection4=
set/p slection4=�����뱸��dns��ַ
netsh interface ip add dns name="%a%" addr=%slection4%
netsh interface ip set wins name="%a%" source=static addr=none
del DNS.txt
exit ����IP����������ɱ���ARP�İ󶨣�
@echo off
if exist ipconfig.txt del ipconfig.txt
ipconfig /all >ipconfig.txt
if exist phyaddr.txt del phyaddr.txt
find "Physical Address" ipconfig.txt >phyaddr.txt
for /f "skip=2 tokens=12" %%M in (phyaddr.txt) do set Mac=%%M
if exist IPAddr.txt del IPaddr.txt
find "IP Address" ipconfig.txt >IPAddr.txt
for /f "skip=2 tokens=15" %%I in (IPAddr.txt) do set IP=%%I
arp -s %IP% %Mac%
del ipaddr.txt
del ipconfig.txt
del phyaddr.txt
exit

goto note
ͬʱ�޸�IP��MAC��ַ��С���뼰�������裬���ڴ��ű�����������Ҫ��IP�ĳ��ϣ�
1������ IP�����ļ���
�޸����IP��ַ����Ϊĳһ�����ã���������1���޸ĺã�IP��MASK��DNS��GATE�ȣ���Ҫ��IP��صģ�����Ҫ�޸�MAC��ַ����
Ȼ�����룺
netsh -c interface dump> c:\net1.txt
����net1.txt���������ɵ�IP�����ļ��ˣ����Ը�Ϊ�������ļ��������磺ʵ���ң����ң�
�����������е��������õ������ļ����Ҽ���һ�����������������÷ֱ�Ϊnet1.txt��net2.txt
2���������SMACΪ�޸�MAC��ַ��С�����8K�����Ѿ��ϴ��ˡ�
3����C�̸�Ŀ¼�½���һ��Ŀ¼���Ѹղ����ص�smac.exe�����ɵ����е����������ļ�net1.txt,net2.txt��,��һ��Ҫ�����������������ļ�(bat)Ҳ����Ҫ�ŵ�����Ҽ���Ϊ���Ŀ¼�ǣ�C:\cmd
4������һ���������ļ�������Ϊ��ToNet1.bat������ʹ�ü��±��༭������ע�Ᵽ���ʱ��Ҫ�����ü������ŵ��ļ������ܱ���ΪToNet1.bat���������ToNet1.bat.txt��
�������´��룺
smac -modifymac 0 0050BA44D27A
netsh -f net1.txt
net1.txt������Ҫ���õ�ĳһ����������ã�0050BA44D27A���Ҫ�滻Ϊ��Ӧ��һ���������õ�MAC��ַ������0050BA44D27Aǰ���0������ʡ�ԣ������ʾ�������㲻�����������߶�������ɣ�������У���ע���Լ�����һ�¿�����һ�������ˣ������smac�����readme����list���ܣ�������ж�һ�£���
ͬ���ķ���������ToNet2.bat����Ȼ�޸����������ļ�Ϊnet2.txt��mac��ַ�������ˡ�
��������bat�ļ�Ҳ�ŵ�c:\cmdĿ¼�С�
5��Ȼ������Խ���������bat�ļ��Ŀ�ݷ�ʽ��˫��һ���Զ������ˣ�
������ע�⣬�޸�MAC��ַ������Ҫ��������һ�������ȽϺã����������ã�
:note