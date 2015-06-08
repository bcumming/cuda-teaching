PDFS=smx.pdf reduction.pdf
all: ${PDFS}

smx.pdf: smx.tex
	pdflatex smx.tex

reduction.pdf: reduction.tex
	pdflatex reduction.tex

clean:
	rm -f ${PDFS}
	rm -f *.dvi
	rm -f *.aux
	rm -f *.log
