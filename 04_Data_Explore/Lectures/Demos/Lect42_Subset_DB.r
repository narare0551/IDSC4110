# ******************************************************************************
# *** Data Exploration: Student_Profile View ***********************************
# ******************************************************************************
cur_folder <- getwd()
# Load RSQLite package
library(RSQLite)
# Specify the SQLite driver
SQLite_driver <- dbDriver("SQLite")
# Connect to specific SQL database using the driver
db_file <- paste(cur_folder,"University.db",sep="/")
univ_conn <- dbConnect(SQLite_driver, db_file)
# List all the tables/views in the University database
dbListTables(univ_conn)
# List all the fields in the Student_Profile view
dbListFields(univ_conn, "Student_Profile")
student_df <- dbGetQuery(univ_conn, "SELECT * FROM Student_Profile")
student_df
str(student_df)

# 1. Create a data frame, named is_sr_df of information systems seniors 
# omitting those two columns and displaying the rest. Use with() function 
# to shorten the logical expressions.
is_sr_df <- 

is_sr_df

# 2. Use the order() function to sort the student data frame on GPS descending.


# 3. Use the which() and with() functions to get the row numbers of IS students with GPA
# either higher than or equal to 3.8 or lower than 3.0. Name the vector sel_stds and 
# create a data frame  named sel_stds_df of those students without the major column. 
# Use subset() for efficiency and display the results.
sel_stds <- 

sel_stds
sel_stds_df <- 
sel_stds_df

dbDisconnect(univ_conn)
detach("package:RSQLite")

# ******************************************************************************
# *** Data Exploration: Offering_Spring_2018 View ******************************
# ******************************************************************************
cur_folder <- getwd()
# Load RSQLite package
library(RSQLite)
# Specify the SQLite driver
SQLite_driver <- dbDriver("SQLite")
# Connect to specific SQL database using the driver
db_file <- paste(cur_folder,"University.db",sep="/")
univ_conn <- dbConnect(SQLite_driver, db_file)
# List all the tables/views in the University database
dbListTables(univ_conn)
# List all the fields in the Offering_Spring_2028 view
dbListFields(univ_conn, "Offering_Spring_2028")
offering_df <- dbGetQuery(univ_conn, "SELECT * FROM Offering_Spring_2028")
offering_df
str(offering_df)

# 4. Use the subset() function to create a data frame, named prog_db_df, of offerings 
# that contain the words programming or database in their course descriptions.
prog_db_df <- 

prog_db_df

# 5. Use startsWith() function to create a data frame named off_sr_is_df, of all 
# senior-level IS offerings and display the result.
off_sr_is_df <- 
off_sr_is_df

dbDisconnect(univ_conn)
detach("package:RSQLite")

# ******************************************************************************
# *** Data Exploration: Enrollment_Summary View ********************************
# ******************************************************************************
cur_folder <- getwd()
# Load RSQLite package
library(RSQLite)
# Specify the SQLite driver
SQLite_driver <- dbDriver("SQLite")
# Connect to specific SQL database using the driver
db_file <- paste(cur_folder,"University.db",sep="/")
univ_conn <- dbConnect(SQLite_driver, db_file)
# List all the tables/views in the University database
dbListTables(univ_conn)
# List all the fields in the Enrollment_Summary view
dbListFields(univ_conn, "Enrollment_Summary")
enroll_df <- dbGetQuery(univ_conn, "SELECT * FROM Enrollment_Summary")
enroll_df
str(enroll_df)

# 6. Use subset() function and %in% operator to create a data frame sel_enroll_df
# of offerings with either 2, 5 or 7 enrollments and display the result.
sel_enroll_df <- 
sel_enroll_df

dbDisconnect(univ_conn)
detach("package:RSQLite")
