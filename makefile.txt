all: readme

readme:
	today="Generated on $(date)"
	touch README.md
	echo "# Can you guess?" > README.md
	echo >> README.md
	echo "Generated on" >> README.md
	date >> README.md
	echo >> README.md
	echo "No. of lines in guessinggame.sh" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md