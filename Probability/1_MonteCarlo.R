beads<-rep(c("red","blue"),times=c(2,3))
sample(beads,1)
B<-10000
events<-replicate(B,sample(beads,1))
tab<-table(events)
prop.table(tab)


# Note: use sample to generate multiple events
events<-sample(beads,B,replace=TRUE)
tab<-table(events)
prop.table(tab)