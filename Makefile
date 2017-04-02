PAGES = index.html lab6.html lab8.html lab10.html
EXTRA = blinker.png led-sensor.png led-sensor-footprints.png led-sensor-pcb.png
WEBROOT = sdf.org:~/html/hope/

.include "rstweb.mk"

lab6.html: lab6.ipynb
	jupyter nbconvert --to html $?
