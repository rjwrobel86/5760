library(regclass)
library(ggplot2)

data <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
attach(data)
names(data)
summary(data)

xtabs(~admit + rank) #Cross tabulation

rank <- factor(rank) #Rank of school converted to factor variable

#May wish to convert factor to binary variables.  Use the formula below
#gender <- ifelse(gender=="Female",1,0) will turn gender into a binary variable, set as 1 for female and 0 for male (not using this data)


#Fit a logit model and collect fitted values, residuals, betas, and confidence intervals
mod1 <- glm(admit ~ gre + gpa + rank, data = data, family = "binomial")
summary(mod1)

yhat <- fitted(mod1) #Fitted values
e <- residuals(mod1) #Residuals
betas <- coefficients(mod1) #Coefficients
ci <- confint(mod1) #Confidence intervals

#Confusion Matrix to compare fitted and actual
cm <- confusion_matrix(mod1)
cm

library(rms)
mod2 <- lrm(formula=admit ~ gre + gpa + rank) #Get pseudo-R^2 from rms library's lrm function, which is same as GLM
mod2

#Create a dataframe with a single observation using the means of each variable as the values
simdata <- with(mydata, data.frame(gre = mean(gre), gpa = mean(gpa), rank=mean(rank)))
simdata$prob <- predict(mod1, newdata = simdata, type = "response")
simdata # prob is the probability of acceptance to grad school for a perfectly (arithmatically) average student
summary(simdata)

#Create a dataframe with the means of all variables, but a new row for each rank
simdata2 <- with(mydata, data.frame(gre = mean(gre), gpa = mean(gpa), rank=1:4))
simdata2$prob <- predict(mod1, newdata = simdata2, type = "response")
simdata2 #prob is the p(acceptance), given an average GRE and GPA score, by rank of HS 

#Create a dataframe with 100 observations with randomly genderated values for all variables
simdata3 <- data.frame(index=1:100, gre=runif(100,200,800), gpa=runif(100,0,4), rank=runif(100,0,4))
simdata3$prob <- predict(mod1, newdata = simdata3, type = "response")
simdata3 #prob is the p(acceptance, given 100 uniformly distributed gre scores betwen 200 and 800, 100 gpas between 0 and 4, and 100 hs ranks between 0,4)
summary(simdata3) #Mean of 0.18274 means the average student had an 18% chance of getting in


#Raw logit coefficient interpretation: One point increase in the GRE score increases the log odds of admission by 0.002

#MUST DO DIAGNOSTICS, WHICH ARE NOT EXACTLY THE SAME AS FOR OLS REGRESSION

