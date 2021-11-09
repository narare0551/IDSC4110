# ******************************************************************************
# *** Introduction to R: Data Structures ***************************************
# ******************************************************************************

# ******************************************************************************
# Slide#5: Lists - Construction
# ******************************************************************************
# Simple variables
tgt_tic <- "TGT"
tgt_pr <- 256.57
# Vector data
tgt_vec <- c("Target Corporation", "Minneapolis")
names(tgt_vec) <- c("Company", "Headquarters")
# Data frame
tgt_df <- data.frame(c("6M", "1Y", "5Y"),c(183.58, 125.88, 70.19))
names(tgt_df) <- c("Period", "Price")

# List construction
### 
tgt_list<-list(Ticker=tgt_tic,Price=tgt_pr,Info=tgt_vec,HistPrice=tgt_df)
# Size of the list
length(tgt_list)

# Access individual list elements [] vs. [[]]
# [[]] returns data frame object
tgt_list[[4]]

# First row, second column are TGT price 6M ago

# More intuitive way is to use the column names
tgt_list[[4]]$Price
tgt_list[[4]]$Price[1]

# ******************************************************************************
# Slide#6: Lists - Accessing Elements
# ******************************************************************************
# Access individual list elements [] vs. [[]]
# [] returns list object
tgt_list[4]
# Data frame treated as 1-element list
class(tgt_list[4])
class(tgt_list[4][1])

# Go back to double-bracketing [[]]
tgt_list[4][1]
class(tgt_list[4][1])
tgt_list[4][[1]]		# Back to being a data frame
class(tgt_list[4][[1]])		# Back to being a data frame


tgt_list[4][[1]][1,2]		# How is this for confusing?

# If you have to use single-bracketing [] 
# better to complement with names
tgt_list[4][1]$HistPrice
class(tgt_list[4][1]$HistPrice)
tgt_list[4][1]$HistPrice$Price[1]


# ******************************************************************************
# Slide#7: Lists - Containment
# ******************************************************************************

amzn_list <- list(Ticker="AMZN", Price=3595.52, Pr5Y=769.16)
tgt_list<-list(Ticker=tgt_tic,Price=tgt_pr,Info=tgt_vec,HistPrice=tgt_df,Compete=amzn_list)


tgt_list
# Access Amazon info through Target list
# Second element of Amazon sublist is the price
tgt_list[[5]][2]
tgt_list[[5]]$Price
tgt_list$Compete$Price
# Access TGT and AMZN prices now and 5Y ago starting with tgt_list
tgt_now <- tgt_list$Price
tgt_5Y <- tgt_list$HistPrice$Price[3]
amzn_now <- tgt_list$Compete$Price
amzn_5Y <- tgt_list$Compete$Pr5Y

# Compare the return over the 5 years
tgt_return = (tgt_now - tgt_5Y) / tgt_5Y
amzn_return = (amzn_now - amzn_5Y) / amzn_5Y
compare_return <- c(tgt_return, amzn_return)
compare_return

# ******************************************************************************
# Slide#8: Arrays - Construction & Access
# ******************************************************************************
# Three-dimensional array of stores by region, size and company
# 3D array is filled by traversing the 1st dim, then 2nd and finally 3rd
region <- c("Northeast","South","Midwest","Southwest","West")
size <- c("Small","Medium","Large")
company <- c("BBY","TGT")
stores_array<-array(
  c(52,68,70,51,70,       # Small BBY
    74,76,65,57,51,       # Medium BBY
    59,98,83,38,15,       # Large BBY
    93,75,87,95,66,       # Small TGT
    82,65,75,72,61,       # Medium TGT
    128,261,266,53,307),  # Large TGT
  dim=c(5,3,2),   #vector 
  dimnames = list(region,size,company)
)

stores_array
stores_array[2,3,1] # South Large Best buy 
