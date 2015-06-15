LATEX=pdflatex
#LATEX=lualatex

TEXFILES=cuda.tex cuda_introduction.tex cuda_threads.tex cuda_api.tex cuda_blocks.tex cuda_todo.tex cuda_local.tex cuda_async.tex
all: cuda.pdf gpu_introduction.pdf

cuda.pdf: $(TEXFILES) beamerthemeCSCS.sty images
	$(LATEX) cuda.tex

gpu_introduction.pdf: beamerthemeCSCS.sty images gpu_introduction.tex
	$(LATEX) gpu_introduction.tex

force :
	$(LATEX) cuda.tex

images : images/*.tex
	cd images; make;

clean:
	rm -f cuda.pdf
	rm -f gpu_introduction.pdf
	rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc *.vrb
