#!/bin/bash

find . -type f -name '*.tga' -exec ./tools/magick "{}" -flip "{}.png" \; -exec echo {} \;
find . -type f -name '*.tga' -exec rename ".tga." ".tga.png." "{}.meta" \;

#  echo "Tous les images de textures sont convertis!"