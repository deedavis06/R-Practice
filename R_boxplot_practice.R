library(datasets)
library(ggplot2)
data(mtcars)

#view the first 5 rows of the data
head(mtcars)

#create a scatterplot (using the function geom_point()) with the displacement (x axis) and miles per gallon (y axis) variables
ggplot(aes(x=disp, y=mpg), data=mtcars)+geom_point()

#add a title and center it
ggplot(aes(x=disp, y=mpg), data=mtcars)+geom_point()+ggtitle('Displacement vs. Miles per Gallon')+theme(plot.title=element_text(hjust=0.5))

#change the labels of the x and y axis
ggplot(aes(x=disp, y=mpg), data=mtcars)+geom_point()+ggtitle('Displacement vs. Miles per Gallon')+theme(plot.title=element_text(hjust=0.5))+ labs(x='Displacement', y='Miles per Gallon')

#make the Engine types variable(vs) a factor (categorical variable)
mtcars$vs<-as.factor(mtcars$vs)

#create a boxplot using the function geom_boxplot() for the different engine types (0=v-shaped, 1=straight)
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

#change the colors of the boxplot by adding fill=vs to the aes() function and change the outlier color using the outlier.color function
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3, outlier.color='red') +
  theme(legend.position="none")



