## ---- eval=T-------------------------------------------------------------
##This is an example of a recursive function. This means that I can use the function I'm creating within that function and carry out operations that would require many 'for' loops within 'for' loops

fact_func <- function(n) {
  if(n==0){
    return(1)
  } else {
    m <- n * fact_func(n-1)
    return(m)
  }
}


##importing a table. Can use other functions such as read.table and read.delim. One can use readLines to read text files 
iris_data <- read.csv("iris.data",header = F)

##change column names
colnames(iris_data) <- c("sepal_length","sepal_width","petal_length","petal_width","species")

##finding unique elements
unique(iris_data$species)

##subset using some criteria
iris_setosa <- subset(iris_data,subset = iris_data$species=="Iris-setosa")

##alternative to subset
iris_setosa <- iris_data[iris_data$species=="Iris-setosa",]

##basic plotting
plot(x=iris_setosa$sepal_length,y=iris_setosa$sepal_width)

##Homework
#try plotting other variables
#try putting species as x
#plot sepal length vs sepal width for setosa and versicolor. try coloring points by species

