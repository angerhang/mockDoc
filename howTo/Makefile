#makefile for using latexml and pdflatex to generate *.pdf and *.xml
#declaration of variables 
#set .tex as source. In our case only mockDoc is available
#name .xml and .pdf based on .tex
SRC = mockDoc.tex
XML = $(SRC:%.tex=%.xml)
PDF = $(SRC:%.tex=%.pdf) 
HTML = $(SRC:%.tex=%.html)


all: $(XML) $(PDF) $(HTML) howTo.pdf

mockDoc.rng: mockDoc.rnc 
	java -jar trang.jar -I rnc -O rng mockDoc.rnc mockDoc.rng

#the codes below follow the usage of variables mentioned above
#’$@‘: object filename. ‘$<‘:source file name
$(XML): %.xml: %.tex mockDoc.rng mockDoc.cls.ltxml
	latexmlc $<  --format=XML --destination=$@ --log=$@.log

$(HTML): %.html: %.xml mockDoc.xsl
	xsltproc -o $@ mockDoc.xsl $< 

$(PDF): %.pdf: %.tex mockDoc.cls
	xelatex $<

howTo.pdf: howTo.tex $(XML) $(PDF) $(HTML) howTo.bib
	pdflatex howTo
	bibtex howTo
	pdflatex howTo
	pdflatex howTo

