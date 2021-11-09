# ******************************************************************************
# *** Data Extraction: HTML Tables and JSON Files ******************************
# ******************************************************************************

# ******************************************************************************
# Web Data - BigTen HTML tables
# ******************************************************************************
# 1. Install and load rvest package

big_ten_wiki <- 
class(big_ten_wiki)
big_ten_wiki

# 2. Create a list of all table nodes
big_ten_tbls <- 
class(big_ten_tbls)
length(big_ten_tbls)

# 3. Manually locate the list for the Men's sponsored sports by school


# 4. Extract the data into a data.frame
mens_sports_df <- 
# Remove the total column and totals row
mens_sports_df <- 
mens_sports_df

# Find the total number of men's school sponsored sports for Minnesota
MN_sports_tot <- 
MN_sports_tot

detach("package:rvest")

# ******************************************************************************
# Web Data - BigTen Sports JSON
# ******************************************************************************

cur_fld <- getwd()
big_ten_file <- paste(cur_fld,"BigTenSports.json",sep="/")

# 5. Read without simplifying the nested lists into vectors and data frames
big_ten_sports_lists <- 

# 6. List all the sports for Minnesota



# 7. What is the 7-th sport in the list of Minnesota sports


# ******************************************************************************
# 8. Read with simplifying the nested lists into vectors and data frames
big_ten_sports_df <- 
str(big_ten_sports_df)  # Shows 14 observations and 2 columns
# Each element of each column is actually a list.
# First one could be a simple vector of characters
class(big_ten_sports_df$School)
big_ten_sports_df$School
as.character(big_ten_sports_df$School)
# The second one should remain a list
class(big_ten_sports_df$Men_Sports)
big_ten_sports_df$Men_Sports

# 9. List all the sports for Minnesota

# Each list element is a vector



# 10. What is the 7-th sport in the vector of Minnesota sports


detach("package:jsonlite")