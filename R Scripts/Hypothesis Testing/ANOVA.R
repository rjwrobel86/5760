install.packages("ggpubr") #graphics tools
library(ggpubr)

set.seed(1663)


data <- PlantGrowth
attach(data)
sample1 <- sample_n(data,10)

sample1$weight
sample1$group
levels(data$group)

#order the variables
data$group <- ordered(data$group,levels=c("ctrl","trt1","trt2"))

#Get summary statistics using dplyr's "piping" syntax
group_by(data, group) %>%
  summarise(
    count = n(),
    mean = mean(weight, na.rm = TRUE),
    sd = sd(weight, na.rm=TRUE)
  )

anova.results <- aov(weight ~ group, data=data)
anova.results
summary(anova.results)
#High F-Statistic / low P-Value = statistically significant difference between groups

#But what groups are different or same?
TukeyHSD(anova.results)
#Only the difference between treatment groups is significant

#Assuming that......we've got homoskedastic variance!
library(car)
leveneTest(data$weight ~ data$group,data = data)

#Plot residuals to evaluate variance of each group
plot(anova.results, 1)

#Plot residuals to evaluate normality of residuals
plot(anova.results, 2)

residuals <- residuals(object=anova.results)
residuals
shapiroTest(residuals)



#Two Way ANOVA - Two factor variables

data <- ToothGrowth
df <- sample_n(data, 10)
head(df)

df$dose <- factor(df$dose,levels = c(0.5, 1, 2), labels = c("D0.5", "D1", "D2"))
df$dose

#cross tabulation
table(df$dose,df$supp)

install.packages("ggpubr") #graphics tools
library(ggpubr)
ggboxplot(data, x = "dose", y = "len", color = "supp",palette = c("#00AFBB", "#E7B800"))

aov2.results <- aov(df$len ~ + df$dose + df$supp, data=df)
aov2.results
summary(aov2.results)

#intereaction term
aovI.res <- aov(df$len ~ df$dose + df$supp + (df$dose * df$supp))
summary(aovI.res)

group_by(df, supp, dose) %>%
  summarise(
    count = n(),
    mean = mean(len, na.rm = TRUE),
    sd = sd(len, na.rm = TRUE)
  )

TukeyHSD(aovI.res, which="df$dose")


#Balanced vs Unbalanced