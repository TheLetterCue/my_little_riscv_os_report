all:
	make report
	make wordcount

report: *.tex
	pdflatex report
	bibtex report
	pdflatex report
	pdflatex report
	

wordcount: *.tex
	texcount *.tex > wordcount.txt
	sed -n "109,200p" wordcount.txt