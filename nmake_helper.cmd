@echo off
::
::  ���� vcvars32.bat/vcvars64.bat ����ִ�д˽ű���������ɺ��Զ��޸�include�Լ�lib��������������nmake�Լ���cl�û�����VC-LTL��
::
::  ����Խ����ļ����Ƶ������Ŀ�У�����VC-LTL��������Ը������Ҫ�������
::
::



:::::::::::::::::::::::::::::::::::::::::::::::::VC-LTL����:::::::::::::::::::::::::::::::::::::::::::::::::


::ȡ���·�ע�Ϳ��Կ���XP����ģʽ��Ĭ�ϲ���Vista����ģʽ��
::set SupportWinXP=true

::ȡ���·�ע�Ϳ��Կ���VC-LTL����ģʽ������ģʽ����ע��������ƣ�����CRT�淶����ά����VS2008���������Ҫ�߶ȼ���΢��UCRT����ô�벻Ҫ�򿪴�ѡ�����
::set DisableAdvancedSupport=true


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::





if "%VC_LTL_Root%" NEQ "" goto LoadConfig

::����VC-LTLĿ¼

::�ű��ļ���Ŀ¼����VC-LTL��
if exist "%~dp0_msvcrt.h" set VC_LTL_Root=%~dp0&& goto LoadConfig

::�ű��ļ���Ŀ¼����VC-LTL��
if exist "%~dp0..\_msvcrt.h" set VC_LTL_Root=%~dp0..&& goto LoadConfig

::��ȡע��� HKCU\Code\VC-LTL@Root
for /f "tokens=1,2*" %%i in ('reg query "HKCU\Code\VC-LTL" /v Root ') do set VC_LTL_Root=%%k

if "%VC_LTL_Root%" == "" goto:eof


:LoadConfig

call "%VC_LTL_Root%\config\config.cmd"
