set.seed(1989) #if you are using R 3.5 or earlier
set.seed(1989, sample.kind="Rounding") #if you are using R 3.6 or later
library(HistData)
data("GaltonFamilies")

female_heights <- GaltonFamilies%>%     
  filter(gender == "female") %>%     
  group_by(family) %>%     
  sample_n(1) %>%     
  ungroup() %>%     
  select(mother, childHeight) %>%     
  rename(daughter = childHeight)

female_heights%>%summarize(mean(mother),mean(daughter),sd(mother),sd(daughter))
female_heights%>%summarize(cor(mother,daughter))

#regression line
# compute a regression line to predict the son's height from the father's height
mu_x <- mean(female_heights$mother)
mu_y <- mean(female_heights$daughter)
s_x <- sd(female_heights$mother)
s_y <- sd(female_heights$daughter)
r <- cor(female_heights$mother, female_heights$daughter)
m_1 <-  r * s_y / s_x
b_1 <- mu_y - m_1*mu_x

mu_y+r*(60-mu_x)/s_x*s_y
