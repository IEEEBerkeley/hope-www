html: $(PAGES)

clean:
	rm -f $(PAGES)

publish: html
	rsync -avm --include='*.css' --include='*.html' --include='*.js' --include='*.png' --include='*/' --exclude='*' ./ $(WEBROOT)

.PHONY: clean html publish

.SUFFIXES: .html .ipynb .pdf .rst .tex

.rst.html:
	rst2html.py --link-style --stylesheet-path html4css1.css,style.css \
		--stylesheet-dirs=styles $< $@

.rst.tex:
	rst2latex --font-encoding="" --use-latex-docinfo \
		--documentoptions="letter" \
		--latex-preamble="\usepackage{fullpage}" $< $@

.tex.pdf:
	latexmk -pdf $<

.ipynb.html:
	jupyter-nbconvert --to html $<
