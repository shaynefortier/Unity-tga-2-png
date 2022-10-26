#!/bin/bash

 for f in $(find -name '*.tga'); do
    echo "Convert ${f} to ${f%.tga}.png"
    ./magick "${f}" -flip "${f%.tga}.png"
    rename ".tga." ".png." "${f}.meta"
 done

 echo "Tous les images de textures sont convertis!"