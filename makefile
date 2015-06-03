LATEX=pdflatex
#LATEX=lualatex

TEXFILES=cuda.tex cuda_introduction.tex cuda_threads.tex cuda_api.tex cuda_blocks.tex cuda_todo.tex
all: cuda.pdf

cuda.pdf: $(TEXFILES) beamerthemeCSCS.sty
	$(LATEX) cuda.tex

force :
	$(LATEX) cuda.tex

clean:
	rm -f cuda.pdf
	rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc *.vrb
