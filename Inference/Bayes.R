#Bayes theorem

prev<-0.00025
N<-100000

outcome<-sample(c('Disease','Healthy'),N,replace=TRUE,prob=c(prev,1-prev))
N_D<-sum(outcome=='Disease')
N_D
N_H<-sum(outcome=='Healthy')
N_H
accuracy<-0.99
test<-vector("character",N)
test[outcome=="Disease"]<-sample(c("+","-"),N_D,replace = TRUE,prob = c(accuracy,1-accuracy))
test[outcome=="Healthy"]<-sample(c("-","+"),N_H,replace = TRUE,prob = c(accuracy,1-accuracy))
table(outcome,test)

H_P<-sum(test[outcome=="Healthy"]=="+")
H_N<-sum(test[outcome=="Healthy"]=="-")
D_P<-sum(test[outcome=="Disease"]=="+")
D_N<-sum(test[outcome=="Disease"]=="-")

# probability of "+" have the disease (+ & Disease)
D_P/(H_P+D_P)
#Probability of "+" not have the disease (+ & Healthy)
H_P/(H_P+D_P)
# probability of "-" have the disease (- & Disease)
D_N/(H_P+D_P)
# probability of "-" have the disease (- & Healthy)
H_N/(H_P+D_P)


