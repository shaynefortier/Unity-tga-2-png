#!/bin/bash

 for f in $(find -name '*.tga'); do
    filename=$(basename "${f}" .tga)
    ./magick "${f}" -flip "${filename}.png"
    rename ".tga." ".png." "${f}.meta"
 done