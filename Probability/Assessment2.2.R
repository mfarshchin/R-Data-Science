# Assessment 2.2
set.seed(16)
act_scores<-rnorm(10000,20.9,5.7)
mean(act_scores)
sd(act_scores)
sum(act_scores>=36)
mean(act_scores>30)
mean(act_scores<=10)


x<-seq(1:36)
data.frame(x,f_x=dnorm(x,20.9,5.7))%>%ggplot(aes(x,f_x))+geom_line()


Scaled<-(act_scores-mean(act_scores))/sd(act_scores)
mean(Scaled>2)


2*sd(act_scores) + mean(act_scores)


qnorm(0.975,mean(act_scores),sd(act_scores))





CDF<-function(n){mean(act_scores<=n)}
sapply(1:36,CDF)


qnorm(0.95,20.9,5.7)

p <- seq(0.01, 0.99, 0.01)
sample_quantiles<-quantile(act_scores,seq(0.01,0.99,0.01))


C<-function(n){qnorm(n,20.9,5.7)}
theoretical_quantiles<-sapply(p,C)
plot(theoretical_quantiles,sample_quantiles)