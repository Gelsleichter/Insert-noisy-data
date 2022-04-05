### ----------------------------------------------------------------------------
### Yuri Gelsleichter, April 2022 - Hungary
#   _   _       _                 _       _        
#  | \ | | ___ (_)___  ___     __| | __ _| |_ __ _ 
#  |  \| |/ _ \| / __|/ _ \   / _` |/ _` | __/ _` |
#  | |\  | (_) | \__ \  __/  | (_| | (_| | || (_| |
#  |_| \_|\___/|_|___/\___|___\__,_|\__,_|\__\__,_|
#                        |_____|      
### ----------------------------------------------------------------------------

# Make the results non-random
set.seed(2020)    

################################################################################
# Generate example data
df <- data.frame(col_test= c(10,10,10,10,10),
                 col_train= c(20,20,20,20,20))
data <- df

################################################################################
# Modify ONLY one colum of the data with R BASE
data$col_test <- jitter(data$col_test, amount= 22) 
data
# Source: https://www.geeksforgeeks.org/how-to-use-the-jitter-function-in-r-for-scatterplots/

###----------------------------------------------------------------###
###+++ play with the amount to change the range of modification +++###

################################################################################
# modify All columns of the data

# Method 1 with apply (from R base)
data <- df # refresh the data
data_mod <- apply(data, 2, function(x) jitter(x, amount= 40))
data_mod

# Or method 2 with mutate (from package dplyr)
data <- df # refresh the data
library(dplyr) # Load library
data_mod <- mutate_all(data, function(x) abs(jitter(x, amount= 90))) # with abs()
data_mod
###---------------------------------------------###
###+++ use abs() to add only positive values +++###

################################################################################
# round the data by 2 decimals
data_mod <- apply(data_mod, 2, function(x) round(x, 2))
data_mod
