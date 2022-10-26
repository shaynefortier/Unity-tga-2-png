#!/bin/bash

find . -type f -name '*.tga' -execdir ./magick "{}" -flip "{}.png" \; rename ".tga." ".tga.png." "{}.meta" \;

#  echo "Tous les images de textures sont convertis!"