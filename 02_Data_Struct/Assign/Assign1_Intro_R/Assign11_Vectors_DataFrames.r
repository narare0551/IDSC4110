# ******************************************************************************
# *** Problem 01: Nine States Population Density
# ******************************************************************************
# Various data vectors for the top 9 states
top_states <- c('New York','California','Illinois','Texas','District of Columbia',
                'Pennsylvania','Florida','Massachusetts','Minnesota')
st_abbr <- c('NY','CA','IL','TX','DC','PA','FL','MA','MN')
# Land area in square miles
land_area <-c(47214,155959,55584,261797,68,44817,53927,7840,79610)
# 2010 census population
pop_2010 <-c(19378102,37253956,12830632,25145561,601723,
             12702379,18801310,6547629,5303925)

# a) ***************************************************************************
# Calculate and display the population density
###Density is population divided by area and round to 2 decimal points
pop_density <- round(pop_2010/land_area,2)

###Name each density with the state abbreviation 
names(pop_density) <- st_abbr

###Sort with descending order
pop_density <- sort(pop_density,decreasing = TRUE)

###Display
pop_density

# b) ***************************************************************************
# Calculate and display the percent for each state out of total area

###add all the land_area to calculate total area
tot_area=sum(land_area)

###divide each land aread by total area to calculate percentage and round to 1 decimal point
pct_area <- round(land_area/tot_area*100,1)
###name the percentage with each variable 
names(pct_area)<-st_abbr
pct_area <- sort(pct_area,decreasing=TRUE)



###Display 
pct_area



# ******************************************************************************
# *** Problem 02: Nine States Population Change
# ******************************************************************************
# 2020 census population
pop_2020<- c(20201249,39538223,12821508,29145505,689545,
             13002700,21538187,7029917,5706494)

# a) ***************************************************************************
# Creating the top sports states population data frame, naming 
# columns and displaying the data frame
top_states_pop_df <- data.frame(top_states,st_abbr,land_area,pop_2010,pop_2020)

tsp_names <- c("Name", "Abbr", "Area", "Pop2010", "Pop2020")
names(top_states_pop_df) <- tsp_names
top_states_pop_df

summary(top_states_pop_df)

# b) ***************************************************************************
# Add the population percentage change to the data frame
###population change= (x-y)/y*100


top_states_pop_df$PopPctChg <- round((pop_2020-pop_2010)/pop_2010*100,2)


top_states_pop_df




#-------
#Exam prep quiz Q4
# 
