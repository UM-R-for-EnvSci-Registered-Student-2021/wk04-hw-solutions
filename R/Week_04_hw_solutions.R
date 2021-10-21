###########################################################################
######################      R for Env Sci - Week 04    ####################
######################             Homework            ####################
###########################################################################

## Let's start with a black slate - Let's re-start the R session
# CAREFUL!!! do it at your own risk!

# Ctrl + Shift + Fn + F10  (PC / Linux)
# Command + Shift + Fn+ F10 (Mac OS)


### Complete the following exercises, write each step in the steps provided



# Exercise 1 --------------------------------------------------------------

# create a factor vector with 5 elements belonging to 3 levels: "Treatment A", "Treatment B", "Treatment C"


factor_vector <- factor(c("Treatment B", "Treatment C", "Treatment B", "Treatment A", "Treatment B"), levels = c("Treatment A", "Treatment B", "Treatment C"))

factor_vector

# Take the previous version and add a 7th element belonging to "Treatment D" 


factor_vector_b <- factor(factor_vector, levels = c("Treatment A", "Treatment B", "Treatment C", "Treatment D")) # "Treatment D" doesnt exist as a factor yet, so first i need to add it

factor_vector_b[7] <- "Treatment D" # now you can add it (Notice it leaves the 6th possition as NA because we have not speciffied data for it)

factor_vector_b



# Exercise 2 --------------------------------------------------------------

# create a mock data set with the following variables with the following characteristics: 

# - "sample_id": A sequence of 100 numbers between 100 and 199

# - "parameter_1": One hundred random numbers taken from a normal distribution with a mean of 12 and an standard deviation of 2

# - "parameter_2": One hundred randomly sampled values that could take the value of "A" or "B"



mock_df <- data.frame(sample_id = seq(from = 100, to = 199, by = 1),                 
                      parameter_1 = rnorm(100, 12, 2),                                    
                      parameter_2 = sample(c("A", "B"), 100, replace = TRUE))      

mock_df


# Exercise 3 --------------------------------------------------------------

# Take the data set you created in the previous exercise and save it, as a .csv, in a folder called "data" within the R project folder

write.csv(mock_df, "data/example_data_set.csv",  # Relative path starting at our project folder. Convenient! and works for everyone!
          row.names = FALSE)  # "row.names = FALSE" prevents it from creating a new column of row names


# Exercise 4 --------------------------------------------------------------


# load the .csv file you just created into r. Give the object a new name to differentiate it from the previous one.

new_name_df <- read.csv("data/example_data_set.csv")

new_name_df
