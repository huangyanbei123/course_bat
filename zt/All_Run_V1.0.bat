@echo off
:menu
cls
title ѡ����
color 0A
mode con cols=82 lines=25
echo --------------------------------------------------------
echo 1.Windows����ָ��
echo 2.ϵͳ�ļ����
echo 3.�ļ�ǩ����֤
echo 4.�鿴�豸����
echo 5.���������������
echo 6.ping
echo 7.���綪������
echo 8.����IP��ַ
echo 9.repair-bde
echo 10.Tasklist
echo 11.Taskkill
echo 12.�豸������
echo 13.���DirectX��Ϣ
echo 14.�����
echo 15.����������
echo 16.�򿪼��±�
echo 17.��ͼ��
echo 18.����Դ������
echo 19.Զ����������
echo 20.ע���
echo 21.���������
echo 22.���Windows�汾
echo --------------------------------------------------------
set /p input=��ѡ��
if "%input%"=="1" cls & winsat formal && pause && exit
if "%input%"=="2" cls & sfc /scannow && pause && exit
if "%input%"=="3" cls & sigverif && pause && exit 
if "%input%"=="4" cls & driverquery -v && pause && exit
if "%input%"=="5" cls & nslookup www.baidu.com && pause && exit
if "%input%"=="6" cls & ping 192.168.1.1 && pause && exit
if "%input%"=="7" cls & pathping 192.168.1.1 && pause && exit
if "%input%"=="8" cls & ipconfig /all && pause && exit 
if "%input%"=="9" cls & repair-bde c: d: -rk e:recovery.bek && pause && exit
if "%input%"=="10" cls & tasklist -svc && pause && exit
if "%input%"=="11" cls & taskkill -im iexplore.exe && pause && exit
if "%input%"=="12" cls & devmgmt.msc && pause && exit
if "%input%"=="13" cls & dxdiag && pause && exit
if "%input%"=="14" cls & gpedit.msc && pause && exit
if "%input%"=="15" cls & calc && pause && exit
if "%input%"=="16" cls & notepad && pause && exit
if "%input%"=="17" cls & mspaint && pause && exit
if "%input%"=="18" cls & explorer && pause && exit
if "%input%"=="19" cls & mstsc && pause && exit
if "%input%"=="20" cls & regedit.exe && pause && exit
if "%input%"=="21" cls & taskmgr.exe && pause || exit
if "%input%"=="22" cls & winver && pause && exit
:err
cls
echo �Բ���������������밴������������룡
pause>nul
goto menu