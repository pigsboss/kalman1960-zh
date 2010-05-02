#!/bin/sh
fig2dev -L pstex $1.fig $1.pstex
fig2dev -L pstex_t -p $1.pstex $1.fig $1.pstex_t
echo "\documentclass{article}\
\usepackage{amssymb,amsmath,graphics,epsfig,color}\
\usepackage{color}\
\setlength{\textwidth}{100cm}\
\setlength{\textheight}{100cm}\
\begin{document}\
\pagestyle{empty}\
\begin{figure}\
\input{$1.pstex_t}\
\end{figure}\
\end{document}" > fig2pdf.tex
latex fig2pdf
dvips -E fig2pdf.dvi -o $1.eps
epstopdf $1.eps
rm fig2pdf.tex fig2pdf.dvi fig2pdf.aux fig2pdf.log $1.eps $1.pstex $1.pstex_t
exit 0
