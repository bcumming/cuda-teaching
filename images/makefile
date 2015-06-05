PDFS=smx_.pdf
all: ${PDFS}

smx_.pdf: smx.tex
	pdflatex smx.tex

clean:
	rm -f ${PDFS}
	rm -f *.dvi
	rm -f *.aux
	rm -f *.log
