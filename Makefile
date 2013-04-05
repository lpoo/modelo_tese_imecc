MASTER_FILE = tese.tex
TEX_FILES = abreviacoes.tex agradecimentos.tex anexos.tex ape1.tex cap1.tex \
cap2.tex cap3.tex capa.tex configuracao.tex dedicatoria.tex epigrafe.tex \
ficha-catalografica.tex folha-de-aprovacao.tex folha-de-rosto.tex glossario.tex \
introducao.tex pacotes.tex resumo.tex simbolos.tex
DEV_FILES = AUTHORS ChangeLog CONTRIBUTING.rst COPYING Makefile README.rst THANKS
DOC_FILES = 

pdf:
	latexmk -pdf ${MASTER_FILE}

aspell: ${MASTER_FILE} ${TEX_FILES}
	aspell -l pt-br -c ${MASTER_FILE}
	for f in ${TEX_FILES}; do \
	    aspell -l pt-br -c $$f; \
	done

hunspell:
	hunspell -d pt_BR -c ${MASTER_FILE}
	for f in ${TEX_FILES}; do \
	    hunspell -d pt_BR $$f; \
	done

dev-all: dev-aspell aspell pdf

dev-aspell: ${DEV_FILES} ${DOC_FILES}
	for f in ${DEV_FILES}; do \
	    aspell -l pt-br -c $$f; \
	done
	for f in ${DOC_FILES}; do \
	    aspell -l pt-br -c $$f; \
	done

dev-hunspell: ${DEV_FILES} ${DOC_FILES}
	for f in ${DEV_FILES}; do \
	    hunspell -d pt_BR $$f; \
	done
	for f in ${DOC_FILES}; do \
	    hunspell -d pt_BR $$f; \
	done

clean:
	- rm *.acn
	- rm *.acr
	- rm *.alg
	- rm *.aux
	- rm *.bcf
	- rm *.bbl
	- rm *.blg
	- rm *.dvi
	- rm *.fdb_latexmk
	- rm *.fls
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
	- rm *.run.xml
	- rm *.snm
	- rm *.synctex.gz
	- rm *.toc
	- rm *.vrb
	- rm *.xdy
	- rm *.tdo
