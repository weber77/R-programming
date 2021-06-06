age <- 29
height <- 1.65
sum(age,height)
plot(cars) #plot a dataframe

hist(cars$speed) # histogram of speed

#to user variables in a object without the "$"
attach(cars)
hist(dist)

#getting summaries
summary(cars)
summary(cars$speed)

class(cars)
class(cars$speed)


#getting lengths
length(cars)
length(cars$speed)

#unique values
unique(cars$speed)
tail(cars)
head(cars)

# read in range
cars[1:5, 1:2] # row, column

#creating a subframe
subframe <- cars[1:5, 1:2] # row, column


#help
?median

new_data <- c(2,234,4324,234, NA, 234)
median(new_data)

median(new_data, na.rm = TRUE)
