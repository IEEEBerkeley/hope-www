html: $(PAGES)

clean:
	rm -f $(PAGES)

publish: html
	scp $(PAGES) $(EXTRA) $(WEBROOT)

.PHONY: clean html publish

.SUFFIXES: .html .ipynb .pdf .rst .tex

.rst.html: style.css
	rst2html --stylesheet-path html4css1.css,style.css $< $@

.rst.tex:
	rst2latex --font-encoding="" --use-latex-docinfo \
		--latex-preamble="\usepackage{fullpage}" $< $@

.tex.pdf:
	pdflatex $<

.ipynb.html:
	jupyter nbconvert --to html $<
