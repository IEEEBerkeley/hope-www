PAGES = index.html lab3.html lab4.html lab6.html lab8.html lab10.html
EXTRA = blinker.png led-sensor.png led-sensor-footprints.png led-sensor-pcb.png
WEBROOT = sdf.org:~/html/hope/

.include "rstweb.mk"

syllabus.rst: index.rst
	sed -e '/^.. contents/d' index.rst > syllabus.rst
