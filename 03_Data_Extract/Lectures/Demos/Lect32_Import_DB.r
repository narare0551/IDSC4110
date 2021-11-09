# ******************************************************************************
# *** Data Extraction: Database Files ******************************************
# ******************************************************************************

# ******************************************************************************
# University Database - Student Query
# ******************************************************************************
cur_folder <- getwd()
# Load RSQLite package
library(RSQLite)
# Specify the SQLite driver
SQLite_driver <- dbDriver("SQLite")
# Connect to specific SQL database using the driver
db_file <- paste(cur_folder,"University.db",sep="/")
univ_conn <- dbConnect(SQLite_driver, db_file)

# 1. Review the contents of the database and select all the student info
# List all the tables and views in the University database

# List all the fields in the Student table

# List the student first and last name, as well as the major, class and GPA.
sql_str_std <- 
student_df <- 
student_df
str(student_df)

# 2. Create a new data frame of just IS students, named std_IS_df, and show the
# count and average GPA, stored in avg_IS_gpa variable, of those students
std_IS_df <- 
std_IS_df
avg_IS_gpa <- 
avg_IS_gpa

# 3. Create a data frame, named above_avg_df of all students with gpa higher than 
# the IS average. Include all students, not just IS majors
above_avg_df <- 
above_avg_df

dbDisconnect(univ_conn)
detach("package:RSQLite")

# ******************************************************************************
# University Database - Registrations View
# ******************************************************************************
cur_folder <- getwd()
# Load RSQLite package
library(RSQLite)
# Specify the SQLite driver
SQLite_driver <- dbDriver("SQLite")
# Connect to specific SQL database using the driver
db_file <- paste(cur_folder,"University.db",sep="/")
univ_conn <- dbConnect(SQLite_driver, db_file)

# 4. List all the tables in the database and fields in the Registrations view 
# and then select all the rows and columns from the Registrations view.


sql_str_reg <- 
enroll_df <- 
enroll_df
str(enroll_df)

# 5. Find the total enrollment in all sections of all IS courses
fst2 <- 


dbDisconnect(univ_conn)
detach("package:RSQLite")