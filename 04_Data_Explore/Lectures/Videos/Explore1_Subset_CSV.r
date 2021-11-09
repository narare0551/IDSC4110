# ******************************************************************************
# *** Data Exploration: Subsetting Vectors & Data Frames ***********************
# ******************************************************************************

# ******************************************************************************
# Slide#3: Data Exploration: Subsetting Data - Relational Operators
# ******************************************************************************
cur_folder <- getwd()
# Set the file path and name
loans_file <- paste(cur_folder,"Loans.csv",sep="/")
# Use read.csv function to read the content into a data frame
loans_df <- read.csv(loans_file)
# Convert loanDate to Date data type
loans_df$loanDate <- as.Date(loans_df$loanDate)
# Convert loanType to a nominal factor
loans_df$loanType <- as.factor(loans_df$loanType)
str(loans_df)
loans_df

# Subsetting by using [] to extract rows we want and omit columns we don't want
loans_mortg_df <- 
loans_mortg_df

# Subsetting by using [] to extract columns we want and omit rows we don't want
loans_no_Taos_df <- 
loans_no_Taos_df

# Subsetting by using [] and order() function to sort monthly payment descending
sort_mth_pmt <- 


# ******************************************************************************
# Slide#4: Data Exploration: Subsetting Data - Logical Operators
# ******************************************************************************
# Subsetting using [] and logical functions to extract rows and columns we want
# Select records made in either January or beyond April of 2030
loans_jan_apr_df <- 

loans_jan_apr_df

# Select records on Taos mortgage loans
loans_mortg_Taos_df <- 
loans_mortg_Taos_df

# Select records on mortgage loans that are either over 500,000 or under 200,000
loans_mortg_high_low_df <- 

loans_mortg_high_low_df

# ******************************************************************************
# Slide#5: Data Exploration: Subsetting Data - Summarizing
# ******************************************************************************
# Add a column to the data frame named totPmt, containing the total of all
# payments made throughout the life of the loan.
loans_df$totPmt <- 
loans_df
loans_df[c(6,11)]

# Calculate the average total payment and store it in avg_tot_pmt variable
# and display the result
avg_tot_pmt <- mean(loans_df$totPmt)
avg_tot_pmt

# Create a new data frame named above_avg_tot_pmt_df with loan ID, type, monthly and
# total payments and display the result.
above_avg_tot_pmt_df <- 
above_avg_tot_pmt_df