#makefile for using latexml to generate mockDocTest.xml
mockDocTest.xml:mockDoc.tex mockDoc.rng doc.cls.ltxml
	latexml mockDoc.tex 
mockDoc.rng: mockDoc.rnc 
	java -jar trang.jar -I rnc -O rng mockDoc.rnc mockDoc.rng
mockDoc.pdf: mockDoc.tex
	pdflatex mockDoc.tex