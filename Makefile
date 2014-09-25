# $Id: Makefile,v 1.2 2002/11/15 17:45:27 dsm Exp $

## don't use builtin implicit rules

MAKEFLAGS = -r


## define custom suffixes

.SUFFIXES:
.SUFFIXES: .tex .dvi .ps


## LaTeX

LATEX = latex
BIBTEX = bibtex
PDFLATEX = pdflatex


## default target

DOC = \
    Casa_Cook.pdf


.PHONY: all
all: $(DOC)


## dependencies

Casa_Cook_v2_1.pdf: casadoc.sty

#file.ps: picture.eps
#file.pdf: picture.pdf


## miscellaneous targets

.PHONY: spell
spell:
	@aspell -c -t --lang=en_UK *.tex

.PHONY: clean
clean:
	@rm -f *~ *.log

.PHONY: squeaky
squeaky: clean
	@rm -f *.aui *.aux *.out *.idx

.PHONY: clobber
clobber: squeaky
	@rm -f *.dvi *.bak *.toc *.bbl *.blg

.PHONY: distclean
distclean: clobber
	@rm -f $(DOC)

.PHONY: realclean
realclean: distclean
	@


## implicit rules

%.ps: %.dvi
	dvips $< -o

%.dvi: %.tex
	$(LATEX) $< && $(BIBTEX) $< && $(LATEX) $< && $(LATEX) $<

# %.pdf: %.tex
# 	$(PDFLATEX) $< && $(BIBTEX) $< && $(PDFLATEX) $< && $(PDFLATEX) $<

## implicit rules

%.pdf: %.tex
	$(PDFLATEX) $*
	$(BIBTEX) $*
	$(PDFLATEX) $*
	$(PDFLATEX) $*

## don't try to make the makefile..

Makefile: ;


## -fin-
# vim:set syntax=make:
