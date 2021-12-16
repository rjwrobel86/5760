library(forcats)
library(ggplot2)
library(tidyverse)

data <- mtcars
data
mtcars$cyl <- factor(mtcars$cyl)
mtcars$cyl
levels(mtcars$cyl)

#Reorder
fct_relevel(mtcars$cyl, c("4", "8", "6")) 
#Order by frequency
fct_infreq(mtcars$cyl)
#Reverse order
fct_rev(mtcars$cyl)

fct_expand(mtcars$cyl,"10")
#Create catchall for non-conforming factors
fct_other(mtcars$cyl,drop="8")
fct_shuffle

#Recode
fct_recode(mtcars$cyl, cyl4 = "4", cyl6 = "6", cly8 = "8") 

#Intervals as factors
iaf <- cut(mtcars$mpg, breaks=c(0,20,21,Inf))
iafact <- factor(iaf, labels=c("low","medium","high"))
iaframe <- data.frame(iaf,iafact)
iaframe
names(mtcars)
mtcars %>% mutate(mtcars = fct_reorder(cyl,mpg)) %>% ggplot(aes(cyl,mpg,color=cyl)) + geom_point()
mtcars %>% summarise(avg=mean(disp))
mtcars %>% count(mpg)
IQR(mtcars$mpg)

grouped <- mtcars %>% group_by(cyl) %>% summarise(n())                                          
grouped
grouped <- mtcars %>% group_by(am) %>% summarise(avg_mpg=mean(mpg))                                          
grouped

#Grouping
mtcars %>% group_by(gear,carb) %>% summarize(meanmpg = mean(mpg),medianmpg = median(mpg))
mtcars %>% group_by(gear) %>% summarise(mpg=mean(mpg),hp=mean(hp))
summarise_at(mtcars, vars(mpg, hp), funs(n(), mean, median))


#Filtering
mtcars30 <- filter(mtcars,mpg>=30)
mtcars30204 <- filter(mtcars,mpg>=20&mpg<30&gear==5)
mtcars30204

#Split into multple dataframes by group
mtc <- mtcars %>% group_by(cyl) %>%group_split()
mtc

#Group by gear and filter out values where mpg is below the mean
mtcfilt <- mtcars %>% group_by(gear) %>% filter(mpg>=mean(mpg))
mtcfilt
