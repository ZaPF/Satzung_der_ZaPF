# Dies ist das Makefile um die verschiedenen Publikationsversionen der Satzung
# der ZaPF

all: html wiki tex pdf

html: ../satzung.md
	pandoc --standalone --metadata-file=./metadata.yml --number-sections --output=../versions/satzung.html ../satzung.md

tex: ../satzung.md
	pandoc --standalone --metadata-file=./metadata.yml --number-sections --to=latex --output=../versions/satzung.tex ../satzung.md

pdf: ../versions/satzung.tex
	pdflatex -output-directory ../versions satzung.tex
	pdflatex -output-directory ../versions satzung.tex
	rm -f ../versions/satzung.{log,aux,out}

wiki: ../satzung.md
	pandoc --to=mediawiki --lua-filter=remove-attr.lua --output=../versions/satzung.wiki ../satzung.md

clean:
	rm ../versions/*
