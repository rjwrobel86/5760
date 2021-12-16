#Indicies

Pi0 <- 1.25
Pi1 <- 1.45

Pi = (Pi1 / Pi0) * 100
Pi

#Weighted indicies
#A) LASPEYRES: Hold quantities constant at base period levels
#B) Paasche: Hold quantities constant at current period levels

Pvec0 <- c(1.25,4.44,3.12)
Qvec0 <- c(14,31,20)
PQvec0 <- Pvec0 * Qvec0
Pvec1 <- c(1.29,4.70,5.12)
Qvec1 <- c(14,31,20) #Same quantities
PQvec1 <- Pvec1 * Qvec1
base <- sum(PQvec0)
current <- sum(PQvec1)
base
current
value <- (current/base) * 100
value
