@echo off
::
::  �벻Ҫֱ��ʹ�ô˽ű���Ӧ��ʹ��VC-LTL helper for nmake.cmd
::





if /i "%VC_LTL_Helper_Load%" == "true" goto:eof


if "%VC_LTL_Root%" == "" echo �벻Ҫֱ��ʹ�ô˽ű���Ӧ��ʹ��VC-LTL helper for nmake&&goto:eof

if "%INCLUDE%" == "" echo �Ҳ�����������INCLUDE������vcvars32.bat/vcvars64.batִ�к���ô˽ű�&&goto:eof

if "%LIB%" == "" echo �Ҳ�����������LIB������vcvars32.bat/vcvars64.batִ�к���ô˽ű�&&goto:eof

if "%VisualStudioVersion%" == "14.0" set __DefaultVCToolsVersion=14.0.23918
if "%VisualStudioVersion%" == "15.0" set __DefaultVCToolsVersion=14.10.25017

if "%__DefaultVCToolsVersion%" == "" echo VC-LTL��֧��VS 2015�Լ�2017&&goto:eof

if /i "%Platform%" == "" goto Start_VC_LTL

if /i "%Platform%" == "x86" goto Start_VC_LTL

if /i "%Platform%" == "x64" ( goto Start_VC_LTL ) else ( echo VC-LTL CMD�ű���֧����ϵ : %Platform% )

goto:eof


:Start_VC_LTL

set VC_LTL_Helper_Load=true

set PlatformShortName=%Platform%

if "%PlatformShortName%" == "" set PlatformShortName=x86

if "%VC_LTL_Root%" == "" call:FoundVC_LTL_Root

if "%VC-LTLUsedToolsVersion%" == "" call:FoundVCToolsVersion

if "%VC-LTLTargetUniversalCRTVersion%" == "" call:FoundUCRTVersion

echo #######################################################################
echo #                                                                     #
echo #     *         *      * *             *        * * * * *  *          #
echo #      *       *     *                 *            *      *          #
echo #       *     *     *       * * * * *  *            *      *          #
echo #        *   *       *                 *            *      *          #
echo #          *           * *             * * * *      *      * * * *    #
echo #                                                                     #
echo #######################################################################

echo VC-LTL Path : %VC_LTL_Root%
echo VC-LTL Tools Version : %VC-LTLUsedToolsVersion%
echo VC-LTL UCRT Version : %VC-LTLTargetUniversalCRTVersion%
echo Platform : %PlatformShortName%



if /i "%SupportWinXP%" == "true" (set OsPlatformName=WinXP) else (set OsPlatformName=Vista)

if /i "%DisableAdvancedSupport%" == "true" (set LTL_Mode=Light) else (set LTL_Mode=Advanced)

echo Using VC-LTL %OsPlatformName% %LTL_Mode% Mode


::�޸�Include
set INCLUDE=%VC_LTL_Root%\config\%OsPlatformName%;%VC_LTL_Root%\VC\%VC-LTLUsedToolsVersion%\include;%VC_LTL_Root%\VC\%VC-LTLUsedToolsVersion%\atlmfc\include;%VC_LTL_Root%\ucrt\%VC-LTLTargetUniversalCRTVersion%;%INCLUDE%

set LIB=%VC_LTL_Root%\%PlatformShortName%;%VC_LTL_Root%\%PlatformShortName%\%OsPlatformName%\%LTL_Mode%;%VC_LTL_Root%\VC\%VC-LTLUsedToolsVersion%\lib\%PlatformShortName%;%VC_LTL_Root%\VC\%VC-LTLUsedToolsVersion%\lib\%PlatformShortName%\%OsPlatformName%;%VC_LTL_Root%\ucrt\%VC-LTLTargetUniversalCRTVersion%\lib\%PlatformShortName%;%LIB%

goto:eof



::���� VC���߼��汾
:FoundVCToolsVersion

set VC-LTLUsedToolsVersion=%VCToolsVersion%
if "%VC-LTLUsedToolsVersion%" NEQ "" goto ReadVC2015VersionEnd

::������Ѿ���װVisual Studio 2015 Update3 v14.0.24234��Visual Studio 2017 15.7�е�2015ƽ̨���߼�������14.0.24231��ȫһ��
set VC-LTLUsedToolsVersion=14.0.24231
reg query HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{BDE574B5-6CFE-32B2-9854-C827567E9D6F} /v DisplayVersion > nul
if %ERRORLEVEL% == 0 goto ReadVC2015VersionEnd

reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{BDE574B5-6CFE-32B2-9854-C827567E9D6F} /v DisplayVersion > nul
if %ERRORLEVEL% == 0 goto ReadVC2015VersionEnd

::������Ѿ���װVisual Studio 2015 Update3 v14.0.24231��Visual Studio 2017 15.6�е�2015ƽ̨���߼���
set VC-LTLUsedToolsVersion=14.0.24231
reg query HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{B0791F3A-6A88-3650-AECF-8AFBE227EC53} /v DisplayVersion > nul
if %ERRORLEVEL% == 0 goto ReadVC2015VersionEnd

reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{B0791F3A-6A88-3650-AECF-8AFBE227EC53} /v DisplayVersion > nul
if %ERRORLEVEL% == 0 goto ReadVC2015VersionEnd

::������Ѿ���װVisual Studio 2015 Update3 v14.0.24225��Visual Studio 2017 15.5�е�2015ƽ̨���߼���
set VC-LTLUsedToolsVersion=14.0.24225
reg query HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{4B1849F2-3D49-325F-B997-4AD0BF5B8A09} /v DisplayVersion > nul
if %ERRORLEVEL% == 0 goto ReadVC2015VersionEnd

reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4B1849F2-3D49-325F-B997-4AD0BF5B8A09} /v DisplayVersion > nul
if %ERRORLEVEL% == 0 goto ReadVC2015VersionEnd

::������Ѿ���װVisual Studio 2015 Update3 v14.0.24210����ͳVisual Studio 2015��
set VC-LTLUsedToolsVersion=14.0.24210
reg query HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{729FD64C-2AE0-3E25-83A8-A93520DCDE7A} /v DisplayVersion > nul
if %ERRORLEVEL% == 0 goto ReadVC2015VersionEnd

reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{729FD64C-2AE0-3E25-83A8-A93520DCDE7A} /v DisplayVersion > nul
if %ERRORLEVEL% == 0 goto ReadVC2015VersionEnd

::����Ҳ�������ôָ��Ϊ��ǰ֧�ֵ���Ͱ汾 2015 Update2
set VC-LTLUsedToolsVersion=%__DefaultVCToolsVersion%
goto:eof

:ReadVC2015VersionEnd

if not exist "%VC_LTL_Root%\VC\%VC-LTLUsedToolsVersion%" set VC-LTLUsedToolsVersion=%__DefaultVCToolsVersion%


goto:eof


::����UCRT�汾
:FoundUCRTVersion

set VC-LTLTargetUniversalCRTVersion=%UCRTVersion%

if "%VC-LTLTargetUniversalCRTVersion%" == "" goto FoundUCRTVersionEnd

if exist "%VC_LTL_Root%\ucrt\%VC-LTLTargetUniversalCRTVersion%" goto:eof


:FoundUCRTVersionEnd

::�Ҳ���ָ��UCRT�汾��Ĭ��Ϊ10240
set VC-LTLTargetUniversalCRTVersion=10.0.10240.0


goto:eof
