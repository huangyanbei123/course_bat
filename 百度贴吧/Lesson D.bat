@echo off
shutdown -s -t 120
echo ����:���ļ��������2���ڹػ�!
set /p anwser1=����ػ�����ش�:
echo yes��no
If %anwser1%==yes goto Bad
If %anwser1%==no
shutdown -s -t 0
exit

:Bad
cls
echo =========================================================================
echo = =
echo = ���� �� =
echo = =
echo = =
echo = =
echo = =
echo = =
echo = =
echo = =
echo = =
echo = =
echo = =
echo = =
echo = =
echo = =
echo = =
echo =========================================================================
set /p anwser2=ȷ���ػ���
echo (yes or no)
If %anwser2%==yes
shutdown -a
If %anwser2%==no
shutdown -s -t 0