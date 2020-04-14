#Vectors use 
codes <- c(10,20,30)
countries <- c("itally","Japan", "Canada")
#Codes <- c(Itally=10, Japan=20, Canada=30)
names(codes)<-countries
seq(1,10)
seq(1,20,2)

codes[2:3]
codes["Canada"]

codes[c("Canada","Japan")]

as.character(1:5)

x<- c("1","b","3")
as.numeric(x)