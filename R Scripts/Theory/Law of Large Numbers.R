index <- 1:500 #create index of values
spins <- runif(500, 1, 36) #create random data from uniform distribution

popavg <- mean(spins) #spin the roulette wheel
popavg 

runningsum <- cumsum(spins) #take cummulative sum of spins
runningavg <- runningsum / index

popavg
runningavg[5]
runningavg[50]
runningavg[250]
runningavg[400]
runningavg[500]

plot(runningavg)
