library(datasets)
library(GGally)
data(iris)

#Make a matrix of plots using the iris dataset
#the colour refers to different colours by group(the variable Species)
ggpairs(iris, aes(colour=Species))

#make the text smaller for the correlation values
ggpairs(iris, aes(colour=Species), upper = list(continuous = wrap("cor", size = 2.0)))


