LATEX=pdflatex
#LATEX=lualatex

all: cuda_introduction.pdf

cuda_introduction.pdf: cuda_introduction.tex beamerthemeCSCS.sty
	$(LATEX) cuda_introduction.tex

force :
	$(LATEX) cuda_introduction.tex

clean:
	rm -f cuda_introduction.pdf
	rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc *.vrb
