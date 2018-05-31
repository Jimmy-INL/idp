.PHONY : build
build : idp.pdf

%.pdf : %.tex
	pdflatex $<
# "Rerun to get cross-references right."
	pdflatex $<

.PHONY : clean
clean :
	rm -f *.aux *.out *.log *.pdf
