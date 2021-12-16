library(dplyr)

classic_monty <- function() {
  # Assign the prize
  prize <- sample(1:3,1)
  # Pick a door
  choice <- sample(1:3,1)
  # Monty picks a door
  monty <- sample(c(1:3)[-c(choice,prize)], 1)
  return(ifelse(prize!=choice, "Switch", "Stick"))
}






n <- 100
runs <- data.frame(n=numeric(), switch=numeric())
for (trials in n) {
  run <- table(replicate(trials, classic_monty()))
  runs <- runs %>%  add_row(n=trials, switch=(sum(run["Switch"]))/trials)
}
# Handle zero-occurrence trials
runs[is.na(runs)]<-0

runs



# Generate sample space of tuples for Monty-Hall 
space <- data.frame(choice=numeric(), monty=numeric(), prize=numeric())


i <- 1
for (prize in 1:3) {
  for (choice in 1:3) {
    for (monty in c(1:3)[-c(prize,choice)]) {
      space <- space %>%  add_row(choice=choice,monty=monty,prize=prize)
    }
  }
}

space
space <- space %>% arrange(choice)
