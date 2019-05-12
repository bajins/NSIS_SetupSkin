cd /d %~dp0

if exist ".\SetupScripts\%1\skin.zip" del /f ".\SetupScripts\%1\skin.zip"

rem 生成skin.zip开始
7z.exe a ".\SetupScripts\%1\skin.zip" ".\SetupScripts\%1\skin\*.*"

@set DestPath=%cd%\SetupScripts\%1\skin\
@echo off& setlocal EnableDelayedExpansion

for /f "delims=" %%a in ('dir /ad/b %DestPath%') do (
7z.exe a ".\SetupScripts\%1\skin.zip" ".\SetupScripts\%1\skin\%%a"
@echo "compressing .\SetupScripts\%1\skin\%%a"
)

rem 生成skin.zip结束