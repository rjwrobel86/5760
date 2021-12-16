#####Graphics#####

v1 <- rnorm(50,100,25) #Random data
v2 <- rnorm(50,100,25) #Random data


plot(v1) #Scatter plot vs index
hist(v1) #Histogram
plot(density(v1))
barplot(v1) #Bar graph
barplot(v1, horiz = TRUE) #Bar graph
boxplot(v1) #Box and whiskers plot
plot(v1,v2) #Scatter plot (x comes first)
abline(lm(v2~v1)) #Add trendline
pie(v1)
slices <- c(10, 12, 4, 16, 8) 
lbls <- c("A", "B", "C", "D", "E")
pie(slices,lbls)

# Pie Chart with Percentages
slices <- c(10, 12, 4, 16, 8) 
lbls <- c("A", "B", "C", "D", "E")
pie(slices,lbls)
pcts <- round(slices/sum(slices)*100)
pie(slices,pcts)

#Dot plot
# Sort by mpg, group and color by cylinder 
carsbympg <- mtcars[order(mtcars$mpg),] # sort by mpg
dotchart(carsbympg$mpg)
dotchart(carsbympg$mpg, labels=row.names(carsbympg))

#Dot plot with separated and colored factor variables
carsbympg$color[carsbympg$cyl==4] <- "green"
carsbympg$color[carsbympg$cyl==6] <- "yellow"
carsbympg$color[carsbympg$cyl==8] <- "red"
dotchart(carsbympg$mpg,labels=row.names(carsbympg), groups=carsbympg$cyl, color=carsbympg$color)
carsbympg$cyl <- as.factor(carsbympg$cyl)
dotchart(carsbympg$mpg,labels=row.names(carsbympg), groups=carsbympg$cyl, color=carsbympg$color)







