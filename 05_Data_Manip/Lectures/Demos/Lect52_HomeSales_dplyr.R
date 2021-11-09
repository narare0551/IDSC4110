# ******************************************************************************
# *** Data Manipulation: Summarizing HomeSales Data - dplyr Functions
# ******************************************************************************
cur_folder <- getwd()
# Load readxl package
library(readxl)
home_sales_file <- paste(cur_folder, "HomeSales.xls", sep="/")
home_sales_tib <- read_excel(home_sales_file)
home_sales_tib
obs <- nrow(home_sales_tib)

# Load dplyr packages
library(dplyr)

# 1. Use pipes and select function to select all columns except OfferPending 
# and AnnualTax
home_sales_sel_tib <- 
home_sales_sel_tib
  
# 2. Use filter function to select all houses in NE sector on a corner lot
home_sales_sel_tib %>% 

# 3. We are interested in NE sector homes with more than 5 features, as well 
# as corner lot houses in excess of 2500 square feet.
home_sales_sel_tib %>% 

# 4. Use mutate function to calculate price per square foot and make it a 
# permanent part of the selected tibble.
home_sales_sel_tib %>% 

# 5. Use group by and summarize to find the average price by NESector
home_sales_sel_tib %>% 

# 6. Find the count of homes, average size and average price per square foot  
# by NE sector and corner lot, descending on average price per square foot.
home_sales_sel_tib %>% 

detach("package:dplyr")
detach("package:readxl")