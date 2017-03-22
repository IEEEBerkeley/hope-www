PAGES = index.html lab6.html lab8.html
EXTRA = blinker.png
WEBROOT = sdf.org:~/html/hope/

.include "rstweb.mk"

lab6.html: lab6.ipynb
	jupyter nbconvert --to html $?
