cd /d %~dp0

if exist ".\SetupScripts\app.7z" del /f ".\SetupScripts\app.7z"

rem 生成app.7z开始
7z.exe a ".\SetupScripts\app.7z" ".\FilesToInstall\*.*"

@set DestPath=%cd%\FilesToInstall\
@echo off& setlocal EnableDelayedExpansion

for /f "delims=" %%a in ('dir /ad/b %DestPath%') do (
7z.exe a ".\SetupScripts\app.7z" ".\FilesToInstall\%%a"
@echo "compressing .\FilesToInstall\%%a"
)

rem 生成app.7z结束