# Dies ist das Makefile um die verschiedenen Publikationsversionen der Satzung
# der ZaPF

all: html tex pdf wiki

html: ../satzung.rst
	rst2html ../satzung.rst > ../versions/satzung.html

tex: ../satzung.rst
	rst2latex --documentclass=scrartcl --documentoptions=12pt,oneside --stylesheet=./preamble.tex --embed-stylesheet --latex-preamble= ../satzung.rst > ../versions/satzung.tex

pdf: ../versions/satzung.tex
	pdflatex -output-directory ../versions satzung.tex
	pdflatex -output-directory ../versions satzung.tex
	rm ../versions/satzung.{log,aux,out}

wiki: ../satzung.rst
	./rst2wiki/rst2wiki.py ../satzung.rst > ../versions/satzung.wiki

clean:
	rm ../versions/*
