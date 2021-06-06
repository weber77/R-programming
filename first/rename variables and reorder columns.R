require(tidyverse)

#reorder
sw <- starwars %>% 
  select(name, mass, height, gender, everything())

# give variables different names
sw <- starwars %>% 
  select(name, mass, height, gender) %>% 
  rename(weight = mass) 
