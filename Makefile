main.pdf : main.tex main.bbl
	xelatex main
main.bbl : main.tex main.aux ref.bib
	bibtex main
main.aux : main.tex
	xelatex main
