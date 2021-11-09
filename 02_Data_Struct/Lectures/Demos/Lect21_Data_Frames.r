# ******************************************************************************
# *** Introduction to R: Data Frames *******************************************
# ******************************************************************************

# ******************************************************************************
# *** Exercise 01: Big Ten Data Frame Construction
# Create a Big Ten data frame using the following attributes, most of which can
# be found in the lecture file on vectors: school (short name of the university), 
# region (midwest or northeast), wn_rank (World News rank), grad_rate (graduation 
# rate), enroll (annual total enrollment given below), sat (SAT composite score), 
# act (ACT composite score), acceptance rate and hs_gpa (both given below as well).
# Name the data frame columns appropriately and show the size, structure, the
# first and last 5 schools, as well as the summary.
# Illinois  Indiana   Iowa    Maryland  Michigan  Michigan State Minnesota		
#  48216    43710     32166   40521     46002	      50019         51848
#   0.62    0.77      0.83    0.47	0.23	      0.78	     0.52	
#   3.79    3.62      3.61    3.75	3.82	      3.62	     3.75	
# Nebraska	Northwestern	Ohio State	Penn State  Purdue  Rutgers Wisconsin 
# 26079	        22008	        59837	      47119	    42699   49577   42977
# 0.8	        0.08	        0.52	      0.56	    0.58    0.6	    0.52
# 3.57	        3.92	        3.76	      3.59	    3.7	    3.3	    3.84 	        
# ******************************************************************************
school <- c("Illinois","Indiana","Iowa","Maryland","Michigan","Michigan State",
            "Minnesota","Nebraska","Northwestern","Ohio State","Penn State",
            "Purdue","Rutgers","Wisconsin")
region <- c("MDW","MDW","MDW","NE","MDW","MDW","MDW",
            "MDW","MDW","MDW","NE","MDW","NE","MDW")
wn_rank <- c("High","Mod","Mod","Mod","High","Mod","Mod",
             "Low","Top10","Mod","Mod","Mod","Mod","High")
grad_rate <- c(0.85, 0.77, 0.74, 0.85, 0.92, 0.80, 0.80, 
               0.68, 0.94, 0.83, 0.85, 0.78, 0.80, 0.87)
enroll <- c(48216, 43710, 32166, 40521, 46002, 50019, 51848,
            26079, 22008, 59837, 47119, 42699, 49577,42977)
sat <- c(1420, 1245, 1255, 1375, 1415, 1210, 1375,
         1240, 1490, 1355, 1250, 1265, 1295, 1365)
act <- c(29, 28, 25.5, 31, 31.5, 25.5, 28.5, 25.5, 
         33, 29, 27.5, 28, 27.5, 29)
accept <- c(0.62, 0.77, 0.83, 0.47, 0.23, 0.78, 0.52, 
            0.8, 0.08, 0.52, 0.56, 0.58, 0.6, 0.52)
hs_gpa <- c(3.79, 3.62, 3.61, 3.75, 3.82, 3.62, 3.75,
            3.57,3.92, 3.76, 3.59, 3.7, 3.75, 3.84)

# 1. Create Big Ten data frame
big_ten_df <- data.frame(school,region,wn_rank,grad_rate,
                         enroll,sat,act,accept,hs_gpa)
        
bt_df_names <- c("School", "Region","Rank", "GR_Rate",
                 "Enroll","SAT","ACT","Accept","HS_GPA")
names(big_ten_df) <- bt_df_names


# 2. Run dim, head, tail, str and summary functions
#Dim : Dimension 
#not really used because str include the information 
dim(big_ten_df)

#str includes information includes ; Data type, preview, dimension etc 
str(big_ten_df)
#Show top 4 of the data frame 
head(big_ten_df,n=4)
#Show the bottom 3 of the data frame 
tail(big_ten_df, n=3)
#summarize 
#with generic statistics
#more useful for numerical than character info 

summary(big_ten_df)


# ******************************************************************************
# *** Exercise 02: Big Ten Data Frame Access
# Pick a school, access and display its name, graduation rate and ACT score.
# Display the school column many different ways. For each display show the type 
# of the resulting object. Force the non-data frame objects into data frame type.
# Display school, enrollment, acceptance and high school GPA columns in a few
# different ways making sure you always have a data frame as a result.
# ******************************************************************************
# 3. Wisconsin with graduation rate and ACT score
###Manually finding
### This would hard to count manually in big data 
big_ten_df[14,c(1,4,7)]
###We can use the name of the variable instead 
###It is case sensitive
big_ten_df[14,c("School","GR_Rate","ACT")]

big_ten_df$School=="Wisconsin"
big_ten_df[big_ten_df$School=="Wisconsin",c(1,4,7)]


# Wisconsin and Minnesota with graduation rate and ACT score
big_ten_df[big_ten_df$School=="Wisconsin" |  big_ten_df$School=="Minnesota",c(1,4,7)]


#Assign the condition into the variable 
#Wisconsin and minnesota graduated act rate
#This will be our logical vector 
WI_MN_gr_rate_act<-big_ten_df$School=="Wisconsin" |  big_ten_df$School=="Minnesota"
big_ten_df[WI_MN_gr_rate_act,c(1,4,7)]

# School column displayed many different ways
### 4. Using numerical column reference
big_ten_df[1]
        
big_ten_df[1]     # Data frame
class(big_ten_df[1])
big_ten_df[,1]    # Character vector
class(big_ten_df[,1])

# 5. Using the given column name with $ and []

big_ten_df["School"]                      # Data frame

class(big_ten_df["School"])                        
big_ten_df[,"School"]                       # Character vector

class(big_ten_df[,"School"] )              # Character vector
class(big_ten_df$School )     

sch<-as.data.frame(big_ten_df$School)
sch
# 6. Displaying school, enrollment, acceptance and high school GPA

big_ten_df[c(1,5,8,9)]
data.frame(big_ten_df$School,big_ten_df$Enroll,big_ten_df$Accept, big_ten_df$HS_GPA)



#7 Add a column to the big_ten_df data frame, named quality, defined 
# as the average of normalized SAT & ACT scores, rounded to 2 decimals. 
### Using other code editors
big_ten_df$Quality <-round((big_ten_df$SAT/1600+big_ten_df$ACT/36)/2,2)
big_ten_df
