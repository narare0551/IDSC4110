# ******************************************************************************
# *** Data Exploration: Subsetting Vectors & Data Frames ***********************
# ******************************************************************************

# ******************************************************************************
# Slide#7: Data Exploration: Using Product_Groups View
# ******************************************************************************
cur_folder <- getwd()
# Load RSQLite package
library(RSQLite)
# Specify the SQLite driver
SQLite_driver <- dbDriver("SQLite")
# Connect to specific SQL database using the driver
db_file <- paste(cur_folder,"SportingGoods.db",sep="/")
sports_conn <- dbConnect(SQLite_driver, db_file)
# List all the tables to see the Product_Groups view
dbListTables(sports_conn)
dbListFields(sports_conn, "Product_Groups")
# List all the rows and columns from the Product_Groups view
prod_df <- dbGetQuery(sports_conn, "SELECT * FROM Product_Groups")
str(prod_df)
head(prod_df)

# Create a new data frame of just the inventory products, those with a designated 
# product group, named prod_inv_df, and find the number of those products
na_prod_groups <- 
na_prod_groups
prod_inv_df <- 
str(prod_inv_df)
head(prod_inv_df)

# For the inventory products, find the average retail price and store it 
# in a variable named avg_retail_price
avg_retail_price <- mean(prod_inv_df$RetailPrice)
avg_retail_price

# Create a new data frame named prod_above_avg_df showing all inventory products
# whose retail prices are above average and show the count of those products
prod_above_avg_df <- 
prod_above_avg_df


# ******************************************************************************
# Slide#8: Data Exploration: Retail_Customers View
# ******************************************************************************
# List the columns of Retail_Customers view
dbListFields(sports_conn, "Retail_Customers")
# List all the rows and columns from the Retail_Customers view
cust_df <- dbGetQuery(sports_conn, "SELECT * FROM Retail_Customers")
str(cust_df)
head(cust_df)

# Given gender, age_low and age_high, use subset function to create a data 
# frame named cust_F_age_df of first and last names, as well as ages of customers 
# within the given age bracket and display the count of those customers
gender <- "F"
age_low <- 40
age_high <- 45
cust_F_age_df <- 

cust_F_age_df


# Create a new data frame with customer names, city, state, zip and phone for the
# customers from the given mid-western states and display the count of those customers
mw_states <- c("MN","WI","ND","SD","IA")
cust_mw_states_df <- 
cust_mw_states_df


# ******************************************************************************
# Slide#9: Data Exploration: Employee_Orders View
# ******************************************************************************
# List all the files of the Employee_Orders view
dbListFields(sports_conn, "Employee_Orders")
# List all the rows and columns from the Product_Groups view
empl_df <- dbGetQuery(sports_conn, "SELECT * FROM Employee_Orders")
str(empl_df)
head(empl_df)
max(empl_df$NumOrds)

# Use which() function to find the row numbers of employees with 10 or 20 orders taken 
# and store them in a vector empl_low_ords. Repeat the same for the employees with over 30 
# orders taken in a vector empl_high_ords. Use the vectors to calculate the average salary
# of those employees and store in avg_sal_low and avg_sal_high variables.
empl_low_ords <- 
empl_low_ords
empl_high_ords <- 
empl_high_ords
avg_sal_low <- 
avg_sal_low
avg_sal_high <- 
avg_sal_high

# ******************************************************************************
# Slide#10: Data Exploration: Customer_Sales
# ******************************************************************************
# List all the fields of the Customer_Sales view
dbListFields(sports_conn, "Customer_Sales")
# List all the rows and columns from the Product_Groups view
sales_df <- dbGetQuery(sports_conn, "SELECT * FROM Customer_Sales")
str(sales_df)
head(sales_df)

# Given the product name, calculate the total quantity and sales for the product
prod_name <- "Hockey Stick"
prod_sold <- 
prod_sold
prod_tot_qty <- 
prod_tot_qty
prod_tot_sales <- 
prod_tot_sales

# Given the customer number, calculate the total sales for the customer and 
# create a vector of all the products ordered by that customer
cust_id <- 100
cust_sold <- 
cust_sold
sum(cust_sold)  # Confirms only 5 TRUE values
cust_tot_sales <- 
cust_tot_sales
cust_prod_ords <- 
cust_prod_ords

dbDisconnect(sports_conn)
detach("package:RSQLite")