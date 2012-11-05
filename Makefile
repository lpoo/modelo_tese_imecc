all: pdf bibtex index
	pdflatex -interaction=nonstopmode tese
	pdflatex -interaction=nonstopmode tese

pdf:
	pdflatex -interaction=nonstopmode tese

bibtex:
	bibtex tese

index:
	makeindex tese

clean:
	- rm *.acn
	- rm *.acr
	- rm *.alg
	- rm *.aux
	- rm *.bbl
	- rm *.blg
	- rm *.dvi
	- rm *.fdb_latexmk
	- rm *.glg
	- rm *.glo
	- rm *.gls
	- rm *.idx
	- rm *.ilg
	- rm *.ind
	- rm *.ist
	- rm *.loa
	- rm *.lol
	- rm *.lof
	- rm *.log
	- rm *.lot
	- rm *.maf
	- rm *.mtc
	- rm *.mtc0
	- rm *.nav
	- rm *.nlo
	- rm *.out
	# Is unsafety remove all the pdf files.
	# - rm *.pdf
	- rm *.pdfsync
	- rm *.ps
	- rm *.snm
	- rm *.synctex.gz
	- rm *.toc
	- rm *.vrb
	- rm *.xdy
	- rm *.tdo
