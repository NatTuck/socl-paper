
LATEX := lualatex --interaction=nonstopmode
PAPER := tuck-socl.pdf

$(PAPER): $(wildcard *.tex)
	$(LATEX) main.tex
	bibtex main
	$(LATEX) main.tex
	$(LATEX) main.tex
	mv main.pdf $(PAPER)

show:
	make clean
	make $(PAPER)
	evince $(PAPER) &

spellcheck:
	bash spellcheck.sh

clean:
	rm -f *.pdf *.toc *.log *.aux *.bbl *.blg *.run.xml *.bak *-blx.bib *~ *.bcf *.out

.PHONY: clean show
