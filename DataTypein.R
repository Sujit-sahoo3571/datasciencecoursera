sq<- function(){
  x<- 0:20
  x
}
ddiv <- function(){
  x <-10L
  x <- x/3L
 print(as.numeric(x))
 ## x
  print("-----")
  x<- 10L
  x<- x/3
  # x
  print("as.integer(x)")
  print(as.integer(x))
  print("-----")
  x<- 10
  x<- x/3
  print(x)
   # x
  print("-----")
  msg<- "Hello "
  msg
  print(" inf Nan ")
  x<- 1/Inf
 # x
  print(x)
  x<- 1/0
  # x
  print(x)
  x<- 0/0
  # x
  print(x)
  print("ddiv() end here thank you ")
}
ccon <- function(){
x<- c(0.5,0.6)
print(x)
x<-c(TRUE, FALSE)
print(x)
x<- c(T,F)
print(x)
x<- c("a","b","c")
print(x)
x <- c(1+0i, 2+4i)
print(x)

print("printing vector()  above was c() concate but not concate / part of V ")
x <- vector("numeric", length=10)
print(x)
## x <- vector("character", length=10)
# print(x) "" ""...
print("Mixing  ... coercion (implicity ) ")
y<- c(1.7, "a")
print(y)
y<- c(TRUE, 2)
print(y)
y<-c("a", TRUE)
print(y)

print(" List  contain different class element but vector (x) ")
x <-list(1,0.7, "a",TRUE, 1+9i)
print(x)
print(" compile -> source(filename.R)->ls()-> fun() ")
x<- 0:6
print(x)
print(as.character(x))
print(as.logical(x))
print(as.complex(x))
print("  NAs ")
x<- c("a","b","c")
print(x)
print(as.logical(x))
print(as.integer(x))
print(as.numeric(x))
print(as.complex(x))
}

cmatrix<-function(){
  m <-matrix(1:6 , nrow = 2, ncol = 3)
  print(m)
  print(dim(m))
 print(attributes(m))
 m<- 1:10 
 print(m)
 dim(m)<-c(2,5)
  print(m)
print("cbind()  rbind() ")
 x<- 1:3
 y<-10:12
 # cbind(x,y)
 print(cbind(x,y))
 print(rbind(x,y))
  
}
cfactor <- function(){
  print("factor label with name ")
  f<- factor(c("yes","yes","no","yes","no"))
  print("print factor f")
  print(f)
  print("factor table(f)")
  print(table(f))
  print("unclass(f) ")
  print(unclass(f))
  print("custom factor ")
  
  f<- factor(c("yes","yes","no","yes","no"), levels = c("yes","no"))
  print("print factor f")
  print(f)
  print("factor table(f)")
  print(table(f))
  print("unclass(f) ")
  print(unclass(f))

  
  
}
cmiss <- function(){

  print(" Nan and NA  ")
  x<- c(1,2,NA, 10,3)
 print( is.na(x))
 print(is.nan(x))
 x<- c(1,2,NA,4,6,NaN)
 print( is.na(x))
 print(is.nan(x))
  
}
cframe <- function(){
  x <- data.frame(foo = 1:4 , bar = c(T,T,F,F))
  print(x)
  print(nrow(x))
  print(ncol(x))
  print(data.matrix(x))
  print(table(x))
  # error -> "" ,print(read.table(x))
}

cname <- function(){
  x<- 1:3
  print(x)
  y <- names(x)
  print(y)
  names(x)<- c("h","i","!")
  print(x)
  print(names(x))
  x<- list(a=1,b=2,c=3)
  print(x)
  m<- matrix(1:4, nrow = 2, ncol = 2)
 print("m and dimnames ")
   print(m)
  print(dimnames(m))
  dimnames(m)<- list(c("a","b"),c("c","d"))
  print("m and dimnames after modify   ")
  print(m)
  print(dimnames(m))

  
}


