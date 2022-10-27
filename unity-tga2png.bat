@REM Convert using ImageMagick, rename .meta, message to tell which files are done to be able to track
FOR /R . %%b IN ("*.tga") DO ECHO "%%b"