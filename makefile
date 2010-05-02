build: kalman1960-zh.xdv
	xdvipdfmx kalman1960-zh.xdv
kalman1960-zh.xdv: kalman1960-zh.tex
	xelatex -no-pdf src/kalman1960-zh.tex
	xelatex -no-pdf src/kalman1960-zh.tex
clean:
	rm *.xdv *.aux *.out *.log
all:
	xelatex -no-pdf src/kalman1960-zh.tex
	xelatex -no-pdf src/kalman1960-zh.tex
	xdvipdfmx kalman1960-zh.xdv
