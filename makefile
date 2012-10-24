all: pdf bibtex
	pdflatex tese
	pdflatex tese

pdf:
	pdflatex tese

bibtex:
	bibtex tese

clean:
	rm *.acn
	rm *.acr
	rm *.alg
	rm *.aux
	rm *.bbl
	rm *.blg
	rm *.dvi
	rm *.fdb_latexmk
	rm *.glg
	rm *.glo
	rm *.gls
	rm *.idx
	rm *.ilg
	rm *.ind
	rm *.ist
	rm *.loa
	rm *.lol
	rm *.lof
	rm *.log
	rm *.lot
	rm *.maf
	rm *.mtc
	rm *.mtc0
	rm *.nav
	rm *.nlo
	rm *.out
	rm *.pdf
	rm *.pdfsync
	rm *.ps
	rm *.snm
	rm *.synctex.gz
	rm *.toc
	rm *.vrb
	rm *.xdy
	rm *.tdo
