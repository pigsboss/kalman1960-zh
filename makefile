build: kalman1960-zh.xdv
	xdvipdfmx -o bin/kalman1960-zh.pdf kalman1960-zh.xdv
kalman1960-zh.xdv: kalman1960-zh.tex
	xelatex -no-pdf src/kalman1960-zh.tex
	xelatex -no-pdf src/kalman1960-zh.tex
clean:
	rm *.xdv *.aux *.out *.log
all:
	xelatex -no-pdf src/kalman1960-zh.tex
	xelatex -no-pdf src/kalman1960-zh.tex
	xdvipdfmx -o bin/kalman1960-zh.pdf kalman1960-zh.xdv
