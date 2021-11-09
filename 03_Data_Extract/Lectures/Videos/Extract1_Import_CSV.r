# ******************************************************************************
# *** Data Extraction: CSV and Excel Files *************************************
# ******************************************************************************

# ******************************************************************************
# Slide#3: CSV Files - Using read.csv function
# ******************************************************************************
# Get the working directory of the project with all the data files
cur_folder <- 
cur_folder
# Set the file path and name
loans_file <- 
# Use read.csv function to read the content into a data frame
loans_csv_df <- 
loans_csv_df
str(loans_csv_df)
# Convert loanDate to Date data type
loanDate_dt <- 

# Make loanType into a nominal factor
loanType_fac <- 

str(loans_csv_df)

# Given the variable n, create a data frame containing the n-th loan in 
# loan_n_df and display the result
n <- 20
loan_n_df <- 
loan_n_df

# Given the variable loan_id, the last name of the borrower in a variable
# borrower_last and display the result
loan_id <- 1030
borrower_last <- 
borrower_last

# ******************************************************************************
# Slide#4: CSV Files - Using read.table function
# ******************************************************************************
cur_folder <- getwd()
# Set the file path and name
loans_file <- paste(cur_folder,"Loans.csv",sep="/")
# Use read.table function to experiment with various parameters
loans_t1_df <- 
loans_t1_df
str(loans_t1_df)

# Given the vector variable sel_loans containing the record numbers (1, 2, ..., 25)
# of loans your manager is interested in, create a data frame with borrowers names
# as well as type of the loan and monthly payment in sel_loans_df and display the result
sel_loans <- c(9, 12, 14, 20)
sel_loans_df <- 
sel_loans_df

# We want the firstName, lastName and city as character vectors instead of factors, 
# data frame still needs loanDate as Date, so it's better to specify column data 
# types with the colClasses parameter
cur_folder <- getwd()
# Set the file path and name
loans_file <- paste(cur_folder,"Loans.csv",sep="/")
loans_t2_df <- 
  
loans_t2_df
str(loans_t2_df)  # Still need to convert the character to Date for loanDate

# Calculate the average monthly payment in avg_mth_pmt variable and display the result.
avg_mth_pmt <- mean(loans_t2_df$mthPmt)
avg_mth_pmt

# ******************************************************************************
# Slide#6: Excel Files - Using readxl package
# ******************************************************************************
cur_folder <- getwd()
# Install and load readxl package

invest_file <- paste(cur_folder, "InvestReturns.xlsx", sep="/")
invest_prices_tib <- 
invest_prices_tib
# Basic subsetting with row and column numbers
obs <- 
orig_prices_tib <- 
lead_prices_tib <- 
diff_prices_tib <- 
calc_return_tib <- 
invest_return_df <- 
head(invest_return_df)
