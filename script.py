# C-c C-z open python console in emacs
# C-c C-c run content emacs
# C-c C-r run region
# from terminal use python -m pip install SomePackage
# to install SomePackage
## import packages you need
import numpy as np
## can assign a variable name (mp) to a package (matplotlib)
#import matplotlib as mp

## def ti write function
def greet(greeting, opt_msg = None):
    """
    these are "doc string"
    typically just below function definition
    to give infor about function
    can go on forever
    this is stored in python as a "documentation string"
    and is printed to the console when you run help(function)
    Example doc string for good practice
    Prints out a greeting
    Input
    -----
    greeting

    Returns
    ----
    None
    """
    print(greeting)
    print(opt_msg)
    return None ## not required but makes it explicit what function is returning

#help(greet)
#greet("I'm tired", "really tired")

data = np.genfromtxt("../Statistics-and-R/data/ecoli.csv",delimiter = ",",
                     dtype = object, skip_header = 1)

#print(data[0,0])
## print(type(data)) ## equivalent to class
## help(np.ndarray) ## have to refer to numpy as np (see above)
#print(dir(data)) ## what we can dota
print(data.size)
dataTrans = data.transpose()
print(dataTrans[1])
print(dataTrans.shape)

print(np.mean(3)) ## needs a print as otherwise nothing happens

import csv
with open("../Statistics-and-R/data/ecoli.csv", "wb") as csvfile:
    ecoli = csv.reader("../Statistics-and-R/data/ecoli.csv")
