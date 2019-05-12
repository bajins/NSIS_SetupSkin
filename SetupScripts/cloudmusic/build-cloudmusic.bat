@rem 这是带压缩的打包脚本


cd /d %~dp0

@call ../../makeapp.bat

cd /d %~dp0

@call ../../makeskinzip.bat cloudmusic

cd /d %~dp0

"..\..\NSIS\makensis.exe" ".\cloudmusic.nsi"

@rem 如果要调试错误，请使用下面的脚本，这样会打开编译界面（命令行界面中文会显示成?号）
@rem ".\NSIS\makensisw.exe" ".\cloudmusic.nsi"

cd /d %~dp0

if exist ".\skin.zip" del /f ".\skin.zip"

if exist "..\app.nsh" del /f "..\app.nsh"

if exist "..\app.7z" del /f "..\app.7z"

@pause