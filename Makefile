default: pdf
all: clean pdf html

pdf: clean analogcommunication.pdf

html:
	latex2html -html_version 4.0,latin1,unicode analogcommunication.tex

%.pdf: analogcommunication.tex
	xelatex $<
	xelatex $<	# to include generated ToC

clean:
	rm -f analogcommunication.pdf analogcommunication.aux analogcommunication.toc analogcommunication.log
