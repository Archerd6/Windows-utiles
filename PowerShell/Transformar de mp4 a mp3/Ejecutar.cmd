@echo off

REM Ejecutable que abre el terminal de windows en la ruta en la que esta el archivo

@REM powershell -command "pwd"


setlocal enabledelayedexpansion
rem Define la ruta base donde se encuentran las diferentes versiones de FFmpeg
set "base_path=%LOCALAPPDATA%\Microsoft\WinGet\Packages"
rem Busca la carpeta que contiene "ffmpeg" en el nombre
for /d %%i in ("%base_path%\*ffmpeg*") do (
    set "ffmpeg_path1=%%i"
    set "ffmpeg_version=%%~nxi"
)
rem Busca la carpeta que contiene "ffmpeg" en el nombre (hay dos carpetas con nombre de ffmpeg)
for /d %%i in ("%ffmpeg_path1%\*ffmpeg*") do (
    set "ffmpeg_path=%%i\bin"
    set "ffmpeg_version=%%~nxi"
)

rem Verifica si se encontró alguna versión de FFmpeg
if defined ffmpeg_path (
    rem Agrega la versión al PATH
    set "PATH=!PATH!;%ffmpeg_path%"
    echo Se agregó al PATH la versión: %ffmpeg_version%
) else (
    echo No se encontró ninguna versión de FFmpeg.
)

rem Muestra el PATH actualizado
echo PATH actualizado: %PATH%



powershell -command "Get-ChildItem -Path .\input\*.mp4 | ForEach-Object { ffmpeg -i $_.FullName -vn -acodec libmp3lame (Join-Path .\output ($_.BaseName + '.mp3')) }"

@REM ffmpeg -i 1.opus 1.mp3 # De audio.opus a audio.mp3

cmd /k