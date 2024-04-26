@echo off
setlocal enabledelayedexpansion

REM Convert large images files to PNG files
for /R %%f in (*.tga) do (
    tools\convert.exe "%%f" -flip "%%~dpnf.png"
    ren "%%~dpnf.meta" "%%~nf.png.meta"
    echo Converting %%f
)

for /R %%f in (*.tif) do (
    tools\convert.exe "%%f" -flip "%%~dpnf.png"
    ren "%%~dpnf.meta" "%%~nf.png.meta"
    echo Converting %%f
)

REM Ask the user if they want to remove the original files
echo All texture images have been converted! Do you want to remove the original .tga and .tif files now? (yes/no)
set /p removeOriginal=

REM Remove the original .tga files if the user's input was "yes"
if /I "%removeOriginal%"=="yes" (
    for /R %%f in (*.tga) do (
        del "%%f"
    )
)

REM Remove the original .tif files if the user's input was "yes"
if /I "%removeOriginal%"=="yes" (
    for /R %%f in (*.tif) do (
        del "%%f"
    )
)

echo Operation completed!