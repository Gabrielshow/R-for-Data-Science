#variables in R can be defined in two ways
x <- 42
print(x)
var2 <- "This is called \"escaping\"."

#to get input from the user 
input <- readlines('stdin')
print(input[1])

#conversion of input
x <- input[1]
x <- as.integer(x)
print(x*2)
# or cat(x*2)

#control flow in R
x <- 43
if (x >= 100) { print (" x is big")}
else { print ("x is less than 100")}

num <- 3
if (num == 1) {
print("one")
else if(num == 2) {
print("two")}
else if(num == 3) {
print ("three")}
else { print("something else")}
}

#logical operators in R
#&(AND)  |(OR)
x <- 6
y <-2
if (x <-y | x>100) {
print("Yes")}

#switch case
num <- 3
result <- switch(num, "One", "Two", "Three", "Four")
print(result)

x <- 2
choice <- switch(x, "coffee", "tea", "water")
print(choice)

#loops
i <- 1 
while (i < 10) { print(i)
i <- i + 1}

for(x in 1:10){print(x)}

for(x in 1:100){if (x%%2 == 0) {print x}}

#%% - remainder(modulo)
#%/% division
#break/next

for( x in 1:15){ if (x == 13){next}
print(x)}

#functions 
res <- max(5, 3, 12, 88)
print(res)

pow <- function(x, y) {
result <- x^y 
print(result)
}

pow((2,5))
pow(8, 3)

#using default argument we have
pow1 <- function(x, y = 2) {
result <- (x^y) %/% 2
print(result)
}
pow1(5)

#Data structures
#paste function creates a datastructure for you
t1 <- "hi" t2 <- "there "
t3 <- "!"

res <- paste(t1,t2,t3)
print(result)

#we could also use a separator
res1 <- paste(t1,t2,t3,sep="-")
print(res1)

#string methods
#toupper/ tolower
txt <- "hello"
txt <- toupper(txt)
txt <- tolower(txt)
print(txt)

#we use nchar to find the number of characters in the string
txt <- "Gabriel"
print(nchar(txt))

#substr 
txt <- "Zizzimmo"
print(substr(txt,5, 9))

#vectors
#we use the c() function for creating vectors
names <- c("James" , "Amy")
print(names[2])

#index starts from 1 instead of 0
ages <- c("James "=18, "Amy" = 14, "John" = 64)
print(ages["James"])
#to output values only we use ages[["James"]]
#negative index to skip an element in an array
names <- c("James", "Amy", "John")
print(names[-3]) #3rd element will be skipped
# or the equivalent print(names[1:2])

n <- c(8,4,2,3,5)
x <- n[2:4] #[4,2,3]
x <- x[-1] #[2,3]
print(x[1])

#vector arithmetics
v1 <- c(2,1,6,5)
v2 <- c(5,3,4,8)
print(v1+v2)
print(v1-v2)
print(v1*v2)
print(v1/v2)

#if two vectors are of unequal length thenthe elements of the shorter
#vector are repeated to complete the operations
v <- c(2,6,1,5,42)
print(mean(v)) #11.2
print(median(v)) #5
