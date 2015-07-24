LATEX=pdflatex
#LATEX=lualatex

TEXFILES=cuda.tex cuda_introduction.tex cuda_threads.tex cuda_api.tex cuda_blocks.tex cuda_todo.tex cuda_local.tex cuda_async.tex cuda1.tex cuda2.tex cuda3.tex cuda4.tex
all: cuda1.pdf cuda2.pdf cuda3.pdf cuda4.pdf gpu_introduction.pdf

cuda1.pdf: $(TEXFILES) beamerthemeCSCS.sty images
	$(LATEX) cuda1.tex

cuda2.pdf: $(TEXFILES) beamerthemeCSCS.sty images
	$(LATEX) cuda2.tex

cuda3.pdf: $(TEXFILES) beamerthemeCSCS.sty images
	$(LATEX) cuda3.tex

cuda4.pdf: $(TEXFILES) beamerthemeCSCS.sty images
	$(LATEX) cuda4.tex

cuda.pdf: $(TEXFILES) beamerthemeCSCS.sty images
	$(LATEX) cuda.tex

gpu_introduction.pdf: beamerthemeCSCS.sty images gpu_introduction.tex
	$(LATEX) gpu_introduction.tex

force :
	$(LATEX) cuda.tex

images : images/*.tex
	cd images; make;

clean:
	rm -f cuda[1-4].pdf
	rm -f gpu_introduction.pdf
	rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc *.vrb
