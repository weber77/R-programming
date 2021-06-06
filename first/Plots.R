require(tidyverse)

data()
?msleep

View(msleep)
#Ploting single categorical variable gives a bar chat
# single numerical variable gives a histogram

names(msleep) # list of all variable in the data set msleep

 msleep %>% 
  drop_na(vore) %>% # drop na from: vores animal category per feeding mode : carnivores, insectivores, herbivores
                # you could live out the argument in drop_na() but R will exclude every row containing an NA. this 
                # is not good approximation of you data set. try it
  ggplot(aes(x = vore))+ # x and y axis
  # ggplot(aes(fct_infreq((vore))))+ #put in frequency order
  geom_bar(fill = "#97B3C6")+ #Bar chat is best for single categorical variable bcs we're counting
  # coord_flip() # to flip coordinate good for large number of variables in data set
  theme_bw()+ # theme black & white
  labs(x = "Vore",
       y = NULL,
       title = "Number of observations per order")
 
 msleep %>% 
   drop_na(vore) %>%
   ggplot(aes(awake))+
   geom_histogram(binwidth = 2, fill = "#97B3C6")+ #binwidth is observations that fit between ranges e.g 0-2
   theme_bw()+ 
   labs(x = "Vore",
        y = NULL,
        title = "Number of observations per order")
 