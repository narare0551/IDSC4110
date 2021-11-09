# ******************************************************************************
# *** Introduction to R: Lists and Arrays **************************************
# ******************************************************************************

# ******************************************************************************
# *** Exercise 01: BigTen Sports Lists 
# Use the provided vector data to create BigTen lists with school name, info on
# graduation and acceptance rates, last 5 years of enrollments and a list of 
# school sponsored men's sports, together with the count of sports. 
# https://en.wikipedia.org/wiki/Big_Ten_Conference#Sports
# The enrollment history must be a 2-column data frame with school years 2018-19 
# down to 2014-15. Make sure to adequately name all the list elements as well as 
# the data contained within the elements.
# ******************************************************************************
school <- c("Illinois","Indiana","Iowa","Maryland","Michigan","Michigan State",
            "Minnesota","Nebraska","Northwestern","Ohio State","Penn State",
            "Purdue","Rutgers","Wisconsin")
men_sports <- c("Baseball","Basketball","Cross Country","Football","Golf","Gymnastics",
                "Ice Hockey","Lacrosse","Soccer","Swimming & Diving","Tennis",
                "Track & Field (indoor)","Track & Field (outdoor)","Wrestling")
grad_rate <- c(0.85, 0.77, 0.74, 0.85, 0.92, 0.80, 0.80, 
               0.68, 0.94, 0.83, 0.85, 0.78, 0.80, 0.87)
accept <- c(0.62, 0.77, 0.83, 0.47, 0.23, 0.78, 0.52, 
            0.8, 0.08, 0.52, 0.56, 0.58, 0.6, 0.52)

# Data on last 5 years of total school enrollments
acd_years <- c("2018-19","2017-18","2016-17","2015-16","2014-15")
IL_enroll <- c(49702, 48216, 46951, 45842, 45140)
IN_enroll <- c(43503, 43710, 49695, 48514, 46416)
IA_enroll <- c(31656, 32166, 32011, 30844, 29970)
MD_enroll <- c(41200, 40521, 39083, 38140, 37610)
MI_enroll <- c(46716, 46002, 44718, 43651, 43625)
ST_enroll <- c(50351, 50019, 50340, 50538, 50081)
MN_enroll <- c(50734, 51848, 51579, 50678, 51147)
NE_enroll <- c(25820, 26079, 25897, 25260, 25006)
NW_enroll <- c(22127, 22008, 21823, 21655, 21554)
OH_enroll <- c(61170, 59837, 59482, 58663, 58322)
PA_enroll <- c(46810, 47119, 47789, 47307, 47040)
PD_enroll <- c(44474, 42699, 41513, 40472, 39752)
RG_enroll <- c(50254, 49577, 50146, 49428, 48378)
WI_enroll <- c(43463, 42977, 42582, 42716, 42598)

# Create the data frame of enrollments in all schools used 
# to build the Big Ten master list

### data frame more as a matrix 

enroll_df <- data.frame(IL_enroll, IN_enroll, IA_enroll, MD_enroll, MI_enroll, 
                    ST_enroll, MN_enroll, NE_enroll, NW_enroll, OH_enroll, 
                    PA_enroll, PD_enroll, RG_enroll, WI_enroll)
### why organized in this way? 
### row function
### Column represent attributes of the entities 





row.names(enroll_df) <- acd_years
enroll_df

# 1. Examine the enrollment data frame by accessing Minnesota's enrollment 
# for 2016-17 academic year.

enroll_df[3,7] 
#Alternatively we can use row and column name 
enroll_df["2016-17","MN_enroll"]
# Using row and column names

# ******************************************************************************
# Data on each of the Big Ten sports sponsored by the school
IL_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Gymnastics',
                   'Tennis','Track & Field (indoor)','Track & Field (outdoor)','Wrestling')
IN_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Soccer',
                   'Swimming & Diving','Tennis','Track & Field (indoor)',
                   'Track & Field (outdoor)','Wrestling')
IA_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Gymnastics',
                   'Swimming & Diving','Tennis','Track & Field (indoor)',
                   'Track & Field (outdoor)','Wrestling')
MD_men_sports <- c('Baseball','Basketball','Football','Golf','Lacrosse','Soccer',
                   'Track & Field (outdoor)','Wrestling')
MI_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Gymnastics',
                   'Ice Hockey','Lacrosse','Soccer','Swimming & Diving','Tennis',
                   'Track & Field (indoor)','Track & Field (outdoor)','Wrestling')
ST_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Ice Hockey',
                   'Soccer','Swimming & Diving','Tennis','Track & Field (indoor)',
                   'Track & Field (outdoor)','Wrestling')
MN_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Gymnastics',
                   'Ice Hockey','Swimming & Diving','Tennis','Track & Field (indoor)',
                   'Track & Field (outdoor)','Wrestling')
NE_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Gymnastics',
                   'Tennis','Track & Field (indoor)','Track & Field (outdoor)','Wrestling')
NW_men_sports <- c('Baseball','Basketball','Football','Golf','Soccer','Swimming & Diving',
                   'Tennis','Wrestling')
OH_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Gymnastics',
                   'Ice Hockey','Lacrosse','Soccer','Swimming & Diving','Tennis',
                   'Track & Field (indoor)','Track & Field (outdoor)','Wrestling')
PA_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Gymnastics',
                   'Ice Hockey','Lacrosse','Soccer','Swimming & Diving','Tennis',
                   'Track & Field (indoor)','Track & Field (outdoor)','Wrestling')
PD_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Swimming & Diving',
                   'Tennis','Track & Field (indoor)','Track & Field (outdoor)','Wrestling')
RG_men_sports <- c('Baseball','Basketball','Cross Country','Football','Golf','Lacrosse','Soccer',
                   'Track & Field (indoor)','Track & Field (outdoor)','Wrestling')
WI_men_sports <- c('Basketball','Cross Country','Football','Golf','Ice Hockey','Soccer',
                   'Swimming & Diving','Tennis','Track & Field (indoor)',
                   'Track & Field (outdoor)','Wrestling')

# Create the list of sports in all schools used to build the Big `Ten master list`
# Unlike the enrollment data frame, this cannot be a data frame, because different schools
# will have different sports and different number of sports.
men_sports_list <- list(IL_men_sports, IN_men_sports, IA_men_sports, MD_men_sports,
                        MI_men_sports, ST_men_sports, MN_men_sports, NE_men_sports,
                        NW_men_sports, OH_men_sports, PA_men_sports, PD_men_sports,
                        RG_men_sports, WI_men_sports)


class(men_sports_list)

# 2. Examine the men's sports list by accessing Minnesota's list (actually a vector) 
# of sports and then retrieve men's hockey.
men_sports_list[[7]]     # Again, the result is a vector
class(men_sports_list[[7]])    
men_sports_list[[7]][[7]]  # So, it is easy to retrieve men's ice hockey element
men_sports_list[[7]][7] 
#Vector is a list, vector has to have a same data type 

men_sports_list
# ******************************************************************************
# Build a master list of all Big Ten schools
big_ten_list <- list()
big_ten_list
#repeated 14 times 
for(i in 1:14){
  #School = give a name 'school
                        #Name of the school    School[7]: "Minnesota"
  big_ten_list[[i]] <- list(School=school[i], 
                            #grad=grad_rate[7], acpt=accept[7] : graduation rate and acceptance rate of Minnesota 
                            
                            Info=c(grad=grad_rate[i], acpt=accept[i]),
                            #Get me all the rows of the ith column 
                            Enrollment=enroll_df[,i],
                            #List of all the minnesota men's sorts
                            Men_Sports=men_sports_list[[i]], 
                            #Number of sports in minnesota 
                            Total_Sports=length(men_sports_list[[i]]))
  names(big_ten_list[[i]]$Enrollment) <- acd_years
  
}
big_ten_list
#Not jut about the sport 
big_ten_list
#How many school 
length(big_ten_list)
#We named it so we can use $  
#this is why it is beneficial to name it 

big_ten_list[[7]]$Info[]
big_ten_list[[7]]$Info[[2]]

#List of men's sport in minnesota 
big_ten_list[[7]]$Men_Sports[]
#7 element of the men sport is ice hockey 
big_ten_list[[7]]$Men_Sports[7]

# 3. Examine the master BigTen list by accessing all the Minnesota related elements.


# ******************************************************************************
# *** Exercise 02: Big Ten Enrollment Array
# Use the BigTen enrollment data for the 5 given academic years and broken 
# by the US World News ranking and the geographical region, to assemble a
# 3D enrollment array. The 3 rows of zero's represent the fact that there
# are no Northeast schools in Low, High or Top10 ranking categories.
# Use the array to retrieve the enrollment of highly ranked midwest schools
# in 2016-17 academic year.
# ******************************************************************************
sel_years <- c("2014-15","2015-16","2016-17","2017-18","2018-19")
us_rank <- c("Low","Mod","High","Top10")
sch_region <- c("MDW","NE")
enroll_array <- array(
  c(25006,	25260,	25897,	26079,	25820,     # Low-MDW
    275688,	279709,	284620,	280279,	281888,    # Mod-MDW
    131363,	132209,	134251,	137195,	139881,    # High-MDW
    21554,	21655,	21823,	22008,	22127,     # Top10-MDW
    0, 0,	0, 0,	0,
    133028,	134875,	137018,	137217,	138264,    # Mod-NE
    0, 0,	0, 0,	0,
    0, 0,	0, 0,	0
  ),
  #dimension 
  dim=c(5,4,2),
  #Why have to be list? 
  #Each elemen have different length 
  dimnames = list(sel_years, us_rank, sch_region)
)
enroll_array

# 4.What is the 2016-17 midwest enrollment of highly ranked schools? What is the 2016-17 midwest enrollment of highly ranked schools?


enroll_array[3,3,1]

enroll_array["2016-17","High","MDW"]


#5 What is th total midest enrollment of highly ranked schools?
#empty means all : all years 
enroll_array[,3,1]


enroll_array[,"High","MDW"]
sum(enroll_array[,3,1])


#What is the total 2016-17 midwest enrollment? 

enroll_array[3,,1]
enroll_array["2016-17",,"MDW"]
