all: zh en

zh: bin/kalman1960-zh.pdf

en: bin/kalman1960-en.pdf

bin/%.pdf: bin/%.xdv
	xdvipdfmx -o $@ $^

bin/%.xdv: src/%.tex
	xelatex -no-pdf $^

clean:
	rm -rf bin/*.{pdf,xdv}
