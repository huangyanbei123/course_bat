@echo off
for /r D:\share %%i in (*) do echo %%i
pause>nul
rem ��δ���ö����D:\share�����е��ļ�,�������ļ������


goto note
FOR /R [[drive:]path] %variable IN (set) DO command [command-parameters]
����� [drive:]path Ϊ����Ŀ¼����ָ��ÿ��Ŀ¼�е�FOR ��䡣
����� /R ��û��ָ��Ŀ¼����ʹ�õ�ǰĿ¼���������Ϊһ������(.)�ַ�����ö�ٸ�Ŀ¼����
:note