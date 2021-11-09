# ******************************************************************************
# *** Introduction to R: Vectors ***********************************************
# ******************************************************************************

# ******************************************************************************
# Slide#3: Vectors in R
# ******************************************************************************
# Vectors are created with a c (combine) function
# Create vector of interest rates on 10 loans
# 0.07, 0.075, 0.07, 0.065, 0.077, 0.0625, 0.065, 0.0775, 0.0575, 0.0575
#Indexed 1 through 10 
#No need to display one by one
rates <- c( 0.07, 0.075, 0.07, 0.065, 0.077, 0.0625, 0.065, 0.0775, 0.0575, 0.0575)
rates
# ******************************************************************************
# Slide#4: Vector operations - Algebraic operators
# ******************************************************************************
# Multiply vector by 100 to get rates as percentages
rates *100 
# Add 1% to each of the 10 rates
rates+0.01
# Adding two vectors of the same size
rate_inc<-1:10 
#modify the factor by dividing by 100 
rate_inc<-rate_inc/100
rates+rate_inc

# ******************************************************************************
# Slide#5: Vector operations - Careful when vectors are not of the same size
# ******************************************************************************
# Determine vector length


length(rates)
length(rates_rate_inc)
# Careful when vectors are not of the same length
rate_inc <- c(0, 0.01, 0.02)
length(rate_inc)
rates+rate_inc


# ******************************************************************************
# Slide#6: Vector operations - Logical operators
# ******************************************************************************
# See which loans are under 7%
rates <0.07

# Confirm all the loans experienced rate increase
rate_inc<-rep(1,10)
new_rates<-rates+rate_inc/100
new_rates>rates
#Summarize in one sentence
all(new_rates>rates)


# ******************************************************************************
# Slide#7: Vector operations - Logical (cont.) - Character vectors
# ******************************************************************************
# Confirm some loans experienced rate increase
rate_inc<-c(0,0.01)
new_rates<-rates+rate_inc/100
new_rates>rates
#Summarize in one sentence
any(new_rates>rates)
# An example of a character vector
#"Mortg", "Mortg", "Mortg", "Car", "Car", "Mortg", "Other", "Car", "Mortg", "Mortg"

loantype <-c("Mortg", "Mortg", "Mortg", "Car", "Car", "Mortg", "Other", "Car", "Mortg", "Mortg")
length(loantype)
#Mortg : 5character, Car : 3 character 
nchar(loantype)
# ******************************************************************************
# Slide#8: Vector Elements - Access methods and naming
# ******************************************************************************
# Accessing first 5 elements
rates[3]
#First five elements 
rates[1:5]

# Accessing just elements 1 and 5

#Typicaly done by combine function 
loantype[1:5]

loantype[c(1,5)]
# It can get weird, accessing just mortgage loan rates
### Can be substational 
#Define Logical Factor 
mortgType <-loantype=="Mortg"
mortgType
#Just get mortgs
loantype[mortgType]
#Get desired rates
rates[mortgType]
#average function 
#average of the 6 mortgs
mean(rates[mortgType])



# Using one vector to name another
### Vector naming 
### each of the 10 rates can be named with the type of the loan 
names(rates)<-loantype
rates

# ******************************************************************************
# Slide#9: Factor Vectors
# ******************************************************************************
# Factor vectors are categorical variables using in analytics all the time
loantypeFactor<-as.factor(loantype)
loantypeFactor


# Each of the 3 factors is represented by a unique integer
as.numeric(loantypeFactor)

# ******************************************************************************
# Slide#10: Missing Data - NA or Not Available
# ******************************************************************************
# There are 2 types of missing data in R
# NA stands for Not Available and truly represents missing data
# This data may (or may not) become available later
# The NA value simply becomes the value used in lieu of missing information
# Let's assume the 7th loan of type Other has missing interest rate and categorization
# 0.07, 0.075, 0.07, 0.065, 0.077, 0.0625, NA, 0.0775, 0.0575, 0.0575
rates<-c(0.07, 0.075, 0.07, 0.065, 0.077, 0.0625, NA, 0.0775, 0.0575, 0.0575)
rates

is.na(rates)
# at least one of the vector has NA here
any(is.na(rates))


loantype<-c("Mortg", "Mortg", "Mortg", "Car", "Car", "Mortg", NA, "Car", "Mortg", "Mortg")
loantype
###Check the NA is present or not. 
any(is.na(loantype))

#"Mortg", "Mortg", "Mortg", "Car", "Car", "Mortg", NA, "Car", "Mortg", "Mortg"



# ******************************************************************************
# Slide#11: Missing Data - NULL value
# ******************************************************************************
# On the other hand, NULL represents the absence of value
fv_ballon <-c(5000, NULL, 10000, 15000)

# null is not going to show on the vector
fv_ballon

is.null(fv_ballon)


# ******************************************************************************
# Slide#12: Using Pipes in R
# ******************************************************************************
# Pipes are a new way of calling functions in a more natural manner
# Install magrittr package first
#load 
library(magrittr)

# Traditional vs. piped function calls
### remove na from the calculation , because otherwise we will get NA as a mean 
mean(rates,na.rm=TRUE)

### specify data source 
### pipe that data soruce in to the function 
rates %>% mean(na.rm=TRUE)

# Nesting of functions is simpler and more efficient
sum(is.na(rates))
### only one is the true 

rates %>% is.na %>% sum

detach("package:magrittr")

