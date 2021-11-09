# ******************************************************************************
# Slide#18: Other Statistical Programs
# ******************************************************************************
# Read SPSS Loans.sav file into R using foreign package
library(foreign)
cur_fld <- getwd()
loans_spss_file <- paste(cur_fld, "Loans.sav", sep = "/")
loans_spss_df <- 
str(loans_spss_df)
loans_spss_df
detach("package:foreign")

# Read SPSS Loans.sav file into R using haven package
library(haven)
cur_fld <- getwd()
loans_spss_file <- paste(cur_fld, "Loans.sav", sep = "/")
loans_spss_tbl <- 
str(loans_spss_tbl)
loans_spss_tbl
detach("package:haven")

# ******************************************************************************
# Slide#19: R Binary RData Files
# ******************************************************************************
cur_folder <- getwd()
csv_file <- paste(cur_folder,"Loans.csv",sep="/")
loans_csv_df <- read.csv(csv_file)
# Save the existing Loans data frame to an rdata file
rdata_file <- paste(cur_folder,"Loans.rdata",sep="/")

rm(loans_csv_df)
head(loans_csv_df) # Just to verify data frame was removed
# Check the project folder for Loans R workspace (rdata) file
# Read from the data file into another data frame
load(rdata_file)
# Data frame object is restored with the same name, which is why
# we do not assign the result of the load function to an object
loans_csv_df

# Alternative way is to use the saveRDS / readRDS functions
# instead of the save/load functions with a *.rds file type
# First we remove all objects from the environment
rm(list=ls())
cur_folder <- getwd()
csv_file <- paste(cur_folder,"Loans.csv",sep="/")
loans_csv_df <- read.csv(csv_file)
# Use the saveRDS function instead of save
rds_file <- 
saveRDS(loans_csv_df, file=rds_file)
# Read it back into a differently named data frame
loans_rds_df <- readRDS(rds_file)
loans_rds_df