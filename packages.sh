#!/bin/bash

R -e 'install.packages(c("Rcpp", "devtools","roxygen2","maptools", "spatstat"),repos="https://cran.stat.auckland.ac.nz/")'
R -e 'install.packages("INLA", repos="https://www.math.ntnu.no/inla/R/stable")'

echo DONE
