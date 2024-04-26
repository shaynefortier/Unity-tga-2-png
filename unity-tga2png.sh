#!/bin/bash

# Convert large images files to PNG files
find . -type f -name '*.tga' -exec ./tools/magick "{}" -flip "{}.png" \; -exec rename ".tga." "" \; -exec echo {} \;
find . -type f -name '*.tif' -exec ./tools/magick "{}" -flip "{}.png" \; -exec rename ".tga." "" \; -exec echo {} \;

# Rename the the meta files
find . -type f -name '*.tga' -exec rename ".tga." ".png." "{}.meta" \;
find . -type f -name '*.tif' -exec rename ".tif." ".png." "{}.meta" \;

# Ask the user if they want to remove the original files
echo "All texture images have been converted! Do you want to remove the original .tga and .tif files now? (yes/no)"
read removeOriginal

# Remove the original .tga files if the user's input was "yes"
if [ "$removeOriginal" = "yes" ]; then
    find . -type f -name '*.tga' -exec rm {} \;
fi

# Remove the original .tif files if the user's input was "yes"
if [ "$removeOriginal" = "yes" ]; then
    find . -type f -name '*.tif' -exec rm {} \;
fi

echo "Operation completed!"
