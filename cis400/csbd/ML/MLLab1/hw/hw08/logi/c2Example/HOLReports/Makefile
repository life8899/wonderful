# ===================================================
# Makefile for conops0SolutionsTheory 
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

	${PDFLATEX} simpleConopsExampleReport
	${MAKEINDEX} simpleConopsExampleReport
	${PDFLATEX} simpleConopsExampleReport

	${PDFLATEX} conops0SolutionReport
	${MAKEINDEX} conops0SolutionReport
	${PDFLATEX} conops0SolutionReport

