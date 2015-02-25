FILE = "slides"

all:
	pdflatex slides.tex
all: latex

clean:
	# remove latex build files
	for x in aux bbl bcf blg log out toc run.xml; do \
		rm -f "${FILE}.$$x" ; \
	done

latex: clean
	pdflatex $(FILE)
	biber $(FILE)
	pdflatex $(FILE)
