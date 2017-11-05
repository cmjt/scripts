## list of all packages
ip <- as.data.frame(installed.packages())
## remove those in base
ip <- ip[!(ip[,"Priority"] %in% c("base", "recommended")),]
## where they are
path.lib <- unique(ip$LibPath)
## a vector of package names
pkgs.to.remove <- ip[,1]
## remove the packages
sapply(pkgs.to.remove, remove.packages, lib = path.lib)
