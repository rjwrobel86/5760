#Functions and loops

alpha = 0.95
direction = "left"
variable = rnorm(50,25,2)
val = sample(variable,1)


#Create a Z-test function using the function command and if, else if, and else
ztester <- function(variable,val,alpha,direction) 
  zn = (val - mean(variable))
  zd = (var(variable))/(sd(variable))
  z = zn/zd
  if (direction=="both") {
    cv2t <- qnorm(alpha/2)
    print("Reject the null?")
    abs(cv2t) > abs(z)
    } else if (direction=="left") {
    cv <- qnorm(alpha) * -1 
    print("Reject the Null?")
    print(cv < z)
    } else if (direction=="right") {
    cv1 <- qnorm(alpha) #One Tailed
    print("Reject the null?")
    print(cv > z)
    }


