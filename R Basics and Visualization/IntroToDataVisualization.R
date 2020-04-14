# Introduction to data visualization

library(dslabs)
data("murders")
head(murders)
names(murders)
ls()


x1<-heights$height
hist(x1)
# make bin size smaller
hist(x1,breaks=100)

# load the dataset
library(dslabs)
data(heights)

# make a table of category proportions
prop.table(table(heights$sex))


# apply function
x<-matrix(c(1:15),nrow=5,ncol=3)
x
apply(x,1,mean)


