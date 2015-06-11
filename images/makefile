PDFS=smx.pdf reduction.pdf blur_point_gather.pdf blur_point_scatter.pdf blur_point_shared.pdf core.pdf async_null.pdf async_two_streams.pdf

all: ${PDFS}

smx.pdf: smx.tex
	pdflatex smx.tex

core.pdf: core.tex
	pdflatex core.tex

reduction.pdf: reduction.tex
	pdflatex reduction.tex

blur_point_gather.pdf: blur_point_gather.tex
	pdflatex blur_point_gather.tex

blur_point_scatter.pdf: blur_point_scatter.tex
	pdflatex blur_point_scatter.tex

blur_point_shared.pdf: blur_point_shared.tex
	pdflatex blur_point_shared.tex

async_null.pdf: async_null.tex
	pdflatex async_null.tex

async_two_streams.pdf: async_two_streams.tex
	pdflatex async_two_streams.tex

clean:
	rm -f ${PDFS}
	rm -f *.dvi
	rm -f *.aux
	rm -f *.log
