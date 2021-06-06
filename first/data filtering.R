require(tidyverse)

ms <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(sleep_total > 18)

ms <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(!sleep_total > 18) # ! stands for not

#conjunction "&"
ms <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(order == "Primates" & bodywt > 18) # you can "," in place of "&"

#disjunction "|"
ms <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(order == "Primates" | bodywt > 18) # you can "," in place of "&"

ms <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(name == "Cow" |
           name == "Dog" |
           name == "Goat")


ms <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(name %in% c("Lion", "Dog", "Sheep"))

#Range 
ms <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(between(sleep_total, 18, 20))

#Approximation
ms <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(near(sleep_total, 18, tol = 3)) # tol stands for tolerance

# missing value
ms <- msleep %>% 
  select(name, conservation, sleep_total) %>% 
  filter(is.na(conservation))

# no missing value
ms <- msleep %>% 
  select(name, conservation, sleep_total) %>% 
  filter(!is.na(conservation)) # node the "!"