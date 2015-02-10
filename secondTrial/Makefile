#makefile for using latexml and pdflatex to generate *.pdf and *.xml
#declaration of variables 
#set .tex as source. In our case only mockDoc is available
#name .xml and .pdf based on .tex
SRC = $(shell ls *.tex)
XML = $(SRC:%.tex=%.xml)
PDF = $(SRC:%.tex=%.pdf)

all: $(XML) $(PDF)

mockDoc.rng: mockDoc.rnc 
	java -jar trang.jar -I rnc -O rng mockDoc.rnc mockDoc.rng

#the codes below follow the usage of variables mentioned above
#’$@‘: object filename. ‘$<‘:source file name
$(XML): %.xml: %.tex mockDoc.rng doc.cls.ltxml
	latexmlc $<  --format=XML --destination=$@ --log=$@.log

$(PDF): %.pdf: %.tex doc.cls
	pdflatex $<
