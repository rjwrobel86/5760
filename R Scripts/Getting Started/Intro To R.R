# The Basics of R

# Comments 
# Write notes to yourself and other users
# The "#" character allows you to write comments that are not treated as code 

# Finding and setting your "working directory"
# Find out the directory your files are stored in using getwd()
# Set a new working directory with setwd('PATH')
getwd()

# Basic arithmatic
200 + 70
150 - 10
210 * 7 
400 / 10
400 + 100 / 5
(400 + 100) / 5

# Comments again
1 + 1 # Comments can also come after commands

# Data types - A) Numeric, B) Character / String, C) Logical, D) Vectors, E) NA
# Checking class types: "class(x)"
class(4)
class(TRUE)
class('Hello World')
class('4')
class(NA)
#Date coming later

# "Equals" =/= "="
# By conventions "<-" is used instead of "=" in R.  I don't know why.

# Variables
var1 <- "Statistics"
var2 <- FALSE
var3 <- 4
var4 <- c(1,2,3)

# Vectors
# List of several elements typically of the same datatype
# Created by wrapping elements in "c()"
v <- c(1,2,3)
# Check type of data within vector using "typeof()"
typeof(v)
# Check the length of a vector with "length()"
length(v)
# Access elements within vector using VECTOR[NUMBER]
v[1]
# Vector with sequence of integers START:FINISH
v2 <- 1:5
# Vector with sequence by steps seq(START,FINISH,STEP)
v3 <- seq(1,10,0.25)

# Selecting Vector Elements
v2[5] #Get 5th element in sequence
v3[-5] #Get all elements except the 5th 
v3[4:10] #Get 4th through 10th elements in sequence
v3[c(1,3,5)] #Get elements 1, 3, and 5 of a sequence
# Create vector of unique values from first vector
vec <- c(1, 2, 4, 4, 5, 6, 7, 7, 10)
vec2 <- unique(vec)
vec2



# Conditionals
# For "if" statements, A) type "if" followed by a "condition" withing parentheses
# If the condition is True, the code below will execute, otherwise it will not.

if (TRUE) {
  print('I\'M TELLING THE TRUTH, I SWEAR')
}

# Escape Characters - Some characters are special to R.  To type the apostrophe, I had to show R I wasn't ending the statement by using a \ first.

# More Conditionals
#If / Else

if (TRUE) {
  print("True dat")
} else {
  print("Liar!")
}

# Comparison Operators
# >, <, >=, <=, ==, !=
# Statements evaluate as True or False
4 < 3 

# Logical Operators
# And = "&"
# Or = "|"
# Not = "!"

x <- 4
y <- 5

if (x == 4 & y == 5)
{
  print('That is true')
} else {
  print('That is not true at all')
}

x <- 4
y <- 5

if (x == 4 & y != 5)
{
  print('That is true')
} else {
  print('That is not true at all')
}

# Negation
a <- FALSE
print(!a)


# Misc mathematical operators
# sqrt() 
# floor()
# ceiling()
# log()
# exp()
# round()
# sum()

#DATE / TIME
# Get system time
Sys.time()
# Set variable dt to system time
dt <- Sys.time()
# Coerce string into date/time object using "as.Date(DATE)"
d1 <- as.Date("2017-12-27")
d1
# Coerce string with format
d2 <- as.Date("27-12-2017", format="%d-%m-%Y")
d2

# Create time series vector
dv = seq(as.Date("2017-12-27"), as.Date("2021-10-3"), by="days")
dv
# Declair existing data as time series
newlyTS <- ts(EXISTINGVECTOR, start = c(START,1), frequency = 12)

# Installing Packages / Libraries
# First install using "install.packages('X')
# Then load the package / library using "library(X)


# Other commands you kind of need
# summary(X) prints the summary statistics of data "X"
# head(X) prints the top 6 rows of data "X" or head(X,Y) for Y number of rows instead
summary(data)
head(data)


# Creating a dataframe from vectors
df <- data.frame(VEC1, VECi)
# Selecting specific columns from a dataframe
newframe <- select(data,LFP,WA)
# Selecting specific columns to omit from a dataframe
newframe2 <- select(data,-LFP)

# Filtering 
newframe3 <- filter(data,HW > 8) # Filter dataframe so it includes only observations where HW exceeds 8

# Create new dataframe from altered old columns using "transmute()"
newframe4 <- transmute(data, HW2 = HW*2)
summary(newframe4)

# Create new columns within an existing dataframe using "mutate()"
newframe5 <- mutate(data, HW2 = HW*2)
summary(newframe5)

# Importing data via command line
data <- read.table(FILE, header=TRUE, sep=",", na.rm=TRUE)

# Importing with readr
.....

# Exporting a CSV data file with readr
# Use "write_csv(YOURDATASETNAME, 'PATHTONEWFILE/NEWFILE.csv')

# Omitting rows with missing data 
# dataminusmissing <- na.omit(data)

# Subsetting
# Get columns "df[ , COLUMN#]"
df <- df[, 3]
# Get rows "df[ROW#, ]"
df <- df[2, ]
# Get specific element "df[ROW#, COLUMN#]"
# Get set of columns "df[ , 1:3]"
df[, 1:5]

# Loops
vector <- c()
for (i in 1:20) {
  vector <- c(vector, i)  
}
vector

vector <- c()
for (i in 1:20) {
  i = i * i
  vector <- c(vector, i)  
}
vector

#Apply 

#################################3
library(dplyr)

# Piping output as input to another function
# A %>% B takes the output of function A and uses it as the input of function B
data %>% summary() # Whole dataframe is summarized
data %>% head() %>% summary() # Just top 6 rows of dataframe are summarized











