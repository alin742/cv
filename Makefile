# LaTeX Makefile v0.33 -- LaTeX only

PAPER=main.tex  # set the path to your TeX file here

all:  ## Compile paper
	latexmk --pdf --quiet $(PAPER)
	latexmk -c

clean:  ## Clean output files
	latexmk -C

watch:  ## Recompile on updates to the source file
	@while [ 1 ]; do; inotifywait $(PAPER); sleep 0.01; make all; done
	# for Bash users, replace the while loop with the following
	# @while true; do; inotifywait $(PAPER); sleep 0.01; make all; done
