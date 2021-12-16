#Probability

x1 = c(10000, 2500, 500)
prob.x1 = c(0.25,0.70,0.05)
ev.x1 = sum(x1 * prob.x1)
ev.x1
var.x1 <- sqrt(sum((x1-ev.x1)^2*prob.x1))
var.x1
sd.x1 <- sqrt(var.x1)
sd.x1


