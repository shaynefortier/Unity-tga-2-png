@REM Convert using ImageMagick, rename .meta, message to tell which files are done to be able to track
FOR /R %~dp0 %%b IN ("*.tga") DO ECHO "%%b"