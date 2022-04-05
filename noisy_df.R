# Make the results non-random
set.seed(2020)    

##########################################################################
# Generate example data
data <- data.frame(col_test= c(100,100,100,100,100), 
                   col_train= c(80,80,80,80,80))

##########################################################################
# Modify ONLY one colum of the data with R BASE
data$col_test <- jitter(data$col_test, amount= 90) 
data
# Source: https://www.geeksforgeeks.org/how-to-use-the-jitter-function-in-r-for-scatterplots/

###+++ play with the amount to change the range of modification +++###

##########################################################################
# modify All columns of the data

# Method 1 with apply (from R base)
data_mod <- apply(data, 2, function(x) jitter(x, amount= 90))
data_mod

# Or method 2 with mutate (from package dplyr)
library(dplyr) # Load library
data_mod <- mutate_all(data, function(x) jitter(x, amount= 90))
data_mod

##########################################################################
# round the data by 2 decimals
data_mod <- apply(data_mod, 2, function(x) round(x, 2))
data_mod# Make the results non-random
set.seed(2020)    

##########################################################################
# Generate example data
data <- data.frame(col_test= c(100,100,100,100,100), 
                   col_train= c(80,80,80,80,80))

##########################################################################
# Modify ONLY one colum of the data with R BASE
data$col_test <- jitter(data$col_test, amount= 90) 
data
# Source: https://www.geeksforgeeks.org/how-to-use-the-jitter-function-in-r-for-scatterplots/

###+++ play with the amount to change the range of modification +++###

##########################################################################
# modify All columns of the data

# Method 1 with apply (from R base)
data_mod <- apply(data, 2, function(x) jitter(x, amount= 90))
data_mod

# Or method 2 with mutate (from package dplyr)
library(dplyr) # Load library
data_mod <- mutate_all(data, function(x) jitter(x, amount= 90))
data_mod

##########################################################################
# round the data by 2 decimals
data_mod <- apply(data_mod, 2, function(x) round(x, 2))
data_mod
