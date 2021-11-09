# ******************************************************************************
# *** Data Manipulation: Summarizing BigTen Data - dplyr Functions
# ******************************************************************************
cur_folder <- getwd()
big_ten_df <- paste(cur_folder, "BigTen.csv", sep="/")
big_ten_df <- read.csv(big_ten_df)

# Load dplyr package


# 1. Use pipes and select function to select school, region, World News ranking,
# as well as ACT and acceptance rate. Show only the moderately ranked schools
# with ACT over 27.
big_ten_df %>% 

# 2. Use pipes and filter function to select all schools in MDW with acceptance
# rate under 0.6 and then arrange them in descending order on their ACT scores.
# Keep only the school, ACT score and acceptance rate columns.
big_ten_df %>% 


# 3. Use group by and summarize to find the average ACT by World News ranking, as
# well as number of schools in each ranking category. Arrange the result descending 
# on the average ACT and show only those rankings with average ACT over 28.
big_ten_df %>% 


