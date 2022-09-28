library(tidyverse)
load("rda/murders.rda") # reloads datasets written with save()

murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") + 
  # stat = "identity" leaves the data as it is
  coord_flip()
ggsave("figs/barplot.png") # saves a ggplot to a file
