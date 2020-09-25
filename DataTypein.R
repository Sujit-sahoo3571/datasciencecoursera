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
print("  NAs ")
x<- c("a","b","c")
print(as.logical(x))
print(as.integer(x))
print(as.numeric(x))

}




