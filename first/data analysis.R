# Use built in datasets
# Use Tidyverse packages to
#   - select variables
#   - filter observations
#   - create a new variable
#   - create a summary
require(tidyverse)
data() #display list of datasets available in R
View(starwars)

#calculate body mass index for males and females
starwars %>% 
  select(gender, mass, height, species) %>% 
  filter( species == "Human") %>% 
  na.omit() %>% 
  mutate(height = height / 100) %>% 
  mutate(BMI = mass / height^2) %>% 
  group_by(gender) %>% 
  summarise(Average_BMI = mean(BMI))
