# ******************************************************************************
# *** Data Extraction: Databases ***********************************************
# ******************************************************************************

# ******************************************************************************
# Slide#9: Databases - Connectivity
# ******************************************************************************
cur_folder <- getwd()
# Install and load RSQLite package

# Specify the SQLite driver
SQLite_driver <- 
class(SQLite_driver)
# Connect to specific SQL database using the driver
db_file <- paste(cur_folder,"SportingGoods.db",sep="/")
sports_conn <- 
class(sports_conn)
# Disconnect from the database and detach RSQLite package


# ******************************************************************************
# Slide#10: Databases - Products Query
# ******************************************************************************
cur_folder <- getwd()
# Load RSQLite package
library(RSQLite)
# Specify the SQLite driver
SQLite_driver <- dbDriver("SQLite")
# Connect to specific SQL database using the driver
db_file <- paste(cur_folder,"SportingGoods.db",sep="/")
sports_conn <- dbConnect(SQLite_driver, db_file)
# List all the tables in the Sporting Goods database

# List all the fields in the Product table

# List product name, group and retail price
sql_str_prod <- 
prod_df <- 
str(prod_df)
head(prod_df)

# Given the variable n, store the product group of the nth product in a 
# variable named prd_grp_n and determine if it represents a missing value
n <- 2
prod_grp_n <- 
prod_grp_n


# You want to compare the hockey with snow sports gear. Create two data frames,
# hockey_df with all the records for hockey gear and snow_sports_df with all
# the records for snow sports gear. Hint (use row numbers). Display the results.
hockey_df <- 
hockey_df

# There are several snow sports related packages that are not classified 
# as snow sports gear, but we want to included them.
snow_sports_df <- 
snow_sports_df

# Compare the average prices for hockey vs. snow gear to determine which 
# sport is more affordable (with respect to equipment at least). Store the
# averages in hockey_avg_price and snow_sports_avg_price, respectively.
hockey_avg_price <- mean(hockey_df$RetailPrice)
hockey_avg_price
snow_sports_avg_price <- mean(snow_sports_df$RetailPrice)
snow_sports_avg_price

# Disconnect from the database and detach RSQLite package
dbDisconnect(sports_conn)
detach("package:RSQLite")

# ******************************************************************************
# Slide#11: Databases - Sales View
# ******************************************************************************
# List the CustomerID, first and last name, order date, product name and group
# quantity ordered and line item total using the already provided Sales view
cur_folder <- getwd()
# Install and load RSQLite package
library(RSQLite)
# Specify the SQLite driver
SQLite_driver <- dbDriver("SQLite")
# Connect to specific SQL database using the driver
db_file <- paste(cur_folder,"SportsSales.db",sep="/")
sports_conn <- dbConnect(SQLite_driver, db_file)
# List the tables which will list the Sales view as well
dbListTables(sports_conn)
# List all the columns in the Sales view
dbListFields(sports_conn, "Sales")
# Select all the rows and columns from the view
sql_str_sales <- 

# Run the query and display the resulting sales_df data frame
sales_df <- dbGetQuery(sports_conn, sql_str_sales)
str(sales_df)
head(sales_df)

# Given the customer ID n (between 100 and 406) find the number of orders and the total sales
# for that customer, store them in variables num_ords and cust_sales, and display the result.
n <- 100
num_ords <- 
num_ords
cust_sales <- 
cust_sales

# Disconnect from the database and detach RSQLite package
dbDisconnect(sports_conn)
detach("package:RSQLite")
