build-zh: kalman1960-zh.xdv
	xdvipdfmx -o bin/kalman1960-zh.pdf kalman1960-zh.xdv
build-en: kalman1960-en.xdv
	xdvipdfmx -o bin/kalman1960-en.pdf kalman1960-en.xdv
kalman1960-zh.xdv: kalman1960-zh.tex
	xelatex -no-pdf src/kalman1960-zh.tex
	xelatex -no-pdf src/kalman1960-zh.tex
kalman1960-en.xdv: kalman1960-en.tex
	xelatex -no-pdf src/kalman1960-en.tex
	xelatex -no-pdf src/kalman1960-en.tex
clean:
	rm *.xdv *.aux *.out *.log
build-all:
	xelatex -no-pdf src/kalman1960-zh.tex
	xelatex -no-pdf src/kalman1960-zh.tex
	xdvipdfmx -o bin/kalman1960-zh.pdf kalman1960-zh.xdv
	xelatex -no-pdf src/kalman1960-en.tex
	xelatex -no-pdf src/kalman1960-en.tex
	xdvipdfmx -o bin/kalman1960-en.pdf kalman1960-en.xdv