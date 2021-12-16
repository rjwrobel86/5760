library(SentimentAnalysis)
library(SnowballC)

string <- "I love this class and instructor"
sentiment <- analyzeSentiment(string)
convertToBinaryResponse(sentiment)$SentimentQDAP

string <- "I hate this class and instructor"
sentiment <- analyzeSentiment(string)
convertToBinaryResponse(sentiment)

strings <- c("Good","Bad","Fun","Cool","Evil")

sentiments <- analyzeSentiment(strings)
convertToDirection(sentiments)

data("DictionaryHE")
str(DictionaryHE) #View "structure" of dataset


