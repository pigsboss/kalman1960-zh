build: kalman1960-zh.xdv
	xdvipdfmx -o ./bin/kalman1960-zh.pdf ./out/kalman1960-zh.xdv
kalman1960-zh.xdv: kalman1960-zh.tex
	xelatex -no-pdf -output-directory=out ./src/kalman1960-zh.tex
	xelatex -no-pdf -output-directory=out ./src/kalman1960-zh.tex
clean:
	rm ./out/*
all:
	xelatex -no-pdf -output-directory=out ./src/kalman1960-zh.tex
	xelatex -no-pdf -output-directory=out ./src/kalman1960-zh.tex
	xdvipdfmx -o ./bin/kalman1960-zh.pdf ./out/kalman1960-zh.xdv
