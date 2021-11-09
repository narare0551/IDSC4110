# ******************************************************************************
# *** Introduction to R: Variables and Data Types ******************************
# ******************************************************************************

# ******************************************************************************
# Slide#7: R Statements
# ******************************************************************************
# Principle is $15,000, interest rate is 5%, term is 5 years


# ******************************************************************************
# Slide#8: Numeric Data Types
# ******************************************************************************
#Assign financial values to numeric input variables


rate<-0.05


# Creating a formula and assigning the result to the numeric output variable

term<-5L
princ<-15000
# Displaying the value of the output variable


# ******************************************************************************
# Slide#9: Character Data Type
# ******************************************************************************
# Create a character output message variable

pmt_msg<-"Your monthly payment is"
class(pmt_msg)

# As a character variable, the message has a length

nchar(pmt_msg)
# Other useful character functions
substr(pmt_msg,start = 14,stop = 20)
substr(pmt_msg,14,20)
# Displaying the message and the value of the monthly payment

paste(pmt_msg,288,sep = " ")
# ******************************************************************************
# Slide#10: Dates Data Types
# ******************************************************************************
# The first payment date will be due on 5/10/2030

#Changed from the character to Date
fst_pmt_dt<-as.Date("2030-05-10")

# The first payment is of Date data type
class(fst_pmt_dt)
# The actual value is number of days since 1/1/1970
as.numeric(fst_pmt_dt)
# The actual payment was made on 5/2/2030 
#actual payment datetime
#Looks like string but it is a number 
act_pmt_dtm<-as.POSIXct("2030-05-02 10:34:52")

# The actual payment date/time is of POSIXct data type

class(act_pmt_dtm)

# The actual value is number of seconds since 1/1/1970
as.numeric(act_pmt_dtm)

# ******************************************************************************
# Slide#11: Logical Data Type
# ******************************************************************************
# Logical data type has only 2 values: TRUE or FALSE

pmt_made<-TRUE
is.logical(pmt_made)
class(pmt_made)
typeof(pmt_made)
# Logical data is used with relational operators


act_pmt<-250
act_pmt
# Logical data is used with logical operators



# ******************************************************************************
# Slide#12: R Packages
# ******************************************************************************
# Loading optiRum package previously installed

library(optiRum)
# Using PMT function with our parameters

pmt_fuc <-  -PMT(rate/12,term*12,princ)
pmt_fuc


detach("package:optiRum")
