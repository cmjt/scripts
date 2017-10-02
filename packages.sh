#!/bin/bash

R -e 'install.packages(c("Rcpp", "devtools","roxygen2","maptools", "spatstat","knitr","gsl","xtable","optimx","deldir","fields","geosphere","SDMTools","cccd","gridExtra","lme4","boot","pROC","mvtnorm","htmlwidgets","leaflet","lubridate","TMB","MatrixModels","rgdal","palm","foreach","doParallel"),repos="https://cran.stat.auckland.ac.nz/")'


echo DONE
