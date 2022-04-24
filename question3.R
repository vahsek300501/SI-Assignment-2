rm(list=ls())
smokersList <- c(124, 134, 136, 125, 133, 127, 135, 131, 133, 125, 118)
nonSmokersList <- c(130, 122, 128, 129, 118, 122, 116, 127, 135, 120, 122, 120, 115, 123)
smokerMean = mean(smokersList)
nonSmokerMean = mean(nonSmokersList)
smokerStdDev = sd(smokersList)
nonSmokerStdDev = sd(nonSmokersList)

numirator <- smokerMean-nonSmokerMean
denominator <- sqrt(((smokerStdDev^2/length(smokersList))) + ((nonSmokerStdDev^2)/length(nonSmokersList)))
t.stat <- numirator/denominator
p.val <- 2*pt(q=t.stat,df=24,lower.tail = FALSE)
t.stat
p.val
