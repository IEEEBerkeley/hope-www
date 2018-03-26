html: $(PAGES)

clean:
	rm -f $(PAGES)

publish: html
	rsync -avm --include='*.css' --include='*.html' --include='*.js' --include='*.png' --include='*/' --exclude='*' ./ $(WEBROOT)

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
