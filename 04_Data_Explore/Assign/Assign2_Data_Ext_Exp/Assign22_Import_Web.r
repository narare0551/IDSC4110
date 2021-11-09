# ******************************************************************************
# *** Problem 03: US Media Markets
# ******************************************************************************
# Nielsen DMA Rankings; DMA = Designated Market Areas
library(rvest)
dma_rank_web <- read_html("https://mediatracks.com/resources/nielsen-dma-rankings-2020/")
dma_rank_web
dma_rank_tbls <- html_nodes(dma_rank_web, 'table')
length(dma_rank_tbls)
dma_rank_df <- html_table(dma_rank_tbls[[1]], header=TRUE)

# a) ***************************************************************************
# There is a single table on the page, read it into a dma_rank_df data frame, remove
# the rank column and total row and rename the column headers as DMA, TV_Homes, and PCT_US
dma_rank_df <- 
names(dma_rank_df) <- c("DMA","TV_Homes","PCT_US")
str(dma_rank_df)
head(dma_rank_df)
# Convert TV_Homes character to numerical column
dma_rank_df$TV_Homes <- as.numeric(gsub(",", "", dma_rank_df$TV_Homes))
str(dma_rank_df)
head(dma_rank_df)

# b) ***************************************************************************
# List the top part of the data frame where number of TV homes is higher 
# than its average. Roughly the top quarter (or 57 to be precise) out of 210 
# DMA's have the number of TV homes higher than the average. This should 
# cover the 41 US metro areas with all major league sports we explore in the
# next problem.
avg_TV_homes <- 

detach("package:rvest")

# ******************************************************************************
# *** Problem 04: Minneapolis Weather
# ******************************************************************************
library(jsonlite)
cur_fld <- getwd()
minn_file <- paste(cur_fld,"MSP_Weather.json",sep="/")
# a) ***************************************************************************
# Read the data from the file and locate the portion of the relevant data frame
# naming it minn_df. Display the structure and header for examination.
minn_all <- 
minn_df <- 
class(minn_df)
str(minn_df)
head(minn_df)

# b) ***************************************************************************
# Using minn_df data frame, and given the cloud_cover variable, calculate the 
# number of days with the specified cloud cover. Store your result in a variable 
# named num_days.
cloud_cover <- 40
num_days <- 
num_days

# c) ***************************************************************************
# Find all temperature observations (in degrees Fahrenheit) for records with
# the specified cloud cover. Store your result in a vector variable named temp_obs.
# The Kelvin to Fahrenheit conversion formula: F = (K - 273.15) * (9/5) + 32
temp_K <-
temp_F <- 
temp_F

detach("package:jsonlite")