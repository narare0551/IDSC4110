# ******************************************************************************
# *** Data Extraction: Web Data ***********************************************
# ******************************************************************************

# ******************************************************************************
# Slide#13: Web Data - HTML
# ******************************************************************************
library(XML)
bby_stats_url <- "https://finance.yahoo.com/quote/BBY/key-statistics?p=BBY"
bby_stats_web <- 
bby_stats_html <- 
class(bby_stats_html)
bby_table_nodes <- 
class(bby_table_nodes) # All the <table> nodes are an XMLNodeSet
length(bby_table_nodes) # There are 10 HTML tables in the set
# Read HTML tables
bby_val_meas <- 
bby_val_meas
bby_price_hist <- readHTMLTable(bby_table_nodes[[2]])
bby_price_hist
bby_share_stats <- readHTMLTable(bby_table_nodes[[3]])
bby_share_stats
# The order of HTML tables continues with Dividends at 4,
# then up-left to Fiscal Year at 5, Profitability at 6, the
# Management Effectiveness at 7
bby_income_stat <- readHTMLTable(bby_table_nodes[[8]])
bby_income_stat
bby_bal_sheet <- readHTMLTable(bby_table_nodes[[9]])
bby_bal_sheet
# The 10th and last table is the cash flow statement
# Show BBY's total revenue, net income and total debt

net_inc <- 
net_inc <- 
tot_dbt <- 
tot_dbt <- 
# Calculate debt to income ratio
dbt_inc_ratio <- 
detach("package:XML")

# ******************************************************************************
# Slide#15: Web Data - JSON
# ******************************************************************************
# Used Target financial information from Struct2_Lists_Arrays.r with similar 
# Best Buy info and combine them into a master financial list. The list is 
# then written into a JSON file, which displays a much better structure than the
# R list itself. The writing part is just a demo to get a simple JSON file and
# is NOT shown below. Instead, the file is provided and we read the it to shown
# how to analyze existing JSON files.

library(jsonlite)
cur_fld <- getwd()
fin_list_file <- paste(cur_fld,"FinancialList.json",sep="/")
# Write JSON file to display a more readable structure when compared to the R list
# write_json(fin_list, fin_list_file, pretty=TRUE)

# Immediately read the same file right back into R in two ways discussed below
# Read without simplifying the nested lists into vectors and data frames
financial_list <- 

# There are 2 elements in the list: TGT and BBY
length(financial_list)

# List all the Best Buy historical prices
             # An awkward looking list
# Show Best Buy's price 5 years ago
            # Still a list


# Read with simplifying the nested lists into vectors and data frames
financial_df <- 
str(financial_df)  # Data frame with 2 observations and 4 variables
                   # Vector with just one element (so a variable)
                   # Vector with 2 elements, company name and headquarters
                   # Data frame with 3 observations and 2 variables
                   # Price 5 years ago

detach("package:jsonlite")