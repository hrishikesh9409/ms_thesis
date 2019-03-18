# enter a filename without the extension
FILENAME = thesis

all:
	pdflatex -shell-escape $(FILENAME).tex 
	bibtex $(FILENAME).aux
	pdflatex -shell-escape $(FILENAME).tex
	pdflatex -shell-escape $(FILENAME).tex

run:
	bibtex $(FILENAME)
	pdflatex $(FILENAME).tex
	pdflatex $(FILENAME).tex

clean:
	rm $(FILENAME).log $(FILENAME).aux *.lof *.blg *.toc *.out *.lot

