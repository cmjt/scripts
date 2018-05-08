#!/bin/bash

#script to compile a latex document with addtinal options to
# compile and clean, or complie, clean and open in pdf,
#or compile a rnw file after cleaning **note .tex iles are cleaned first here**.
#first and only argument is the <filename> without extension
#when script is run it will prompt for options


echo "select the operation *********  1)compile 2)compile and clean 2 3)compile, clean and open 4) compile, clean a .rnw file 5) make my thesis "

read n
case $n in
    1)pdflatex "$1";
      bibtex "$1";
      pdflatex "$1";
      pdflatex "$1";;
    2)rm *.aux *.bbl *blg *.log *.*~;
      pdflatex "$1";
      bibtex "$1";
      pdflatex "$1";
      pdflatex "$1";;
    3)rm *.aux *.bbl *blg *.log *.*~;
      pdflatex "$1";
      bibtex "$1";
      pdflatex "$1";
      pdflatex "$1";
      evince "$1".pdf &;;
    4)rm *.aux *.bbl *blg *.log *.*~ "$1".tex;
      R -e "library(knitr); knit('"$1".Rnw')";
      pdflatex "$1";
      bibtex "$1";
      makeglossaries "$1";
      pdflatex "$1";
      pdflatex "$1";;
    5)rm *.aux *.bbl *blg *.log *.*~;
      pdflatex "$1";
      bibtex "$1";
      makeglossaries "$1";
      pdflatex "$1";
      pdflatex "$1";;
    *) invalid option;;
esac


