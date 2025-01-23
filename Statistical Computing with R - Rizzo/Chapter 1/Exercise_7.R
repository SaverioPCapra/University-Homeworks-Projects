rm(list=ls()) 
library(tidyverse)

ggplot(mpg, aes(displ, hwy, color = drv))+
  geom_point()+
  facet_wrap(~  class)

# Comment: can this even be considered an exercise?

