MASTER = tese
POSTER = poster
LATEXMK = latexmk -pdf -pdflatex='pdflatex -interaction nonstopmode'

all: ${MASTER} ${POSTER} doc

${MASTER}:
	${LATEXMK} -pdf ${MASTER}

${POSTER}:
	${LATEXMK} -pdf ${POSTER}

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

dev-all: dev-aspell aspell all

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

.PHONY: doc clean-all clean clean-doc

doc:
	branch=$$(git branch | sed -n '/\* /s///p'); \
	for i in $$(git branch -r | grep -v HEAD); \
	do \
		git checkout $$i; \
		$(MAKE) tese poster; \
		mv -f tese.pdf doc/samples/$${i/origin\//}.pdf; \
		mv -f poster.pdf doc/samples/poster-$${i/origin\//}.pdf; \
		$(MAKE) clean; \
	done; \
	git checkout $${branch};

clean-all: clean clean-doc

clean:
	latexmk -c
	$(RM) *.bbl

clean-doc:
	$(RM) -f doc/samples/*.pdf
