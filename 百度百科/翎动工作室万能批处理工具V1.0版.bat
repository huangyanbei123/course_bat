@echo off
:�˵�
cls
echo ============================================
echo                           ������Ż�
echo 1.���������ļ�
echo 2.���������Ҽ��˵� ���Կ���ѡ��˵���
echo 3.ȥ������ͼ��С��ͷ
echo.
set /p ѡ��=��������
if %ѡ��%==1 goto �������
if %ѡ��%==2 goto ����Ҽ�
if %ѡ��%==3 goto ��ͷ

:�������
echo ���IE��ʱ�ļ���ϵͳ�������ʷ��¼...
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "TEMP%\*.*"
del /f /s /q "%TMP%\*.*"
del /f /s /q %userprofile%\recent\*.*
echo �������ϵͳ��ʱ�ļ� *.tmp *._tmp *.log *.chk *.old �����Ե�...
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
echo ��������䣬�����ļ���Ԥ����ű�...
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
echo ���ϵͳ������ɣ�
echo. & pause
goto �˵�

:����Ҽ�
regsvr32 /u /s igfxpph.dll
reg delete HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers /f
reg add HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\new /ve /d {D969A300-E7FF-11d0-A93B-00A0C90F2719}
echo ���
pause>nul
goto �˵�

:��ͷ
reg delete HKcr\Lnkfile /v IsShortcut /f
echo ���
pause>nul
goto �˵�