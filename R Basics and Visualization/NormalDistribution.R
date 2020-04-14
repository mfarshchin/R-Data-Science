#Normal Distribution

library(dslabs)
ls()
data("heights")
head(heights)
index<-heights$sex=="Male"
index
MaleHeights<-heights$height[index]
MaleHeights
# Calculate mean
m<-mean(MaleHeights)
# Calculate std
s<-sd(MaleHeights)
m
s

#Calculate standard units
z<-scale(MaleHeights)
# calculate proportion of values within 2 SD of mean
mean(abs(z) < 2)



