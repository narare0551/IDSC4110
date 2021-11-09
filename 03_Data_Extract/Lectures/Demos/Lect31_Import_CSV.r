# ******************************************************************************
# *** Data Extraction: CSV and Excel Files *************************************
# ******************************************************************************

# ******************************************************************************
# CSV Files - Using read.csv function
# ******************************************************************************
# 1. Get the current working directory to verify that it is the project directory
# If not, adjust the path to the project folder where CSV and Excel files reside.
cur_folder <- 
# Set the file path and name
csv_file <- 
# Use read.csv function to read the content into a data frame
big_ten_df <- 
big_ten_df
str(big_ten_df)

# 2. Display the enrollment column
enroll <- 
enroll
# Use gsub to remove the commas
enroll <- 
enroll
# Use as.numeric to convert from chr to num
enroll <- 
enroll
# Replace the old enrollment column with the new one
big_ten_df$Enroll <- 
str(big_ten_df)

# 3. Given school name in sch_name variable, create a data frame named sch_stats_df
# showing the stats from graduation rates through high school GPA and display
# the result.
sch_name <- "Minnesota"
sch_stats_df <- 
sch_stats_df

# ******************************************************************************
# Excel Files - Using readxl package
# ******************************************************************************
cur_folder <- getwd()

# 4. Load readxl package and read from HomeSales.xls file

home_sales_file <- paste(cur_folder, "HomeSales.xls", sep="/")
home_sales_tib <- 
home_sales_tib
obs <- nrow(home_sales_tib)

# 5. Calculate new column in the home sales tibble called PPSQF
home_sales_tib$PPSQF <- 
home_sales_tib

detach("package:readxl")
