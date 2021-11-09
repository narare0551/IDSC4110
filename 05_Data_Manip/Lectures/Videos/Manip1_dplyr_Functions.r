# ******************************************************************************
# Slide#05: Data Manipulation - select Function
# ******************************************************************************
library(plyr) # Load first to avoid confusion on function names
suppressMessages(library(dplyr))
library(readr)

cur_folder <- getwd()
# Set the file path and name
loans_file <- paste(cur_folder,"Loans.csv",sep="/")
# Use read.csv function to read the content into a data frame
loans_tib <- read_csv(loans_file)
loans_tib
class(loans_tib)

# Use select function to list loan type and monthly payment

# Using pipes

# A number of alternative ways to select columns (see slide #11)

# Exclude the columns that end with 'name'


# ******************************************************************************
# Slide#06: Data Manipulation - filter Function
# ******************************************************************************
# Use filter function to show the mortgages

# Use filter function and %in% operator to show the car and other loans

# Show the loans with interest rate above 7%

# Show mortgage loans with interest rate above 7%

# Show mortgage loans with interest rate above 7% or 
# car loans with amounts under 30000


# Using variables to build logical expressions
selType <- "Car"


# Combine the select and filter functions


# ******************************************************************************
# Slide#07: Data Manipulation - mutate Function
# ******************************************************************************
# Use mutate function to calculate total payment column

# The new column can be immediately used in the same mutate call


# Use the assignment pipe operator %<>% from magrittr package to actually save 
# the changes to either the original data.frame/tibble or create a new one
library(magrittr)
loans2_tib <- loans_tib


loans2_tib

# ******************************************************************************
# Slide#08: Data Manipulation - other Functions
# ******************************************************************************
# Use summarize to calculate the variety of summaries on the numerical columns
# using the modified loan2 tibble

loans2_tib %>% summarize(AvgAmount=mean(amount), AvgRate=mean(intRate), 
                         MedianTerm=median(loanTerm), AvgMthPmt=mean(mthPmt),
                         SumTotPmt=sum(totPmt), AvgLoanConst=mean(loanConst))
# Use group_by and summarize to find the average monthly payments by loan type

# Use group_by and summarize to find the average amounts and monthly payments
# by city and loan type


# Use arrange function to sort by average monthly payment descending





detach("package:magrittr")
detach("package:readr")
detach("package:dplyr")
detach("package:plyr")