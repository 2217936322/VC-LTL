::�Զ�����VC-LTL��


@call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"


::�����ɾ�̬��
call:Build Static "x86 x64 ARM ARM64"

call:Build Static_Spectre "x86 x64 ARM ARM64"

call:Build Static_WinXP "x86 x64"

call:Build Static_WinXP_Spectre "x86 x64"

::���ɶ�̬UCRT��
call:Build Redist "x86 x64 ARM ARM64" "ucrt\ucrt.vcxproj"
call:Build Dynamic "x86 x64 ARM ARM64" "ucrt\ucrt.vcxproj"



::���� CRT

call:BuildCRT 14.0.23918 "x86 x64 ARM"

call:BuildCRT 14.0.24210 "x86 x64 ARM"

call:BuildCRT 14.0.24225 "x86 x64 ARM"

call:BuildCRT 14.0.24231 "x86 x64 ARM"

call:BuildCRT 14.10.25017 "x86 x64 ARM ARM64"

call:BuildCRT 14.11.25503 "x86 x64 ARM ARM64"

call:BuildCRT 14.12.25827 "x86 x64 ARM ARM64"

call:BuildCRT 14.13.26128 "x86 x64 ARM ARM64"

call:BuildCRT 14.14.26428 "x86 x64 ARM ARM64"

call:BuildCRT 14.15.26726 "x86 x64 ARM ARM64"

::���ɶ�̬Spectre��
call:Build Dynamic_Spectre "x86 x64 ARM ARM64"

pause

goto:eof


::BuildCRT 14.0.24231 "x86 x64 ARM ARM64"
:BuildCRT

::����msvcrt.lib
call:Build Dynamic %2 "%1\Build\ltlbuild\ltlbuild.vcxproj"

::����vcruntime.lib
call:Build Redist  %2 "%1\Build\vcruntime\vcruntime.vcxproj"

::����msvcprt.lib
call:Build Redist  %2 "%1\Build\stl\stl.vcxproj"
call:Build Dynamic %2 "%1\Build\stl\stl.vcxproj"

::����concrt.lib
call:Build Redist  %2 "%1\Build\ConcRT\ConcRT.vcxproj"

goto:eof


::Build Dynamic "x86 x64 ARM ARM64" ["ucrt\ucrt.vcxproj"]
:Build


if "%3"=="" ( set "__project=" ) else ( set "__project=/project %3" )

for %%i in (%~2)do devenv "%~dp0VC-LTL.sln" /Build "%1|%%i" %__project%



goto:eof
