pollutantmean <- function(directory, pollutant, id = 1:332) {
  means <-c()
  for(i in id){
    path <- paste(getwd(),"/",directory,"/",sprintf("%03d",i),".csv",sep="")
    
    da <- read.csv(path)
  #  print(path)
    val <- da[pollutant]
    means <- c(means,val[!is.na(val)] )
   # print(means)
    
  }
  mean(means)

  
}