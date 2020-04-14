all<-permutations(8,3)

jamaica<-permutations(3,3)

nrow(jamaica)/nrow(all)


runners <- c("Jamaica", "Jamaica", "Jamaica", "USA", "Ecuador", "Netherlands", "France", "South Africa")

B<-10000

result<-replicate(B,{
 all(sample(runners,3)=="Jamaica")
})
mean(result)


Combs<-function(n){
  n*nrow(combinations(6,2))*3
}
sapply(1:25,Combs)



Combs1<-function(n){
  6*nrow(combinations(n,2))*3
}
sapply(3:25,Combs1)


#Questions 3 and 4: Esophageal cancer and alcohol/tobacco use, part 1

library(tidyverse)
head(esoph)
length(esoph$agegp)
all_cases<- sum(esoph$ncases)
all_controls<-sum(esoph$ncontrols)
sum(esoph$ncases[87:88])/all_cases

esoph %>%
  filter(alcgp == "120+") %>%
  summarize(ncases = sum(ncases), ncontrols = sum(ncontrols)) %>%
  mutate(p_case = ncases / (ncases + ncontrols)) %>%
  pull(p_case)


HighestAlc<-filter(esoph,esoph$alcgp=='120+')
sum(HighestAlc$ncases)/(sum(HighestAlc$ncases)+sum(HighestAlc$ncontrols))
LowestAlc<-filter(esoph,esoph$alcgp=='0-39g/day')
sum(LowestAlc$ncases)/(sum(LowestAlc$ncases)+sum(LowestAlc$ncontrols))

C<-filter(esoph,esoph$tobgp%in%c('10-19','20-29','30+'))
sum(C$ncases)/all_cases

sum(C$ncontrols)/all_controls


sum(HighestAlc$ncases)/all_cases

HighestTob<-filter(esoph,esoph$tobgp=='30+')
sum(HighestTob$ncases)/all_cases


HighestAlcTob<-filter(esoph,esoph$tobgp=='30+' & esoph$alcgp=='120+')
sum(HighestAlcTob$ncases)/all_cases


HighestAlcOrTob<-filter(esoph,esoph$tobgp=='30+' | esoph$alcgp=='120+')
sum(HighestAlcOrTob$ncases)/all_cases


sum(HighestAlc$ncontrols)/all_controls

sum(HighestTob$ncontrols)/all_controls


sum(HighestAlcTob$ncontrols)/all_controls

sum(HighestAlcOrTob$ncontrols)/all_controls