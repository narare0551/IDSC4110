# ******************************************************************************
# *** Problem 03: Top 10 Metro Sports
# ******************************************************************************
# Non-sports data to go into a data frame

CityMetro <- c('New York City','Los Angeles','Chicago',
               'San Francisco','Dallas-Fort Worth',
               'Washington, D.C.','Philadelphia',
               'Miamia-Fort Lauderdale','Boston',
               'Minneapolis-Saint Paul')
MetroAbbr <- c('NYC','LA','CHI','SF','DFW','DC','PHL','MFL','BOS','MSP')
Region <- c('NE','PAC','MDW','PAC','SW','NE','NE','SE','NE','MDW')
PopEst2016 <- c(20153634,13310447,9512999,6657982,7233323,
                6131977,6070500,6066387,4794447,3551036)
TV_Homes <- c(6824120,5145350,3256400,2364740,2563320,
              2351930,2758330,1642220,2302680,1697370)
# Sports data lists to go into the major league sports master list
NYC_ML_Sports <- list(c(Sport='Football',Team='Giants'),
                      c(Sport='Football',Team='Jets'),
                      c(Sport='Baseball',Team='Yankees'),
                      c(Sport='Baseball',Team='Mets'),
                      c(Sport='Basketball',Team='Knicks'),
                      c(Sport='Basketball',Team='Nets'),
                      c(Sport='Hockey',Team='Rangers'),
                      c(Sport='Hockey',Team='Islanders'),
                      c(Sport='Hockey',Team='Devils'),
                      c(Sport='Soccer',Team='Red Bulls'),
                      c(Sport='Soccer',Team='New York City FC'))
LA_ML_Sports <- list(c(Sport='Football',Team='Rams'),
                     c(Sport='Football',Team='Chargers'),
                     c(Sport='Baseball',Team='Dodgers'),
                     c(Sport='Baseball',Team='Angels'),
                     c(Sport='Basketball',Team='Lakers'),
                     c(Sport='Basketball',Team='Clippers'),
                     c(Sport='Hockey',Team='Kings'),
                     c(Sport='Hockey',Team='Ducks'),
                     c(Sport='Soccer',Team='Galaxy'),
                     c(Sport='Soccer',Team='Los Angeles FC'))
CHI_ML_Sports <- list(c(Sport='Football',Team='Bears'),
                      c(Sport='Baseball',Team='Cubs'),
                      c(Sport='Baseball',Team='White Sox'),
                      c(Sport='Basketball',Team='Bulls'),
                      c(Sport='Hockey',Team='Blackhawks'),
                      c(Sport='Soccer',Team='Fire'))
SF_ML_Sports <- list(c(Sport='Football',Team='49ers'),
                     c(Sport='Baseball',Team='Giants'),
                     c(Sport='Baseball',Team='Athletics'),
                     c(Sport='Basketball',Team='Warriors'),
                     c(Sport='Hockey',Team='Sharks'),
                     c(Sport='Soccer',Team='Earthquakes'))
DFW_ML_Sports <- list(c(Sport='Football',Team='Cowboys'),
                      c(Sport='Baseball',Team='Rangers'),
                      c(Sport='Basketball',Team='Mavericks'),
                      c(Sport='Hockey',Team='Stars'),
                      c(Sport='Soccer',Team='FC Dallas'))
DC_ML_Sports <- list(c(Sport='Football',Team='Redskins'),
                     c(Sport='Baseball',Team='Nationals'),
                     c(Sport='Basketball',Team='Wizards'),
                     c(Sport='Hockey',Team='Capitals'),
                     c(Sport='Soccer',Team='D.C. United'))
PHL_ML_Sports <- list(c(Sport='Football',Team='Eagles'),
                      c(Sport='Baseball',Team='Phillies'),
                      c(Sport='Basketball',Team='76ers'),
                      c(Sport='Hockey',Team='Flyers'),
                      c(Sport='Soccer',Team='Union'))
MFL_ML_Sports <- list(c(Sport='Football',Team='Dolphins'),
                      c(Sport='Baseball',Team='Marlins'),
                      c(Sport='Basketball',Team='Heat'),
                      c(Sport='Hockey',Team='Panthers'),
                      c(Sport='Soccer',Team='Inter Miami CF'))
BOS_ML_Sports <- list(c(Sport='Football',Team='Patriots'),
                      c(Sport='Baseball',Team='Red Sox'),
                      c(Sport='Basketball',Team='Celtics'),
                      c(Sport='Hockey',Team='Bruins'),
                      c(Sport='Soccer',Team='Revolution'))
MSP_ML_Sports <- list(c(Sport='Football',Team='Vikings'),
                      c(Sport='Baseball',Team='Twins'),
                      c(Sport='Basketball',Team='Timberwolves'),
                      c(Sport='Hockey',Team='Wild'),
                      c(Sport='Soccer',Team='United FC'))

# a) ***************************************************************************
# Create a data frame of non-sports data
Metro_Stats_DF <- data.frame(CityMetro,MetroAbbr,Region,PopEst2016,TV_Homes)

#MSP Row 
Metro_Stats_DF[10,]

# b) ***************************************************************************
# Create a master list of all major league sports from the top 10 metro areas
ML_Sports_List <- list(NYC_ML_Sports,LA_ML_Sports,CHI_ML_Sports,SF_ML_Sports,DFW_ML_Sports,DC_ML_Sports,PHL_ML_Sports,MFL_ML_Sports,BOS_ML_Sports,MSP_ML_Sports)
#Name of the local MSP Hockey Team 
ML_Sports_List[[10]][4]
# ******************************************************************************
# Using a for loop, run the uber-master list of all the provided non-sports info  
# and the master list of all major league sports for the top 10 metro areas. You
# must use the Metro_ML_Sports_List based referencing to produce the desired output.
Metro_ML_Sports_List <-list()
for(i in 1:10){
  Metro_ML_Sports_List[[i]] <- list(Stats=Metro_Stats_DF[i,],
                                    Sports=ML_Sports_List[[i]])
}

# c) ***************************************************************************
# List the MSP's population estimate and number of TV homes
Metro_ML_Sports_List[[10]]$Stats[c(4:5)]
# List the local hockey team
Metro_ML_Sports_List[[10]]$Sports[[4]]

# ******************************************************************************
# *** Problem 04: Top 10 Metro Array
# ******************************************************************************
# Use the top 10 sports metros population by 3 age groups (<35, 35-64, 65+) at
# two points in time: 1996 and 2008 by running the array shown below.
# *******************************************************************************
MetroAbbr <- c('NYC','LA','CHI','SF','DFW','DC','PHL','MFL','BOS','MSP')
age_groups <- c("Yng34","Mid35_64","Old65")
years <- c("2008","1996")
metro_age_array <- array(
  c(45.5, 49.9, 49, 43.5, 52.5, 47.3,	45.5, 42.3, 44.9, 47.9,    # Yng34-2008
    41.5,	39.4,	39.8,	43.9,	39.2,	42.6,	41.2,	40.9,	42.4,	42,    # Mid35_64-2008
    13.1,	10.9,	11.1,	12.6,	8.3, 10.1, 13.2, 16.7, 12.7, 10.2,   # Old65-2008
    48.6,	55.8,	52.3,	50.1,	54.7,	50.8,	49.2,	46.8,	49.6,	52.6,  # Yng34-1996 
    38,	33.9,	36.6,	38.2,	36.9,	38.8,	36.9,	36.3,	37.2,	37.7,    # Mid35_64-1966
    13.4,	10.2,	11.3,	11.7,	8.5, 10.3, 13.8, 16.9, 13.2, 9.7     # Old65-1996
    ),  
    dim=c(10,3,2),
    dimnames=list(MetroAbbr, age_groups, years)
)

# a) ***************************************************************************
# Display only the data for MSP metro
metro_age_array["MSP",,]


# b) ***************************************************************************
# Calculate the percent population differences for each 
# metro area and age group between 2008 and 1996


age_diff_ary <- (metro_age_array[,,"2008"] - metro_age_array[,,"1996"])
age_diff_ary


# c) ***************************************************************************
# Find the highest percent increase in the array
high_pct <- max(age_diff_ary)
high_pct
# Find the lowest percent decrease in the array
low_pct <-  min(age_diff_ary)
low_pct
