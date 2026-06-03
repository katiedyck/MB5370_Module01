
# =============== MB5370 MODULE 1: INTRO TO PROGRAMMING =============== #
# Katie Dyck
# Student #14519544

# right-click file name above -> "Copy Path"
# Workspace: 

# ------------------------------------------------------------ #
# Load packages:
library(tidyverse)

# ------------------------------------------------------------ #
# WORKSHOP 01. INTRO ####

## ------ Getting Started ------ ####
# This section introduces us to R by using it as a simple calculator.

2 + 1
1:30
# 6 *
  # not complete - when you run this line, console asks you to unput a number after the asterisk

# 6 % 4  - doesn't work!
6 / 4



## ------ Variables and Assignment ------ ####
# This section focuses on understanding how data is stored in R and why that matters.

age <- 25
first_name <- 'Bill'

age
first_name

age + 1
age + age

# In R, you can’t use a number at the beginning of an object name and you can’t use some special symbols, including spaces.
# 01_age <- 25 # starts with a number
# !_age <- 25 # no special symbols
# age bob <- 25 # no spaces
Age <- 41 # cases matter

`age bob` <- 25 # no spaces, but with back ticks
# This is useful in some situations, however, it is better to use informative object names to make your code readable

# Run an algorithm:
25 + 15.1 + 20.25
x <- 30
25 + 15.1 + 20.25 + x



## ------ Functions ------ ####
# This section focuses on exploring built-in R functions

years_old <- 25.7
round(years_old)  # round up
floor(years_old)  # returns the largest integer not greater than elements of 'years_old'

years_old <- 25.765
round(years_old, digits = 2)

age <- 30
name <- "Katie"
paste(name, "is", age, "years old.", sep = " ")
paste(name, "is almost", age + 1, "years old.", sep = " ")



## ------ Debugging ------ ####
# Debugging is the process of finding and fixing errors in your code.

# Misconceptions
# variables don't work the same way as they do in spreadsheets

grade <- 55
total <- grade + 10
print(total)
grade <- 90
print(total)  # value of total in a spreadsheet would be 100, but here a variable holds the value it was assigned (65)
total <- grade + 10
print(total)

p <- 2
z <- 5
out <- p * z
print(out)

# debugging errors
# out <- p * a   # undefined variable 'a'
## > Error: object 'a' not found
out <- p * z

x <- 1
is.character(x)
is.integer(x)
is.numeric(x)
is.logical(x)

# my_quiz <- c("uno",
#              "dos",
#              "tres",
#              "cuatro"   # comma is missing!
#              "cinco")
# print(my_quis)   # spelling error
# str(my_quiz)
# len(my_quiz)   # len() not a function

my_quiz_fixed <- c("uno",
             "dos",
             "tres",
             "cuatro",
             "cinco")
print(my_quiz_fixed)
str(my_quiz_fixed)
length(my_quiz_fixed)



## ------ Data types ------ ####

my_numeric_variable <- 4.2
class(my_numeric_variable)
typeof(my_numeric_variable)
attributes(my_numeric_variable)
length(my_numeric_variable)



## ------ Data structures ------ ####

# A vector is a collection of elements that are most commonly of the type character, numeric, integer, logical.
y <- c(1,2,3)
class(y)
typeof(y)
z <- c("Sarah", "Tracy", "John")
class(z)
typeof(z)

# Values inside a list can be several different types.
x <- list(1, "A", TRUE)
x
class(x)
typeof(x)
length(x)
x[[2]]   # use square brackets to retrieve individual elements in a list



## ------ Data frames and tibbles ------ ####
# 2D or "rectangular" data files

my_dataframe <- data.frame(
  no = c(1,2,3),
  name = c("Tracey", "John", "Pete"),
  logical = c(TRUE, FALSE, TRUE)
)
my_dataframe
str(my_dataframe)

my_dataframe$no = as.factor(my_dataframe$no)
str(my_dataframe)



## ------ Packages and libraries ------ ####
# Using software that other people have written

# install.packages("ggplot2", "tidyr", "earthtones", "dplyr")
# library(ggplot2)



## ------ Coding best practices ------ ####

# To take a .csv file and turn it into a plot of the abundance of a single species:
#   1. read the .csv file dataset into R - read_csv()
#   2. view the dataset - e.g. str('dataset_name_here'), head('dataset_name_here'), glimpse('dataset_name_here')
#   3. identify which columns/variables you want to use to create the plot, and which plot type (geom_*()) you want to create
#   4. create your plot with ggplot() + geom_*()

