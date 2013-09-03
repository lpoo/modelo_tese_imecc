#!/bin/bash
#
# Este é um script de exemplo de como compilar os arquivos pdfs presentes
# na documentação.
for i in $(git branch -r | grep -v HEAD)
do
	git checkout $i
	latexmk -pdf -pdflatex="pdflatex -interaction nonstopmode" tese
	mv -f tese.pdf doc/samples/${i/origin\//}.pdf
	latexmk -pdf -pdflatex="pdflatex -interaction nonstopmode" poster
	mv -f poster.pdf doc/samples/poster-${i/origin\//}.pdf
done
