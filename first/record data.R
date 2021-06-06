require(tidyverse)

sw <- starwars %>% 
  select(name, height, mass, gender) %>% 
  rename(weight  = mass) %>% 
  na.omit() %>% 
  mutate( height = height / 100) %>%  # can be used to create a new variable or change an existing variable
  # filter(gender == "masculine" | gender == "feminine")
  filter(gender %in% c("feminine", "masculine")) %>% 
  mutate(gender = recode(gender ,
                         masculine = "m",
                         feminine = "f")) %>% 
  mutate(size = height >1 & weight > 75,
         size = if_else(size == TRUE, "big", "small"))
