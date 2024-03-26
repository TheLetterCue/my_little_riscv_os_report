all:
	make report
	make wordcount

report: *.tex
	pdflatex report.tex

wordcount: *.tex
	texcount *.tex > wordcount.txt