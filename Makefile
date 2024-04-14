all:
	make report
	make clean
	make wordcount

report: *.tex
	pdflatex report
	makeglossaries report
	bibtex report
	pdflatex report
	pdflatex report
	

wordcount: *.tex
	texcount *.tex > wordcount.txt
	sed -n "109,200p" wordcount.txt

clean:
	rm -f *.aux
	rm -f *.bak
	rm -f *.bbl
	rm -f *.blg
	rm -f *.glg
	rm -f *.glo
	rm -f *.gls
	rm -f *.ist
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.out
	rm -f *.toc