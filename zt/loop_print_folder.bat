@echo off 

set runlog="%~dp0\music.txt"
set work_path=E:\Music

rem ��ǰ�̷�
E:
cd %work_path% 

rem ɾ����־
del %runlog%

for /R %%s in (.) do ( 
	echo %%s >> %runlog%
	
	for /f "delims=\" %%a in ('dir /b /a-d /oN "%%s\*.*"') do (
		echo %%a >> %runlog%
	)
	
	echo. >> %runlog%
) 
rem pause
exit

rem ����ע��
goto note
for /R %%s in (*.aac) do ( 
echo %%s >> %runlog%
) 

for /R %%s in (*.flac) do ( 
echo %%s >> %runlog%
) 

for /R %%s in (*.mp3) do ( 
echo %%s >> %runlog%
) 

for /R %%s in (*.dmv) do ( 
echo %%s >> %runlog%
) 
:note

