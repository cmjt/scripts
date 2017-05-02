#!/bin/bash

R -e 'install.packages(c("Rcpp", "devtools","roxygen2","maptools", "spatstat","knitr","gsl","xtable","optimx","deldir","fields","geosphere","SDMTools","cccd","gridextra","lme4","boot","PROC","TMB","MatrixModels"),repos="https://cran.stat.auckland.ac.nz/")'

R -e 'install.packages("INLA", repos="https://www.math.ntnu.no/inla/R/stable")'

echo DONE
