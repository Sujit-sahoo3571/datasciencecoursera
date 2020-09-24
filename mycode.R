myfunction <- function(){
	x <- rnorm(100)
mean(x)
}

second <- function(x){
	x+ rnorm(length(x))
}

say <- function(x){
  print("say hii to ")
  print(x)
  print("welcome to my code in R ")
}
