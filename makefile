.PHONY: rnaas_cbm_terminology.pdf all clean

all: rnaas_cbm_terminology.pdf

rnaas_cbm_terminology.pdf: rnaas_cbm_terminology.tex processes.tex structure.tex conclusions.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make rnaas_cbm_terminology.tex; texcount -v3 -merge -incbib -dir -sub=none -utf8 -sum rnaas_cbm_terminology.tex

clean:
	latexmk -CA
