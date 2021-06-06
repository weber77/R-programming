# Types of data
#  - Understand the five must important types of data
#  - Change the data type for a variable
#  - Add "levels" to a factor variable
people <- read.csv("people.csv")
str(people) # asking for structure of people, R tell us what it think each column contains as data type #NB numeric is continous variable e.g decimal numbers

#change data type
people$height <- as.factor(people$height)
levels(people$height) # check what R think of height lebel order

#set order of ordinal variable height
people$height <- factor(people$height,
                        level = c("Short", "Medium", "Tall"))

#logical variables . They actually vectors, which are collection of data of the same type
people$age # this is a vector of ages (collection of data of same type)

people$age > 23 # new logical vector variable

people$old <- people$age > 40
peoplesum(people$age > 30)
View(people)
class(people$old) # helps know type of a variable
