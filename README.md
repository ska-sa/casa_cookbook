casa_cookbook
=============

Cookbook for KAT-7 data processing using CASA

An introduction workbook to illustrate how to reduce KAT-7 data using CASA.

Files contained in this directory:
 - Casa_Cook.tex : LaTex master document
 - Casa_Cook.pdf : PDF viewable version of the Cookbook
 - casa-bib.bib  : LaTeX specific file containing references
 - casadoc.sty   : LaTeX specific file defining command and environments used in the LaTeX master.
 - Makefile      : Make script for easy rendering of the PDF from the LaTeX master.

How to use the Makefile:
 - make           : Executes pdflatex and generates Casa_Cook.pdf file
 - make clobber   : Clean up directory by removing LaTeX generated temporary files
 - make realclean : Same as for 'make clobber', but also removes the Casa_Cook.pdf file file.
