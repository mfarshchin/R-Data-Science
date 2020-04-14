# Combinig data from different tables
# murder data 
library(tidyverse)
library(dslabs)
data(murders)
head(murders)

# electoral vote data
data(polls_us_election_2016)
head(results_us_election_2016)

# Note that order of data is not the same in these tables so:
identical(results_us_election_2016$state, murders$state)
# Use left_join (we will remove the others column and rename electoral_
# votes so that the tables fit on the page):
tab<-left_join(murders,results_us_election_2016,by='state')%>%
  select(-others)%>%rename(ev='electoral_votes')
head(tab)

library(ggrepel)
tab %>% ggplot(aes(population/10^6, ev, label = abb)) +
  geom_point() +
  geom_text_repel() + 
  scale_x_continuous(trans = "log2") +
  scale_y_continuous(trans = "log2") +
  geom_smooth(method = "lm", se = FALSE)



