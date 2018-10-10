## First question
if(exists("mean.val")){print(":-D You have successfully created the object mean.val")}
if(!exists("mean.val")){print(":-( I expected to see the object mean.val")}
if(exists("mean.val")){
  if(diff(c(mean.val,139.3105462)) < 0.001){
    print(" :-D You have successfully calculated the the mean of the value column as 139.3105")
  }
  if(diff(c(mean.val,139.3105462)) > 0.001){
    print(":-( I expected the mean of the value column to be 139.3105")
  }
}
## Second question
if(exists("nn.quantile")){print(":-D You have successfully created the object nn.quantile")}
if(!exists("nn.quantile")){print(":-( I expected to see the object nn.quantile")}
if(exists("nn.quantile")){
  if(diff(c(nn.quantile,909)) < 0.001){
    print(":-D You have successfully calculated the the 0.99 quantile of the value column as 909")
     }
      if(diff(c(nn.quantile,909)) > 0.001){
    print(":-( I expected the mean of the value column to be 139.3105")
    }
}
## Third question
if(require(devtools,quietly = TRUE) == TRUE){
  print(":-D You have successfully installed and loaded the package devtools")}
options(warn = -1)
if(require(devtools,quietly = TRUE) == FALSE){
  print(":-( I expected the package devtools to be loaded")}
options(warn = 0)
## Fourth question
if(exists("loc.max")){print(" :-D You have successfully created the object loc.max")}
if(!exists("loc.max")){print(":-( I expected to see the object loc.max")}
if(exists("loc.max")){
  if(nrow(loc.max) == 48 & ncol(loc.max) == 2 & loc.max[7,2] == 984){
  print(":-D You have created the data.frame of maximum values for each locations object")
  }
}
