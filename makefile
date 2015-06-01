all: cuda_introduction.pdf

cuda_introduction.pdf: cuda_introduction.tex beamerthemeCSCS.sty
	pdflatex cuda_introduction.tex

force :
	pdflatex cuda_introduction.tex

clean:
	rm -f cuda_introduction.pdf
	rm -f *.aux *.dvi *.log *.nav *.out *.snm *.toc *.vrb
