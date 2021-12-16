edu <- rnorm(50,16,1)
m_edu <- rnorm(50,14,1)
u_edu <- rnorm(50,11,1)
p_edu <- rnorm(50,15,1)
p_medu <- rnorm(50,12,1)
p_uedu <- rnorm(50,10,1)

par(mfrow=c(1,1))

individuals <- c(u_edu,m_edu,edu)
parents <- c(p_uedu,p_medu,p_edu)

cor(individuals,parents)
plot(individuals,parents)

range <-80000-20000
steps <- range / length(individuals)

incomes <- seq(20000,80000,401)
p_incomes <- seq(15000,70100,368)
length(p_incomes)

mod <- lm(incomes~individuals+parents+p_incomes)
mod
summary(mod)

vif(mod)



