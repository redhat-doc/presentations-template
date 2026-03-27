LATEXTOPDF=xelatex
PROGRAM=Test-Presentation
MV=mv

all: $(PROGRAM).pdf

$(PROGRAM).pdf:
	$(LATEXTOPDF) 000-test-presentation.tex
	$(LATEXTOPDF) 000-test-presentation.tex
	$(MV) 000-test-presentation.pdf $(PROGRAM).pdf

clean:
	rm -frv *.aux *.nav *.out *.toc *.log *.snm *.vrb *.xdv *~

clobber:
	rm -frv *.aux *.nav *.out *.toc *.pdf *.log *.snm *.vrb *.xdv *~

test:
	$(LATEXTOPDF) -no-pdf 000-test-presentation.tex

.PHONY: all $(PROGRAM).pdf clean clobber test
