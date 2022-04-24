rm(list=ls())
n <- 10
# sample data
sampleData <- c(5.728, 5.731, 5.722, 5.719, 5.727, 5.724, 5.718, 5.726, 5.723, 5.722)
nullHypothesisSigma <- 0.4
# Finding Chi-square
chi.stat<-((n-1)*(sd(sampleData))^2)/(nullHypothesisSigma^2)
chi.stat
p.val<-pchisq(q=chi.stat,df=(n-1),lower.tail = TRUE)
p.val