# enter a filename without the extension
FILENAME = thesis

all:
	pdflatex $(FILENAME).tex

run:
	pdflatex $(FILENAME).tex
	pdflatex $(FILENAME).tex
	biber $(FILENAME)
	pdflatex $(FILENAME).tex

clean:
	rm $(FILENAME).log $(FILENAME).aux

