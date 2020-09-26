cif <-function(x=5){
  
  if(x > 3){
    y <-10
  }
  else{
    y <-0
  }
  print(y)
  
}
cif2 <- function(x =5){
  y<- if(x>3)
    10
  else 0
  print(y)
}
cfor <- function(x=1:5){
  for (i in x) {
    if(i ==3)
      next
    print(i)
    
  }
  for(i in 1:10){
    if(i > 6)
      break
    print(i)
  }
  x<- c("a", "b","c","d ")
  for (i in 1:4) {
    if(x[i] == "c")
      next
    print(x[i])
    
  }
  for (i in seq_along(x)) {
    if(x[i] == "b")
      break
    print(x[i])
    
  }
  for (letter in x) {
    
    print(letter)
    
  }
  
}
cnest <- function(mat=1:6, ro=2, col=3){
  x <- matrix(mat,ro,col)
  for (i in seq_len(nrow(x))) {
    for (j in seq_len(ncol(x))) {
      print(x[i,j])
      
    }
    
  }
}
cwhile <- function(co=0){
  while(co<10){
    print(co*5)
    co <- co+1
  }
  print("co >10")
}
crandwalk <- function(z=5){
  print("RANDOM WALK ")
  while(z>=3 && z <= 10){
    print(z)
    coin <- rbinom(1,1,0.5)
  #  print("  coin " )
   # print(coin)
    #print("** coin** ")
    if(coin == 1){
      z <- z+1
    }
    else {
      z <- z-1
    }
    
  }
}
cadd2 <- function(x=3,y=4){
  x+y
}

above10 <- function(x=11, n=10){
  use <- x>n
  print(use)
x[use]
#  print(x[1])
  }
columnmean <- function(y, naval = T){
  nc <- ncol(y)
  print(nc)
  means <- numeric(nc)
  print(means)
  for (i in 1:nc) {
    means[i] <- mean(y[,i], na.rm = naval)
    
  }
  means
}
creatdf <- function(y="mytxt1.csv"){
   da <- read.csv(y, header = T)
   df <- data.frame(da)
   print(df)
   colcount = ncol(df)
   meansstore <- numeric(colcount)
  for (i in 1:colcount) {
    meansstore[i] <- mean(df[,i], na.rm = T)
    
    
  }
   meansstore
   
   
}
