cfile <- function(){
 print(" ==========  Table 1 using csv =========")
 dat <- read.csv("mytxt.txt") 
 print(dat)
 
 #  dat <- read.table("mytxt.txt")  # generate error:
 #"Error in scan(file = file, what = what, sep = sep, quote = quote, dec = dec,
 #:line 2 did not have 2 elements "..[ solve using fill and sep value] :)
 
 print(" ==========  Table 1 using table  =========")
 dat <- read.table("mytxt.txt" ,fill = TRUE , sep = ",") 
 print(dat) 

 print(" ==========  Table 1 using inital calcutaion  =========")
  inital <- read.table("mytxt.txt", fill = TRUE , sep = "," , nrows = 153)

  classes <- sapply(inital, class)
  taball <- read.table("mytxt.txt", fill = TRUE , sep = "," ,colClasses = classes)
  print(taball)

  
} 

ctext <-function(){
  
  print("   Textual data   dput() for single object like data.frame() ")
  y <- data.frame(a =1 , b= "a")
  # dput(y)
dput(y, file = "Y.R")
new.y <- dget("Y.R")
print(new.y)

  print("  for multi object dump()   ")
   x <- " foo "
   y <- data.frame(a = 1, b= "a")
   dump(c("x", "y"), file = "X.R")
   rm(x,y)
   source("X.R")
   print(" y data  ")
   print(y)
   print("  x data  ")
   print(x)
   
  
}

cread <- function(){
  print("** READLINES** ")
  con <- url("http://www.cet.edu.in", "r")
  x <- readLines(con)
  head(x)
  print(head(x))
  
}

csubset <- function(){
  print("sub setting vector c (\"a\",\"b\",...) ")
x<- c("a","b","c","d")
print(x[1])
print(x[2])
print(x[1:4])
print(x[x>"a"])
 u<- x>"a"
 print(u)
 
 print("sub - setting list (foo= 1:4, bar = 0.7 ")
 x <-list(foo= 1:4 , bar = 0.7 )
 print(x[1])
 print(x[[1]])
 print(x[[2]])
 print(x$foo)
 print(x$bar)
 print(x[["bar"]])
 print(x["bar"])
 print(x[["foo"]])
 print(x["foo"])

 x<- list(foo= 1:4, bar= 0.6, baz = "hello ")
 print(x[c(1,3)])
 name <- "foo"
 print(x[[name]])
 # NULL ->  print(x$name)
 print(x$foo)
 
print("Nested list  ")
x<- list(a= list(10,12,14), b= c(3.14,5.76,7))
print(x[1] )
print(" x[1]")
print(x[[1]])
print(" x[[1]]")
print(x[[c(1,3)]])
print(" x[[c(1,3)]]")
print(x[[1]][[2]])
print(" x[[1]][[2]]")
print(x[[c(2,1)]])
print(" x[[c(2,1)]]")
print(x[2])
print(" x[2]")
print(x[[2]])
print(" x[[2]]")
  
}
csubmat <- function(){
  
  x<- matrix(1:6,2,3)
  print(x)
  print("  vector ")
  print(x[1,2])
  print(x[2,1])
  print(x[1,])
  print(x[,2])
  print("in matrix format  ")
  print(x[1,2, drop =F])
  print(x[,, drop=F])
  print(x[, 2:3, drop= F])
  print(x[1:2,1:2,drop=F])
  print(x[1:2, ,drop=F])
  print(x[1:2, drop=F]) #error in value use ,(row) ,(col) as above 
  
  print("partial match [[ ]] $ aardmark  ")
  x<- list(aardmark = 1:5 )#, ab = 90 , asa= "gdbhh hello ") can't occur > 1
  print(x$a)
  print(x[["a"]])
  print(x[["a", exact = F]])
  print(x[1])
  print(x[[1]])
  
  print("REMOVE MISSING VALUES  ")
  x <- c(1,2,NA,4,NA, 5)
  bad <-is.na(x)
  print(x[!bad])
  x<- c(1,2,NA,4,NA,5,NA,6,7)
  y<- c("A","B",NA,"f",NA,"D",NA,"E","cool")
  print(" complete.cases(x,y) x and y length same i/o and o/p ")
  good <- complete.cases(x,y)
  print(good)
  print(x[good])
  print(y[good])
  
  
  
}


