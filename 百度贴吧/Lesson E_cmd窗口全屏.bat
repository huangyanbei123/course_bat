goto note
@echo off
CAPI
set CAPI=API Call user32 GetSystemMetrics ;0
set /a x=%CAPI_Ret%+21
set CAPI=API Call user32 GetSystemMetrics ;1
set /a y=%CAPI_Ret%+59
mode con cols=%x% lines=%y%
set CAPI=API Call kernel32 GetConsoleWindow
set hCMD=%CAPI_Ret%
set CAPI=API Call user32 SetWindowPos ;%hCMD% ;-1 ;0 ;0 ;0 ;0 ;3
set CAPI=API Call user32 MoveWindow ;%hCMD% ;-6 ;-25 ;%x% ;%y% ;1
pause>nul
rem ��CAPIע���ģ��ȫ��,���֧�ֵ�Win 7,�����ûģ����.
rem (��ע���SetWindowPos��MoveWindow����ʧ��,������ʱ������ԭ��...)
:note


@echo off
CAPI
CAPI Call user32 GetSystemMetrics #0
set /a x=%errorlevel%+21
CAPI Call user32 GetSystemMetrics #1
set /a y=%errorlevel%+59
mode con cols=%x% lines=%y%
CAPI Call kernel32 GetConsoleWindow
set hCMD=%errorlevel%
CAPI Call user32 SetWindowPos #%hCMD% #-1 #0 #0 #0 #0 #3
CAPI Call user32 MoveWindow #%hCMD% #-6 #-25 #%x% #%y% #1
pause>nul
rem ��ע���,��ɱ��С,Win8.1������Ч