PDFSTYLES=numeric.pdf \
       alphabetic.pdf \
       authoryear.pdf \
       authortitle.pdf \
       verbose.pdf

all: ${PDFSTYLES}

%.pdf: %.tex
	latexmk -pdf $^

.PHONY: clean clean_all

clean_all: clean
	rm ${PDFSTYLES}

clean:
	rm *.aux
	rm *.bbl
	rm *.bcf
	rm *.blg
	rm *.fdb_latexmk
	rm *.fls
	rm *.log
	rm *.run.xml
