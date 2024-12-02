#!/bin/bash

README="README.md"
SCRIPT="guessinggame.sh"

echo "# Guessing Game Project" > $README
echo "" >> $README
echo "## Date et heure de génération" >> $README
date >> $README
echo "" >> $README
echo "## Nombre de lignes dans $SCRIPT" >> $README
wc -l < $SCRIPT >> $README

echo "README.md a été généré avec succès."
