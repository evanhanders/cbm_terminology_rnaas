.PHONY: rnaas_cbm_terminology.pdf all clean

all: rnaas_cbm_terminology.pdf

rnaas_cbm_terminology.pdf: rnaas_cbm_terminology.tex intro.tex processes.tex conclusions.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make rnaas_cbm_terminology.tex

clean:
	latexmk -CA
