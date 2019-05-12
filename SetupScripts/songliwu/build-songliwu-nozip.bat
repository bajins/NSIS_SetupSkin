@rem 这是不带压缩的打包脚本

cd /d %~dp0

@call ../../makensiscode.bat


@call ../../makeskinzip.bat songliwu

cd /d %~dp0

@rem 如果打包好的程序输出文件夹不存在则创建
if not exist "..\..\Output" md "..\..\Output"

"..\..\NSIS\makensis.exe" /DINSTALL_WITH_NO_NSIS7Z=1 ".\songliwu.nsi"

@rem 如果要调试错误，请使用下面的脚本，这样会打开编译界面（命令行界面中文会显示成?号）
@rem "..\..\NSIS\makensisw.exe" /DINSTALL_WITH_NO_NSIS7Z=1 ".\songliwu.nsi"


cd /d %~dp0

if exist ".\skin.zip" del /f ".\skin.zip"

if exist "..\app.nsh" del /f "..\app.nsh"

if exist "..\app.7z" del /f "..\app.7z"

@pause