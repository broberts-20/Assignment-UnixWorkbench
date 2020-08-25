todaydate := $(shell date +%c)
num := $(shell wc -l < guessinggame.sh)
README.md:
	echo "# Assignment-UnixWorkbench, Guessing Games Program" >> README.md
	echo "### File run at $(todaydate)" >> README.md
	echo "" >> README.md
	echo "### There are $(num) lines in guessinggame.sh" >> README.md
