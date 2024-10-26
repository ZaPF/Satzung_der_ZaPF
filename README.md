# Satzung der ZaPF

Dieses Repository enthält die Quelldateien für die Satzung der ZaPF.

## Homepage

* <https://zapf.wiki/Satzung_der_ZaPF>

## Kontakt

* [Ständiger Ausschuss der Physik-Fachschaften – kurz StAPF](http://zapfev.de/zapf/stapf)
  * E-Mail: **stapf@zapf.in**

## Wegweiser

Die `master` branch enthält die offiziele Variante der Satzung in Markdown. Aus
dieser können mit pandoc die Versionen in [HTML](./versions/satzung.html) und
[LaTeX](./versions/satzung.tex) und daraus die
[PDF-Version](./versions/satzung.pdf) sowie die Version in
[Mediawiki-Markup](./versions/satzung.wiki) generiert werden.

Die Versionen werden immer nach einer ZaPF, auf deren Abschlussplenum die
Satzung geändert wurde, nachdem diese als [Pull
Requests](https://github.com/ZaPF/Satzung_der_ZaPF/pulls) gemergt wurden und
[der
Änderungsvermerkt](./satzung.md#Schlussbestimmungen%20und%20%C3%84nderungshistorie%20%7B-%7D)
hinzugefügt wurde, neu generiert.

Um die Versionen neu zu generieren führt man den Befehl
```bash
make -C util
```
aus. Was dabei passiert, kann man im [Makefile](./util/Makefile) sehen.

Ein Beispiel für einen Commit, in dem der Änderungsvemerkt hinzugefügt wird und
die neu generierten Versionen hinzugefügt werden, ist
[dieser](https://github.com/ZaPF/Satzung_der_ZaPF/commit/d8a3a1c2bc92f733633d77816f27252d66ee5473).
