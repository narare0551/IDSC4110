# ******************************************************************************
# *** Problem 01: United States Energy
# ******************************************************************************
# Original data source: https://www.kaggle.com/lislejoem/us_energy_census_gdp_10-14
# a) ***************************************************************************
# Get the current folder and set the file path and name
cur_fld <- 
us_energy_file <- 
# Read the US_Energy.csv file into us_energy_df data frame
# and display the structure of the data frame and the first few rows
us_energy_df <- 


# b) ***************************************************************************
# Calculate and add net exports (production minus consumption) to the data frame
# as NetExport variable
us_energy_df$NetExport <- 

# Store and display the names of the net exporting states in a vector
net_export_states <- 
net_export_states

# c) ***************************************************************************
# Calculate the fraction of GDP spent on energy (rounded to 2 decimals) and add to 
# the data frame as PctGDP variable
us_energy_df$PctGDP = 
# Display the state names where the fraction of GDP spent on energy is above 10%


# ******************************************************************************
# *** Problem 02: Order Entry Database
# ******************************************************************************
# Load RSQLite package
library(RSQLite)
# Specify the SQLite driver
cur_folder <- getwd()
SQLite_driver <- dbDriver("SQLite")
# # Connect to OrderEntry.db database using the driver
ord_entry_file <- paste(cur_folder,"OrderEntry.db",sep="/")
ord_entry_conn <- dbConnect(SQLite_driver, ord_entry_file)

# a) ***************************************************************************
# List all the tables and views in the database

# List all the columns from Sales view, representing total sales by customer
# for the month of January, 2030

# Select all the rows and columns from the Sales view
sql_str_cust_ords <- 
# Execute the query into cust_ords_df data frame, show the structure
# and display the entire data frame
cust_ords_df <- 


# b) ***************************************************************************
# In a single row data frame named top_cust_df, display the entire record of 
# the customer with the highest sales, stored in a variable named max_sales
max_sales <- 
top_cust_df <- 
top_cust_df

# Create a data frame, named bottom_qty_cust_df of customers who had a total 
# quantity ordered of less than 3
bottom_qty_cust_df <- 
bottom_qty_cust_df

dbDisconnect(ord_entry_conn)
detach("package:RSQLite")

