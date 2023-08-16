#R contd
#nchar of the vector must be a multiple or sub-multiple of nrow, ncol
x <- matrix(c(1,2,3,4,5,6,7,8,9,10), nrow = 2, ncol = 5)

#a simple algorithm to find the transpose of a matrix
x <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
print(t(x))

#dataframes
#vectors - 1 dimension of the same type
# matrices -2 dimension lists could be different type of elements

x <- data.frame("id"=1:2, "name"=c("James", "Amy"),"age"= c(42, 15))
print(x[[2]]) #second column
print (x[["name"]]) #name column
[1] James Amy  
Levels: Amy James
> print(x[["name"]])
[1] James Amy  
Levels: Amy James
> print(x$name)
[1] James Amy  
Levels: Amy James
> print(x[[2,3]]) #third column of the second row
[1] 15
> print(x[[2,"name"]]) #name column of the second row
[1] Amy
Levels: Amy James

#Dataframe operation
x$country <- c("USA", "Italy") #creating a data frame with one series/vector
x <- data.frame("id"=1:4, "country"=c("USA", "Italy", "UK", "Canada"), "age"=c(21, 14, 33, 56))
print(x$country)
print(x[x$age > 21, 1]) #selects all rows that have the age column greater than 21
print(x[x$age > 21, 2]) #selects all columns that have the age column greater than 21
 print(mean(x$age))
[1] 31
> summary(x)
       id         country       age       
 Min.   :1.00   Canada:1   Min.   :14.00  
 1st Qu.:1.75   Italy :1   1st Qu.:19.25  
 Median :2.50   UK    :1   Median :27.00  
 Mean   :2.50   USA   :1   Mean   :31.00  
 3rd Qu.:3.25              3rd Qu.:38.75  
 Max.   :4.00              Max.   :56.00
 
 #we can have text columns use factors
 gender <- factor(c("Male", "Female", "Other"))
 #these values are called levels they can be accessed using levels function
 print(levels(gender))
 [1] "Female" "Male"   "Other"
 #each value has a corresponding number. we can check them out using the table function
 #Female is 1, Male is 2 because F comes before M
 print(table(gender))
 Female   Male  Other 
     1      1      1 
# x$gender <- gender
# print(x)
# the function above will not if x already has a shape
y <- matrix(c(3,1,0,8,5,3), nrow=3)
print(y[3,1]) #0  seens the table is like this 3 8
                                               1 5
											   0 3

cars <- data.frame("price" = c(4.99, 9.59, 11.3), "color"=c("red", "blue", "green"))
cars$brand <- c("BMW", "Audi", "VW")
print(cars$color[2])

#datasets-table
#using comma - separated values
# data <- read.csv("demo.csv")
# x <- read.csv("books.csv")
# print(x[1])

#statistics variance and std
sd(x$age)
var(x$age)
sum(x$age)

#filtering data
z <- x[x$age == 21, ]
z [z$id == min(z$id),]
  id country age
1  1     USA  21
z[z$id == max(z$id),]

#correlation matrix
res <- cor(x) # x must be numeric inorder for this to work
res <- round(res, 2)  # 2 decimal places

#Grouping data
#syntax * by(x , y , func) where x is the column to apply the function
# y is the group the data by 
# func is the function we want to apply
# we could also use tapply
# the parameters as by but tapply return a matrix, while by returns an object
#tapply(x, y, func) or better still tapply(x$country, x$age, mean)
# tapply(x$id, x$age, mean)
# 14 21 33 56 
 # 2  1  3  4 
 
#visualization
png(file = "chart.png")
plot(1:10, main = "My chart", xlab = "The x-axis", ylab="The y-axis")
w <- x$age
e <- x$id
png(file="new.png")
plot(w, e, xlab="w", ylab="e")
# > png(file = "chart.png")
# > plot(1:10, main = "My chart", xlab = "The x-axis", ylab="The y-axis")
# > w <- x$age
# > e <- x$id
# > png(file = "new.png")
# > plot(w, e,xlab="Age", ylab="id")
# > 
# > plot(1:10, type ="l")
# > line1 <- c(0, 1,14,42)
# > line2 <- c(2,4,6,8)
# > plot(line1, type="l", col="blue")
# > lines(line2, type ="l", col="red")
# > 

# bar chart
barplot(x$age)
barplot(x$age, x$id)

#horizontal barcharts
barplot(x$age, horiz = TRUE)
barplot(x$age, "blue")
barplot(data, names.arg = x, horiz=TRUE, col="red")

#piecharts
# we use the pie() function
# it takes a vector of values for the pies and labels for each of the pies
x <- c(8,10,42,14)
y <- c("A", "B", "C", "D")
pie(x, label=y)
pie(1:8) #8 sections
x <- tapply(x$age, x$id, mean)
labels <- names(x)
png(file="chart.png")
pie(x, label = labels, main="Average Health by id")

#boxplot and histogram
#boxplot will draw a box plot
#it shows the minimum, maximum, median, first & third quartile in the data set
#average values are represented by a black horizontal line
#histogram 
#represents frequency of values bracketed into ranges
#similar to barcharts
#hist(x$age)


