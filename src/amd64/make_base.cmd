@call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"

set libfileroot=%~dp0..\..\x64

set libfile=%libfileroot%\msvcrt.lib

copy "%~dp0msvcrt.lib" "%libfile%" /y

echo ɾ��msvcrt.dll��������

::ɾ�����ڷ���
lib "%libfile%" /remove:d:\5359.obj.amd64fre\minkernel\crts\crtw32\misc\dlllib\objfre\amd64\gs_report.obj
lib "%libfile%" /remove:d:\5359.obj.amd64fre\minkernel\crts\crtw32\eh\dlllib\objfre\amd64\ehvecctr.obj
lib "%libfile%" /remove:d:\5359.obj.amd64fre\minkernel\crts\crtw32\eh\dlllib\objfre\amd64\ehvecdtr.obj
lib "%libfile%" /remove:d:\5359.obj.amd64fre\minkernel\crts\crtw32\eh\dlllib\objfre\amd64\ehvcccvb.obj
lib "%libfile%" /remove:d:\5359.obj.amd64fre\minkernel\crts\crtw32\eh\dlllib\objfre\amd64\ehvccctr.obj
lib "%libfile%" /remove:d:\5359.obj.amd64fre\minkernel\crts\crtw32\eh\dlllib\objfre\amd64\ehveccvb.obj
lib "%libfile%" /remove:d:\5359.obj.amd64fre\minkernel\crts\crtw32\misc\dlllib\objfre\amd64\invarg.obj
lib "%libfile%" /remove:d:\5359.obj.amd64fre\minkernel\crts\crtw32\startup\dlllib\objfre\amd64\ptd_from_dll.obj
lib "%libfile%" /remove:d:\5359.obj.amd64fre\minkernel\crts\crtw32\mbstring\safe\objfre\amd64\mbsnbset_s_l.obj

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%libfile%" x64 "%~dp0..\msvcrt_forward.def" msvcrt.dll msvcrt3.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" CreateWeak  /MACHINE:x64 /def:"%~dp0..\msvcrt_forward.def"  /out:"%libfileroot%\objs\msvcrt_forward.obj"

::���XP��֧�ֵĽӿ�
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%libfile%" x64 "%~dp0..\msvcrt_winxp.def" msvcrt.dll msvcrt2.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" CreateWeak  /MACHINE:x64 /def:"%~dp0..\msvcrt_winxp.def"  /out:"%libfileroot%\objs\msvcrt_2003.obj"

::�������ģʽ
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%libfile%" x64 "%~dp0..\msvcrt_light.def" msvcrt.dll msvcrt2.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" CreateWeak  /MACHINE:x64 /def:"%~dp0..\msvcrt_light.def"  /out:"%libfileroot%\objs\msvcrt_light.obj"

::�����ǿģʽ
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%libfile%" x64 "%~dp0..\msvcrt_advanced.def" msvcrt.dll msvcrt2.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" CreateWeak  /MACHINE:x64 /def:"%~dp0..\msvcrt_advanced.def"  /out:"%libfileroot%\objs\msvcrt_advanced.obj"

lib "%libfile%" /remove:msvcrt3.dll

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" rename "%libfile%.Mode.lib" x64 "%~dp0..\" msvcrt.dll msvcrt_vista.dll

set libfiletmp=%libfileroot%\msvcrt_tmp.lib

copy "%libfile%" "%libfiletmp%" /y

::ɾ�����ⲿ��ǵĵ������
lib "%libfile%" /remove:msvcrt2.dll
::ɾ������msvcrt.dll����
lib "%libfiletmp%" /remove:msvcrt.dll

::ɾ������obj�ļ�
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" RemoveAllObj "%libfiletmp%"

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%libfiletmp%" x64 all msvcrt2.dll msvcrt.dll



pushd "%libfileroot%"

md "%libfileroot%\Advanced"
md "%libfileroot%\Light"

::����msvcrt_light.lib for vista
set tagetlibfile=%libfileroot%\Light\msvcrt_Vista.lib
copy "%libfiletmp%" "%tagetlibfile%" /y
lib "%tagetlibfile%" objs\msvcrt_light.obj

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x64 "%~dp0..\msvcrt_light.def" msvcrt.dll msvcrt2.dll
lib "%tagetlibfile%" /remove:msvcrt2.dll

::����msvcrt_light_xp.lib
set tagetlibfile=%libfileroot%\Light\msvcrt_WinXP.lib
copy "%libfiletmp%" "%tagetlibfile%" /y
lib "%tagetlibfile%" objs\msvcrt_2003.obj
lib "%tagetlibfile%" objs\msvcrt_light.obj

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x64 "%~dp0..\msvcrt_winxp.def" msvcrt.dll msvcrt2.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x64 "%~dp0..\msvcrt_light.def" msvcrt.dll msvcrt2.dll
lib "%tagetlibfile%" /remove:msvcrt2.dll

::����msvcrt_advanced.lib for vista
set tagetlibfile=%libfileroot%\Advanced\msvcrt_Vista.lib
copy "%libfiletmp%" "%tagetlibfile%" /y
lib "%tagetlibfile%" objs\msvcrt_advanced.obj

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x64 "%~dp0..\msvcrt_advanced.def" msvcrt.dll msvcrt2.dll
lib "%tagetlibfile%" /remove:msvcrt2.dll

::����msvcrt_advanced_xp.lib
set tagetlibfile=%libfileroot%\Advanced\msvcrt_WinXP.lib
copy "%libfiletmp%" "%tagetlibfile%" /y
lib "%tagetlibfile%" objs\msvcrt_2003.obj
lib "%tagetlibfile%" objs\msvcrt_advanced.obj

"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x64 "%~dp0..\msvcrt_winxp.def" msvcrt.dll msvcrt2.dll
"D:\�û�����\Documents\Visual Studio 2017\Projects\ltlbuild\Debug\LibMaker.exe" renamelib "%tagetlibfile%" x64 "%~dp0..\msvcrt_advanced.def" msvcrt.dll msvcrt2.dll
lib "%tagetlibfile%" /remove:msvcrt2.dll


lib /def:"%~dp0msvcrt.def" /out:"%~dp0msvcrtdll.lib"

lib "%libfile%" "%~dp0msvcrtdll.lib"
lib "%libfile%" "%~dp0ntdlllite.lib"
::lib "%libfile%" "%~dp0ntdlllite.lib"

::���ͨ��ת����
lib "%libfile%" objs\msvcrt_forward.obj

del "%~dp0msvcrtdll.*" /q

popd

pause