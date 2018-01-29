MAIN = main
OBJS = $(wildcard ./*.tex)
JOB = Solutions
COMPILER = pdflatex
OPTIONS = -file-line-error -halt-on-error -jobname $(JOB)


all : $(JOB).pdf 

$(JOB).pdf : $(OBJS)
	$(COMPILER) $(OPTIONS) $(MAIN).tex
	$(COMPILER) $(OPTIONS) $(MAIN).tex
	rm -f *.aux
	rm -f *.log
	rm -f *.out

.PHONY: clean

clean :
	rm -f $(JOB).pdf
	rm -f *.aux
	rm -f *.log
	rm -f *.out

