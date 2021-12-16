#Stringr



string <- "Strings are 'just' text"

string2 <- "Strings are 'just' text text text"

str_to_title(string)
str_to_lower(string)

str_detect(string,"s are")
str_which(string,"s are")
str_count("text")
str_length(string)

nums <- c("one","two","three")
nums2 <- str_replace("one","fifty")
nums2

#Truncate
str_trunc(string,5,side="right")




#Trim whitespae
trimmed <- str_trim(string,side="both",5)
trimmed
str_squish(string)
#Special characters
mu <- "\u00b5"
mu

str_length(string)

string3 <- "This is the second string."



str_c("string"," ","string2")
combo <- str_c("string",",","string2")
combo

