library(datasets)
library(ggplot2)
data(mtcars)

#lets create a histogram using the function geom_histogram() with the weight variable of the mtcars dataset
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.4)

#change the color of the histogram to pink with a black outline
ggplot(aes(x=wt),data=mtcars) + geom_histogram(color="black", fill="pink", binwidth=0.4)

#now lets add a vertical blue dashed line where the mean of the weight value is by using the function geom_vline()
ggplot(aes(x=wt),data=mtcars) + 
  geom_histogram(color="black", fill="pink", binwidth=0.4) +
  geom_vline(aes(xintercept=mean(wt)), color="blue", linetype="dashed")
