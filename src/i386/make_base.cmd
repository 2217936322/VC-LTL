@call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"
@call "%~dp0..\..\nmake_helper.cmd"

set libfileroot=%~dp0..\..\x86

set libfile=%libfileroot%\msvcrt.lib

copy "%~dp0msvcrt.lib" "%libfile%" /y

echo ɾ��msvcrt.dll��������

::ɾ�����ڷ���
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\misc\dlllib\objfre\i386\gs_report.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\eh\dlllib\objfre\i386\ehvecctr.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\eh\dlllib\objfre\i386\ehvecdtr.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\eh\dlllib\objfre\i386\ehvcccvb.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\eh\dlllib\objfre\i386\ehvccctr.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\eh\dlllib\objfre\i386\ehveccvb.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\misc\dlllib\objfre\i386\invarg.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\libw32\lib\dlllib\..\..\..\fpw32\tran\dlllib\objfre\i386\cpu_disp.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\startup\dlllib\objfre\i386\ptd_from_dll.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\mbstring\safe\objfre\i386\mbsnbset_s_l.obj
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\misc\dlllib\objfre\i386\loadcfg.obj

::��gs_support.obj�в���lib�����
lib "%libfile%" /remove:e:\5359.obj.x86fre\minkernel\crts\crtw32\misc\dlllib\objfre\i386\gs_support.obj

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%libfile%" x86 "%~dp0..\msvcrt_forward.def" msvcrt.dll msvcrt3.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" CreateWeak  /MACHINE:x86 /def:"%~dp0..\msvcrt_forward.def"  /out:"%libfileroot%\objs\msvcrt_forward.obj"

::���XP��֧�ֵĽӿ�
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%libfile%" x86 "%~dp0..\msvcrt_winxp.def" msvcrt.dll msvcrt2.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" CreateWeak  /MACHINE:x86 /def:"%~dp0..\msvcrt_winxp.def"  /out:"%libfileroot%\objs\msvcrt_winxp.obj"

::�������ģʽ
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%libfile%" x86 "%~dp0..\msvcrt_light.def" msvcrt.dll msvcrt2.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" CreateWeak  /MACHINE:x86 /def:"%~dp0..\msvcrt_light.def"  /out:"%libfileroot%\objs\msvcrt_light.obj"

::�����ǿģʽ
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%libfile%" x86 "%~dp0..\msvcrt_advanced.def" msvcrt.dll msvcrt2.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" CreateWeak  /MACHINE:x86 /def:"%~dp0..\msvcrt_advanced.def"  /out:"%libfileroot%\objs\msvcrt_advanced.obj"

lib "%libfile%" /remove:msvcrt3.dll


set libfiletmp=%libfileroot%\msvcrt_tmp.lib

copy "%libfile%" "%libfiletmp%" /y

::ɾ�����ⲿ��ǵĵ������
lib "%libfile%" /remove:msvcrt2.dll
::ɾ������msvcrt.dll����
lib "%libfiletmp%" /remove:msvcrt.dll

::ɾ������obj�ļ�
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" RemoveAllObj "%libfiletmp%"


"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%libfiletmp%" x86 all msvcrt2.dll msvcrt.dll



pushd "%libfileroot%"

md "%libfileroot%\Vista"
md "%libfileroot%\Vista\Advanced"
md "%libfileroot%\Vista\Light"

md "%libfileroot%\WinXP"
md "%libfileroot%\WinXP\Advanced"
md "%libfileroot%\WinXP\Light\"

::����msvcrt_light.lib for vista
set tagetlibfile=%libfileroot%\Vista\Light\msvcrt_Platform.lib
copy "%libfiletmp%" "%tagetlibfile%" /y
lib "%tagetlibfile%" objs\msvcrt_light.obj

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x86 "%~dp0..\msvcrt_light.def" msvcrt.dll msvcrt2.dll
lib "%tagetlibfile%" /remove:msvcrt2.dll

::����msvcrt_light_xp.lib
set tagetlibfile=%libfileroot%\WinXP\Light\msvcrt_Platform.lib
copy "%libfiletmp%" "%tagetlibfile%" /y
lib "%tagetlibfile%" objs\msvcrt_winxp.obj
lib "%tagetlibfile%" objs\msvcrt_light.obj

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x86 "%~dp0..\msvcrt_winxp.def" msvcrt.dll msvcrt2.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x86 "%~dp0..\msvcrt_light.def" msvcrt.dll msvcrt2.dll
lib "%tagetlibfile%" /remove:msvcrt2.dll

::����msvcrt_advanced.lib for vista
set tagetlibfile=%libfileroot%\Vista\Advanced\msvcrt_Platform.lib
copy "%libfiletmp%" "%tagetlibfile%" /y
lib "%tagetlibfile%" objs\msvcrt_advanced.obj

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x86 "%~dp0..\msvcrt_advanced.def" msvcrt.dll msvcrt2.dll
lib "%tagetlibfile%" /remove:msvcrt2.dll

::����msvcrt_advanced_xp.lib
set tagetlibfile=%libfileroot%\WinXP\Advanced\msvcrt_Platform.lib
copy "%libfiletmp%" "%tagetlibfile%" /y
lib "%tagetlibfile%" objs\msvcrt_winxp.obj
lib "%tagetlibfile%" objs\msvcrt_advanced.obj

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x86 "%~dp0..\msvcrt_winxp.def" msvcrt.dll msvcrt2.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x86 "%~dp0..\msvcrt_advanced.def" msvcrt.dll msvcrt2.dll
lib "%tagetlibfile%" /remove:msvcrt2.dll

::����LibraryLoadHelper
set INCLUDE=%INCLUDE%;%~dp0..\ucrt\inc;%~dp0..\14.13.26128\vcruntime
cl /O1 /MD /Fo"objs\\" /c /D "NDEBUG" /D "_NO__LTL_Initialization" /D "__NO_LTL_LIB" /D "_Allow_LTL_Mode" "%~dp0..\LibraryLoadHelper.c"
lib "%libfile%" objs\LibraryLoadHelper.obj
::lib "%libfile%" objs\LibraryLoadHelper.obj


::���ͨ��ת����
lib "%libfile%" objs\msvcrt_forward.obj

popd


lib /def:"%~dp0msvcrt.def" /out:"%~dp0msvcrtdll.lib"

lib "%libfile%" "%~dp0msvcrtdll.lib"
lib "%libfile%" "%~dp0ntdlllite.lib"
::lib "%libfile%" "%~dp0ntdlllite.lib"

del "%~dp0msvcrtdll.*" /q

pause