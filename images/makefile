PDFS=smx.pdf reduction.pdf blur_point_gather.pdf blur_point_scatter.pdf blur_point_shared.pdf

all: ${PDFS}

smx.pdf: smx.tex
	pdflatex smx.tex

reduction.pdf: reduction.tex
	pdflatex reduction.tex

blur_point_gather.pdf: blur_point_gather.tex
	pdflatex blur_point_gather.tex

blur_point_scatter.pdf: blur_point_scatter.tex
	pdflatex blur_point_scatter.tex

blur_point_shared.pdf: blur_point_shared.tex
	pdflatex blur_point_shared.tex

clean:
	rm -f ${PDFS}
	rm -f *.dvi
	rm -f *.aux
	rm -f *.log
