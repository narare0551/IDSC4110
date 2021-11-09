# ******************************************************************************
# *** Problem 01: Fortune500 Companies
# ******************************************************************************
cur_folder <- getwd()
fortune500_file <- paste(cur_folder,"Fortune500.csv",sep="/")
fortune500_df <- read.csv(fortune500_file)
colnames(fortune500_df)[4:5] <- c("Revenue","Profit")
head(fortune500_df)
str(fortune500_df)
tail(fortune500_df)

fortune500_df$Revenue <- as.numeric(sub(",","",fortune500_df$Revenue))
fortune500_df$Profit <- as.numeric(sub(",","",fortune500_df$Profit))
tail(fortune500_df)

library(dplyr)
# a) ***************************************************************************
# Use the clean data frame to find the average profit of companies in the year 
# 1988 using filter and summarize functions from dplyr package.
fortune500_df %>% 

# b) ***************************************************************************
# List the year, rank, company name and revenue of top 5 ranked companies for 
# each of  the first 10 years of this millennium (2000 – 2009) using filter and
# select functions from dplyr package. Save the result into fortune500_top5_df.
# Then find the average revenue first by year during the same time period using
# group_by and summarize functions from dplyr package.
fortune500_top5_df <- 

head(fortune500_top5_df)

detach("package:dplyr")

# ******************************************************************************
# *** Problem 02: FDIC Banks
# ******************************************************************************
cur_folder <- getwd()
fdic_file <- paste(cur_folder, "FDIC.csv", sep = "/")
fdic_df <- read.csv(fdic_file)
head(fdic_df)
str(fdic_df)
tail(fdic_df)

# a) ***************************************************************************
# Using dplyr functions count and arrange, count the number of banks by state into
# state_freq_df data frame, name the data frame column BankCount and sort the 
# data frame on BankCount descending.
library(dplyr)
state_freq_df <- fdic_df %>% 

# b) ***************************************************************************
# Extract the year out of Closing.Date column using a combination of nchar and
# substr functions. Append Acquisition.Year column to the fdic_df data frame and
# display the header. 
dt_len <- nchar()
acq_yr <- substr()
fdic_df$Acquisition.Year <- acq_yr
head(fdic_df, n=3)

# c) ***************************************************************************
# Summarize the number of acquisitions by year, using the same count function 
# from the previous step, into year_freq_df data frame, rename the columns Year 
# and AcqCount and sort the data frame on AcqCount descending.
year_freq_df <- fdic_df %>% 

names(year_freq_df)[1] <- "Year"
head(year_freq_df)

detach("package:dplyr")
