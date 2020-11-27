#=============================================================
#	Makefile for the PhD dissertation of Yong Zou
#	    Ver 1.0   Aug. 13, 2007  Potsdam
#=============================================================
#  <<< Usage >>>>
#	make			! Compile as it is
#	-------------------------------------------------------------
#	make [options...]	! Compile with changed options
#		default		! Run "latex" twice as well as "bibtex"
#=============================================================

#-- Source Files for LaTeX tup -------------------------------
#... Specify the chapter to compile here or 
TEXSRC	=	manuscript_Huang.tex

SRCS	  =	$(TEXSRC)
TARGET     =	manuscript_Huang.pdf
SRCNAME	  = 	${TARGET:.pdf=}

#-- Software Environment Setup -------------------------------
LATEX	= pdflatex
BIBTEX	= bibtex
DVIPS	= dvips 
PDF	= dvipdf 
#=============================================================
#-- Compile the Source Files ---------------------------------
#=============================================================
.PHONY : default full full_revision clean

#-- Default Setting ------------------------------------------
full : full_revision clean

full_revision : $(SRCS)
	$(LATEX)  $(SRCNAME)		 # Create   *.aux
#	$(BIBTEX) $(SRCNAME)
	$(LATEX)  $(SRCNAME)		 # Finalize *.aux
#	$(LATEX)  $(SRCNAME)
#	$(LATEX)  $(SRCNAME)
#	$(DVIPS) -o $(TARGET) $(SRCNAME)       # Create .ps from .dvi
#	$(PDF) $(SRCNAME)			 # Create .pdf from .dvi

clean :
	-rm  *.log *.aux *.blg *Notes.bib  

