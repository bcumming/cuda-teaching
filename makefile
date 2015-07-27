LATEX=pdflatex
#LATEX=lualatex

all: cuda1.pdf cuda2.pdf cuda3.pdf cuda4.pdf gpu_introduction.pdf cuda_miniapp.pdf

cuda_miniapp.pdf: cuda_miniapp.tex beamerthemeCSCS.sty images
	$(LATEX) cuda_miniapp.tex

cuda1.pdf: cuda1.tex cuda_introduction.tex cuda_api.tex beamerthemeCSCS.sty images
	$(LATEX) cuda1.tex

cuda2.pdf: cuda2.tex cuda_threads.tex cuda_blocks.tex beamerthemeCSCS.sty images
	$(LATEX) cuda2.tex

cuda3.pdf: cuda3.tex cuda_local.tex beamerthemeCSCS.sty images
	$(LATEX) cuda3.tex

cuda4.pdf: cuda4.tex cuda_async.tex cuda_2d.tex cuda_final.tex beamerthemeCSCS.sty images
	$(LATEX) cuda4.tex

gpu_introduction.pdf: beamerthemeCSCS.sty images gpu_introduction.tex
	$(LATEX) gpu_introduction.tex

force : cuda1.pdf cuda2.pdf cuda3.pdf cuda4.pdf
	$(LATEX) cuda1.tex
	$(LATEX) cuda2.tex
	$(LATEX) cuda3.tex
	$(LATEX) cuda4.tex

images : images/*.tex
	cd images; make;

clean:
	rm -f cuda[1-4].pdf
	rm -f gpu_introduction.pdf
	rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc *.vrb
