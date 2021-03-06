# enter a filename without the extension
FILENAME = thesis

all:
	pdflatex $(FILENAME).tex 
	bibtex $(FILENAME).aux
	pdflatex $(FILENAME).tex
	pdflatex $(FILENAME).tex

run:
	bibtex $(FILENAME)
	pdflatex $(FILENAME).tex
	pdflatex $(FILENAME).tex

clean:
	rm $(FILENAME).log $(FILENAME).aux *.lof *.blg *.toc *.out *.lot

