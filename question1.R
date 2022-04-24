rm(list=ls())

#Sample size
n <- 28
#Null hypothesis mean
mu.null <- 0.8
#sample mean and sample std. dev.
avgResponseTime <- 1
stdDev <- 0.3
#value of alpha
significanceLevel <- 0.05
t.stat_2<-(avgResponseTime-mu.null)/(stdDev/sqrt(n))
#P value we have multiplied it with 2 as it is 2 tailed
p.val_2<- 2*pt(q=t.stat_2,df=27,lower.tail = FALSE)
p.val_2