MASTER = tese
POSTER = poster

all: ${MASTER} ${POSTER}

${MASTER}:
	latexmk -pdf ${MASTER}

${POSTER}:
	latexmk -pdf ${POSTER}

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

clean:
	latexmk -c
