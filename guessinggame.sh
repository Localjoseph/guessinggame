#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire actuel
function get_file_count {
    echo $(ls -1 | wc -l)
}

# Variable contenant le nombre de fichiers
file_count=$(get_file_count)

echo "Bienvenue dans le jeu de devinettes !"
echo "Combien de fichiers se trouvent dans le répertoire actuel ? Essayez de deviner."

# Boucle pour gérer les devinettes
while true; do
    read -p "Entrez votre réponse : " guess

    if [[ $guess -eq $file_count ]]; then
        echo "Félicitations ! Vous avez deviné correctement."
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Trop bas ! Essayez encore."
    else
        echo "Trop haut ! Essayez encore."
    fi
done
