::�Զ�����VC-LTL��



::�����ɾ�̬��
devenv "%~dp0VC-LTL.sln" /Build "Static|x86"
devenv "%~dp0VC-LTL.sln" /Build "Static|x64"
devenv "%~dp0VC-LTL.sln" /Build "Static_WinXP|x86"
devenv "%~dp0VC-LTL.sln" /Build "Static_WinXP|x64"
devenv "%~dp0VC-LTL.sln" /Build "Static_WinXP_Spectre|x86"
devenv "%~dp0VC-LTL.sln" /Build "Static_WinXP_Spectre|x64"


::���ɶ�̬UCRT��
devenv "%~dp0VC-LTL.sln" /Build "Redist|x86" /project "ucrt\ucrt.vcxproj"
devenv "%~dp0VC-LTL.sln" /Build "Dynamic|x86" /project "ucrt\ucrt.vcxproj"

devenv "%~dp0VC-LTL.sln" /Build "Redist|x64" /project "ucrt\ucrt.vcxproj"
devenv "%~dp0VC-LTL.sln" /Build "Dynamic|x64" /project "ucrt\ucrt.vcxproj"



::���� CRT

call:BuildCRT x86 14.0.23918
call:BuildCRT x64 14.0.23918

call:BuildCRT x86 14.0.24210
call:BuildCRT x64 14.0.24210

call:BuildCRT x86 14.0.24225
call:BuildCRT x64 14.0.24225

call:BuildCRT x86 14.0.24231
call:BuildCRT x64 14.0.24231

call:BuildCRT x86 14.10.25017
call:BuildCRT x64 14.10.25017

call:BuildCRT x86 14.11.25503
call:BuildCRT x64 14.11.25503

call:BuildCRT x86 14.12.25827
call:BuildCRT x64 14.12.25827

call:BuildCRT x86 14.13.26128
call:BuildCRT x64 14.13.26128

call:BuildCRT x86 14.14.26428
call:BuildCRT x64 14.14.26428

goto:eof


::call:BuildCRT x86 14.0.24231
:BuildCRT

::����msvcrt.lib
devenv "%~dp0VC-LTL.sln" /Build "Dynamic|%1" /project "%2\Build\ltlbuild\ltlbuild.vcxproj"
::����vcruntime.lib
devenv "%~dp0VC-LTL.sln" /Build "Redist|%1" /project "%2\Build\vcruntime\vcruntime.vcxproj"
::����msvcprt.lib
devenv "%~dp0VC-LTL.sln" /Build "Redist|%1" /project "%2\Build\stl\stl.vcxproj"
devenv "%~dp0VC-LTL.sln" /Build "Dynamic|%1" /project "%2\Build\stl\stl.vcxproj"
::����concrt.lib
devenv "%~dp0VC-LTL.sln" /Build "Redist|%1" /project "%2\Build\ConcRT\ConcRT.vcxproj"

goto:eof
