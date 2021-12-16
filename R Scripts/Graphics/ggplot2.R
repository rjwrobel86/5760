#ggplot2

library(ggplot2)
ggplot(mpg, aes(x=cty, y=hwy, color = class)) + geom_point()
ggplot(mpg, aes(x=cty, y=hwy, color = class)) + geom_point()
ggplot(mpg, aes(x=cty, y=hwy, shape = class)) + geom_point()
ggplot(mpg, aes(x=cty, y=hwy, color = class, size = displ)) + geom_point()
