TEX=xelatex
PANDOC_FLAGS= -t beamer \
	-s \
	-H beameropt.tex \
	--highlight-style=pygments \
	--filter pandoc-include-code
