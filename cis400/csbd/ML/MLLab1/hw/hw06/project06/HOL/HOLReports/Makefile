# ===================================================
# Makefile for pretty-printing reports 
# ===================================================

PDFLATEX=pdflatex
DVILATEX=latex
MAKEINDEX=makeindex
BIBTEX=bibtex

default: report

clean:
	(rm -f *Report.* HOL*.*)

report:
	hol<documentation.sml

# ===================================================
# Change  to the appropriate report name
# ===================================================
	${PDFLATEX} project6Report
	${MAKEINDEX} project6Report
	${PDFLATEX} project6Report



