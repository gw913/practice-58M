# create dataset

df <- data.frame(x = rnorm(50, 16, 4), 
                 group = rep(c("group1", "group2"), each = 25))

install.packages("tidyverse")
library(tidyverse)

df %>% group_by(group) %>%
  summarise(mean = mean(x), 
            n = length(n),
            sd = sd(x))