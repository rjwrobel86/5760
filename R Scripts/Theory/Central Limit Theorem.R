#Central Limit Theorem

#Create some data from different distributions
normal = rnorm(500,50,5) #Normal dist
poisson <- rpois(100,5) #Poisson dist
t <- rt(100,5) #T Dist
chi <- rchisq(500,5) #Chi-squared dist


s1 = sample(poisson,20)
s1m = mean(s1)
s2 = sample(poisson,20)
s2m = mean(s2)
s3 = sample(poisson,20)
s3m = mean(s3)
s4 = sample(poisson,20)
s4m = mean(s4)
s5 = sample(poisson,20)
s5m = mean(s5)
s6 = sample(poisson,20)
s6m = mean(s6)
s7 = sample(poisson,20)
s7m = mean(s7)
s8 = sample(poisson,20)
s8m = mean(s8)
s9 = sample(poisson,20)
s9m = mean(s9)
s10 = sample(poisson,20)
s10m = mean(s10)


samples <- c(s1m,s2m,s3m,s4m,s5m,s6m,s7m,s8m,s9m,s10m)
means <- sapply(samples,mean)
means
hist(means)

