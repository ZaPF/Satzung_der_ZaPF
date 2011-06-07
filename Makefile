#
# Makefile, um die Geschäftsordnung für Plenen der ZaPF von der LaTeX-Datei zu erstellen.
#

all: Satzung

Satzung:
	pdflatex Satzung_der_ZaPF.tex

.PHONY : clean
clean:
	@-rm *.pdf *.aux *.log *.out
