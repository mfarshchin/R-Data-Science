#Assessment 1
#Q1
a<-2
b<--1
c<--4
(-b+sqrt(b^2-4*a*c))/(2*a)
(-b-sqrt(b^2-4*a*c))/(2*a)

#Q2
log(1024,base=4)

#Q3
library(dslabs)
data("movielens")
str(movielens)
class(movielens$title)
class(movielens$genres)

#Q4
levels(movielens$genres)
nlevels(movielens$genres)