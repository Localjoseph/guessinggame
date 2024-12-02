# Variables
README = README.md
SCRIPT = guessinggame.sh

# Cible principale : génère le README.md
all: $(README)

# Génération du README.md
$(README): $(SCRIPT)
	@echo "# Guessing Game Project" > $(README)
	@echo "" >> $(README)
	@echo "## Date et heure de génération" >> $(README)
	@date >> $(README)
	@echo "" >> $(README)
	@echo "## Nombre de lignes dans $(SCRIPT)" >> $(README)
	@wc -l < $(SCRIPT) >> $(README)

# Nettoyage des fichiers générés
clean:
	rm -f $(README)
