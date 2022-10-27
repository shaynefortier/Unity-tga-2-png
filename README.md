# Unity TGA to PNG textures converter

## Français

C'est un script de shell qui fait usage du logiciel _ImageMagick_ pour convertir et manipuler les images par les lignes de commandes. Ce petit programme permet de convertir tous les fichiers de texture TGA du projet Unity à PNG d'un coup pour réduire le poid sur le disque. Suivez les petits étapes afin de pouvoir accomplir la tâche avec facilité.

## Sur le système Linux

1. Déplacez ou copiez le script `unity-tga2png.sh` et le dossier `tools` vers le dossier _Assets_ de votre projet Unity.
2. Exécutez le script par votre méthode préférée:
   - Si vous avez Nemo ou votre système est Linux Mint, vous avez juste à cliquer puis choisir exécuter
   - Sinon, utilisez le terminal. Faites un `cd` au dossier où ce trouve le script, puis tapez `./unity-tga2png.sh`.
3. Attendez que le script fait le tour des fichiers TGA. Dépendement la quantité d'images dans le dossier _Assets_, ça peut prendre du temps.

Pour le moment, le script ne supprime pas les fichiers TGA afin de vous laisser le choix s'il vous voulez les garder ou nom. Si vous souhaitez les supprimer, vous pouvez utiliser la recherche dans votre explorateur de fichiers et chercher `.tga`, le résultat montrera tous les fichiers TGA dans les sous-dossiers permettant de les supprimers d'un coups.

## Sur Windows

1. Déplacez ou copiez le fichier `unity-tga2png.bat` et le dossier `tools` vers le dossier _Assets_ de votre projet Unity.
2. Dans le dossier _Assets_ double-cliquez sur `unity-tga2png.bat` pour exécuter le le script.
3. Attendez et relaxez pendant que le script converti les textures et renomme les fichiers .meta. Dépendement de la quantité de texture, ça peut prendre du temps.

**Avertissement**: Le script supprime les textures .tga automatiquement. Assurez-vous de garder une copie si vous souhaitez conserver les originaux.
