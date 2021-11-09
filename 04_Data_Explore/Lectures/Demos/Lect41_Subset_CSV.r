# ******************************************************************************
# *** Data Exploration: Subsetting BigTen Data *********************************
# ******************************************************************************
cur_folder <- getwd()
# Set the file path and name
csv_file <- paste(cur_folder,"BigTen.csv",sep="/")
# Use read.csv function to read the content into a data frame
big_ten_df <- read.csv(csv_file)
str(big_ten_df)
big_ten_df

# 1. Create a data frame, named high_grad_rate_df, of Big Ten schools with graduation
# rate of 0.8 or higher. Omit the last 4 columns (SAT through HS_GPA) and show
# the result.
high_grad_rate_df <- 
high_grad_rate_df

# 2. Use order() function to sort Big Ten data frame on acceptance rate ascending.


# 3. Create a data frame, named mdw_mod_df, of Big Ten schools in midwest region with
# moderate Word News ranking. Use with() function to shorten the coding of
# the logical conditions, keep the school name and numerical columns and display 
# the result.
mdw_mod_df <- 
mdw_mod_df

# 4. Find the median ACT score and store it in median_act variable. Then create a data
# frame above_median_df to show all the schools above the median ACT. Use which()
# and with() function to generate the row numbers of the resulting data frame.
median_act <- 
median_act
above_median <- 
above_median
above_median_df <- 
above_median_df

# ******************************************************************************
# *** Data Exploration: Subsetting HomeSales Data ******************************
# ******************************************************************************
cur_folder <- getwd()
# Load readxl package
library(readxl)
home_sales_file <- paste(cur_folder, "HomeSales.xls", sep="/")
home_sales_tib <- read_excel(home_sales_file)
home_sales_tib
obs <- nrow(home_sales_tib)

# 5. Calculate new column in the home sales tibble called PPSQF
home_sales_tib$PPSQF <- 
home_sales_tib
# To print the entire tibble, us as.data.frame(home_sales_tib)

# 6. Create a data frame (tibble), named ne_corner_tib with all the houses in NE sector 
# on the corner lot. Keep all the numerical variables only and display the result.
# Use subset() function for more efficient coding.
ne_corner_tib <- 

ne_corner_tib

# 7. Create a data frame (tibble), named ne_ppsqf_tib, with all the houses in NE sector
# with price per square foot either 85 and above or 60 and below. Use the with()
# function to shorten the logical expressions and display the result.
ne_ppsqf_tib <- 

ne_ppsqf_tib

# 8. Are the corner houses more expensive on average? Use which() function to find 
# all the row numbers for both the corner houses in corner_yes vector and those
# not on the corner in corner_no vector. Use the vectors to calculate and store
# average price of the corner houses in avg_price_corner_yes and those not on
# the corner in avg_price_corner_no and display all the results.
corner_yes <- 
corner_yes
corner_no <- 
corner_no
avg_price_corner_yes <- 
avg_price_corner_yes
avg_price_corner_no <- 
avg_price_corner_no

detach("package:readxl")