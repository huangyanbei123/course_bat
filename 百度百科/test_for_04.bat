@echo off
echo 1,1 2,1 3,1 4,1>>test.txt����
echo A1,2 2,2 3,2 4,2>>test.txt
echo 1,3 2,3 3,3 4,3>>test.txt
echo A1,4 2,4 3,4 4,4>>test.txt
pause>nul
rem ���ϴ����ڵ�ǰ�ļ�����������һ��test.txt,�򿪿���?
rem FOR /F ["options"] %variable IN (file-set) DO command [command-parameters]
For /F %%i In (test.txt) Do Echo %%i
pause>nul
For /F "tokens=2" %%i In (test.txt) Do Echo %%i
pause>nul
For /F "tokens=3" %%i In (test.txt) Do Echo %%i
pause>nul
For /F "tokens=4" %%i In (test.txt) Do Echo %%i
pause>nul

goto note1
����ִ�������bat,�ٷ���һ�½���ʹ���,��������һ���˽���tokens���ô�
for /f Ĭ���Կո�Ϊ�ָ���,��ÿһ�зָ�Ϊ����Ԫ��,
��tokens�ͱ�ʾȡ�ڼ���Ԫ��.����������Ҫȡ�Ĳ���һ��Ԫ����?��Ҫȫ����ʾ������ô��?
tokens=* ��ʾȡ����Ԫ��,��%%i���
tokens=1,2,3,4��tokens=1-4 Ȼ����%%i��%%i,%%j,%%k,%%l ���
��ʵ���ǻ��������ķ���,�������delims����
:note1

@echo off
rem test.txt�Ѿ�����,�Ͳ�������
for /f "delims=*" %%i in (test.txt) do echo %%i
pause>nul

goto note2
delims�Ǹ�ɶ�����?��ʵ����Ƿָ�����趨,Ĭ���Կո�Ϊ�ָ���,����Խ��ָ������ó�������,����ı��Ͳ��ᱻ�ָ���,
delimsͬ��֧�ֶ���ָ���,��ʽdelims=��һ���ָ���,�ڶ����ָ���,�������ָ���
����,����һ��skip��eol:
skip��ʾ����ǰ����,����skip=10��ʾ��������ı���ǰʮ��,������ı�ֻ��4��,��������skip=10�Ļ���ʲô�����������
eol��ʾ������ĳ�����ſ�ͷ����,����eol=A,��ĳһ�еĿ�ͷ��A��ʱ��,��һ�оͲ��ᱻ����,����֧������һ������
:note2