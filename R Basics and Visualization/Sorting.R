# Sorting
library(dslabs)
data(murders)
sort(murders$total)

x<-c(31,4,15,92,65)
sort(x)

index<-order(x)
x[index]

index<-order(murders$total)
murders$state[index]

max(murders$total)
which.max(murders$total)

rank(x)