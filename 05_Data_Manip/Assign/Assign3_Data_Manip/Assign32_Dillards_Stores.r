# ******************************************************************************
# *** Problem 02: Dillard's Department Stores
# ******************************************************************************
cur_folder <- getwd()
# Set the file path and name
data_file <- paste(cur_folder,"Dillards2004.txt",sep="/")
# Use an appropriate function to read the file into dillards_df data frame
dillards_df <- read.csv(data_file)
str(dillards_df)
head(dillards_df)
colnames(dillards_df)[1] <- "MSA"

# a) ***************************************************************************
# Examine the issues that arise when you attempt to convert the ORIG prices to 
# numbers. Next examine the MARKDOWN column for negative numbers. Do they 
# include the anomalies associated with the ORIG prices? Remove the anomalies 
# you feel should be removed in a redefined dillars_df data frame. Make sure to
# convert the ORIG prices to numbers. Your result will not necessarily match
# mine, as long as you don't just ignore these issues, whatever you come up
# with is fine.

# *** Examining ORIG column
org_price <- 

# Find the rows for the 11 zeros and 1 NA using which() function
org_err <- 
org_err
# Show the subset of the data frame for the 12 anomalies
dillards_df[org_err, ]

# *** Removing erroneous transactions from data frame
dillards_df <- dillards_df[-org_err, ]
# Convert ORIG to numerical values
dillards_df$ORIG <- as.numeric(dillards_df$ORIG)
str(dillards_df)

# b) ***************************************************************************
# Add a column to the data frame named MARKDOWN_PCT that indicates the percentage
# markdown of each transaction. MARKDOWN_PCT should be a decimal number, rounded
# to 3 places.
dillards_df$MARKDOWN_PCT <- 
nrow(dillards_df)
head(dillards_df, n=4)

library(dplyr)
# c) ***************************************************************************
# Given the variable store and using dplyr functions, calculate the average of 
# the original transaction amounts named AvgOrigStore
store <- 5802
dillards_df %>% 

# d) ***************************************************************************
# Using dplyr functions find the number of transactions per store, named NumTrans,
# and average markdown per store, named AvgMkdDwn. Arrange the result descending
# on the number of transactions per store and show only those stores with over
# 110 transactions.
dillards_df %>% 

# e) ***************************************************************************
# Using dplyr functions find the average markdown percentage, named AvgMkdDwnPct
# by store and department. Arrange the result descending on the average markdown
# percentage. Shown only those stores and departments where average markdown
# percentage is over 75%.
dillards_df %>% 

detach("package:dplyr")