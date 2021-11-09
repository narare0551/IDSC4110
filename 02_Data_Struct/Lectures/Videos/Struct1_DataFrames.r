

# ******************************************************************************
# *** Introduction to R: Data Structures ***************************************
# ******************************************************************************

# ******************************************************************************
# Slide#4: Data Frames - Construction
# ******************************************************************************
# Create data frame of financial loans using interest rates and loan types
# as well as amounts borrowed, loan terms and monthly payment vectors
amount <- c(200000,150000,100000,25000,10000,200000,15000,25000,150000,475000)
intRate <- c(0.07,0.075,0.07,0.065,0.077,0.0625,0.065,0.0775,0.0575,0.0575)
loanTerm <- c(15,15,30,3,5,15,3,4,15,15)
loanType <- c('Mortg','Mortg','Mortg','Car','Car','Mortg','Other','Car','Mortg','Mortg')
mthPmt <- c(1787.23,1381.88,661.44,762.1,200.05,1705.96,457.26,603.5,1239.68,3925.64)
# Create a data frame using data.frame function on the provided vectors
loans_df <-data.frame(amount,intRate,loanTerm, loanType,mthPmt)
loans_df
summary(loans_df)
# Create a vector of column names
loan_col<-c("Amount","Rate","Term","Type","Payment")
names(loans_df)<-loan_col


# ******************************************************************************
# Slide#5: Data Frames - Basic Attributes
# ******************************************************************************
# Determine the size of the data frame

nrow(loans_df)
ncol(loans_df)
### Dimension 
dim(loans_df)

# Get the structure of the data frame
### Show the type of the column 
str(loans_df)
# Display some and all column names
names(loans_df)
names(loans_df)[c(2,4)]

# Show only the top and bottom portions of a large data frame
head(loans_df)
tail(loans_df,n=1)
# Print the basic summaries of the data in a data frame
summary(loans_df)

# ******************************************************************************
# Slide#6: Data Frames - Rows and Columns
# ******************************************************************************
# Accessing a single column of a data frame
loans_df$Amount
loans_df[,1]
class(loans_df$Amount)
# Notice difference in display, not obvious why
loans_df$Amount
loans_df[1]
class(loans_df$Amount)
class(loans_df[1])
class(loans_df[2])
is.data.frame(loans_df[2])

loans_df[,1]
class(loans_df[,1])
is.data.frame(loans_df[,-1])
is.vector(loans_df[,-1])
loans_df[1:10,1]
is.vector(loans_df[,-1])
is.vector(loans_df[1:10,1])


loans_df[,1]
loans_df[,-1]
class(loans_df[,-1])
# Accessing consecutive rows and a single column
#This will be a vector 
loans_df[4:7,2]
class(loans_df[4:7,2])
is.vector(loans_df[4:7,2])
#Drop False : will be data frame
loans_df[4:7,2,drop=FALSE]
class(loans_df[4:7,2,drop=FALSE])
is.vector(loans_df[4:7,2,drop=FALSE])
# Accessing nonconsecutive rows and all columns
loans_df[c(1,3,5)]
loans_df[c(1,3,5),] # Experiment with removing the comma
# Accessing columns using their names
loans_df[,c("Rate","Type")]
loans_df[c("Rate","Type")]			# Experiment with removing the comma

# ******************************************************************************
# Slide#7: Data Frames - Factor Columns
# ******************************************************************************
# Working with factor columns in a data frame
# The type of loan column is not a factor vector
loans_df["Type"]	
class(loans_df["Type"])		# data.frame column
loans_df[["Type"]]			# Double-brackets more used with lists
class(loans_df[["Type"]]	)			# character vector
# Parameter drop=FALSE assures data frame type

loans_df[,"Type"]
class(loans_df[,"Type"])

loans_df[,"Type",drop=FALSE]
class(loans_df[,"Type",drop=FALSE])
# Recreating the data frame with loan type as a factor column
loanTypeFactor<-as.factor(loanType)

loans_df2<-data.frame(amount,intRate,loanTerm,loanTypeFactor,mthPmt)
names(loans_df2)<-loan_col
loans_df2
class(loans_df2[,"Type"])

# ******************************************************************************
# Slide#8: Data Frames - Indicator Variables
# ******************************************************************************
# Creating indicator (dummy) variables based on different factor levels
model.matrix(~loanTypeFactor-1)
