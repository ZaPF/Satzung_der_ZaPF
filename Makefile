#
# Makefile, um die Geschäftsordnung für Plenen der ZaPF von der LaTeX-Datei zu erstellen.
#

# Zur Erstellung einfach in einer Linux/Mac Kommandozeile den folgenden Befehl eingeben:
# make all


# Alle Zieldateien erstellen: PDF, Mediawiki und Markdown:
all: Satzung_der_ZaPF.pdf Satzung_der_ZaPF.mediawiki.txt Satzung_der_ZaPF.markdown.txt


# Die einzelnen Zieldateien werden wie folgt erstellt:
Satzung_der_ZaPF.pdf: Satzung_der_ZaPF.tex
	pdflatex Satzung_der_ZaPF.tex
	pdflatex Satzung_der_ZaPF.tex

Satzung_der_ZaPF.mediawiki.txt: Satzung_der_ZaPF.tex
	pandoc -f latex -t mediawiki -o Satzung_der_ZaPF.mediawiki.txt Satzung_der_ZaPF.tex
	##### Korrekturen an der Mediawiki-Version:
	### * Zeilen mit eingerücktem Text würden als im Wiki <code> dargestellt
	### * Trennlinie entfernen
	### * Überschriften weiter Einrücken
	sed -i 's/^ //g;/^-----$$/d;s/^= \(.*\) =$$/=== \1 ===/g' Satzung_der_ZaPF.mediawiki.txt
	### * Neue Zeile nach <br /> Tag entfernen:
	sed -i 'N;s/<br \/>\n/<br \/>/g' Satzung_der_ZaPF.mediawiki.txt
	### * Hinweise in der Datei anbringen:
	sed -i 's/^{Satzung der ZaPF}/Diese Datei erleichtert die Aktualisierung von https\:\/\/vmp\.ethz\.ch\/zapfwiki\/index\.php\/Satzung_der_ZaPF\.\n\n== Satzungstext ==\n/g' Satzung_der_ZaPF.mediawiki.txt

Satzung_der_ZaPF.markdown.txt: Satzung_der_ZaPF.tex
	pandoc -f latex -t markdown -o Satzung_der_ZaPF.markdown.txt Satzung_der_ZaPF.tex
	##### Korrekturen an der Markdown-Version für Veröffentlichung
	###  auf http://zapfev.de/zapf/satzung
	### * Quotes entfernen (warum kommt das überhaupt zustande?)
	sed -i 's/^> //g;s/^>$$//g' Satzung_der_ZaPF.markdown.txt
	### * Überschriften weiter Einrücken
	### * Trennlinie entfernen
	### * Backslash durch zwei Leerzeichen ersetzen ( ';' trennt sed Befehle voneinenader )
	sed -i 's/^### /##### /g;s/^## /#### /g;s/^# /### /g;/\* \* \* \*/d;s/\\/  /g' Satzung_der_ZaPF.markdown.txt
	## Benötigt wird aber noch etwas Handarbeit:
	## Entfernen von {header _satzung}
	## Entfernen des Dokumententitels


# clean the directory from unneeded files
.PHONY : clean
clean :
	@-rm -rf *~ *.mediawiki.txt *markdown.txt *.toc *.aux *.log *.dvi *.ps *.pdf *.out
