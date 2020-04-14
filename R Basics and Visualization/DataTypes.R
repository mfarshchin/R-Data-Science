#Data types
library(dslabs)
data("murders")
class(murders)
str(murders)
head(murders)
names(murders)

#get the information about states
murders$state

# get the length of variables
pop<- murders$population
length(pop)

#categorical data
class(murders$region)
levels(murders$region)