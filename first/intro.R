my_data <- read.csv("yahoo.csv") # Comma separated value

#Function to read excel file in R
# view data
head(my_data)
tail(my_data)
View(my_data)

read.csv("new.csv")

# Extract components of your data frame
# Rows are observations
# Columns are variables
my_data[1,4] #[row, column]
my_data[ ,3] #entire column 3
my_data$Open #entire column by name

# Install and use packages
# Packages have pre-programmed functions that solve specific problems
# and expand the R vocabulary.
# you install once
install.packages("tidyverse")

# Include library
library("tidyverse") 
# Or require("tidyverse") # tidyverse includes packages like dplyr and ggplot2

# Take a look at your data
glimpse(my_data)


my_data %>%  #shift + cmd +m ... pipe into nextline
  select(Open, High, Low) %>%
  filter(Open < 40 & High > 30) %>% 
  arrange(Open)
  