PAGES = index.html lab6.html lab8.html lab10.html
EXTRA = blinker.png led-sensor.png led-sensor-footprints.png led-sensor-pcb.png
WEBROOT = sdf.org:~/html/hope/

.include "rstweb.mk"

syllabus.pdf: syllabus.tex
	pdflatex syllabus.tex

syllabus.tex: Makefile index.rst
	rst2latex index.rst syllabus.tex
	sed -i .bak -e '/contents/d' syllabus.tex

lab6.html: lab6.ipynb
	jupyter nbconvert --to html $?
