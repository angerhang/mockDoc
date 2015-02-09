#makefile for using latexml and pdflatex to generate *.pdf and *.xml
SRC = $(shell ls *.tex)
XML = $(SRC:%.tex=%.xml)
PDF = $(SRC:%.tex=%.pdf)

all: $(XML) $(PDF)

mockDoc.rng: mockDoc.rnc 
	java -jar trang.jar -I rnc -O rng mockDoc.rnc mockDoc.rng

$(XML): %.xml: %.tex mockDoc.rng doc.cls.ltxml
	latexmlc $< --format=XML --destination=$@ --log=$@.log

$(PDF): %.pdf: %.tex doc.cls
	pdflatex $<
