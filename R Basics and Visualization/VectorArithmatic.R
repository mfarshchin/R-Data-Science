#Vector arithmatic

#Calulate the rate of murder

murder_rates<-murders$total/murders$population*100000

murders$state[order(murder_rates,decreasing=TRUE)]