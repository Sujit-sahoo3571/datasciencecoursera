#mean
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

#COMPLETE
complete <- function(directory , id = 1:332){
  
  results <- data.frame(id = numeric(0), nobs = numeric(0))
  
  for (i in id) {
    path <- paste(getwd(), "/",directory,"/",sprintf("%03d",i),".csv",sep = "")
    da <- read.csv(path)
  
    dat <- da[(!is.na(da$sulfate)), ]
   
    dat <- dat[(!is.na(dat$nitrate)), ]
    
    nobs <- nrow(dat)

    results <-rbind(results, data.frame(id=i, nobs=nobs))
    
  }
  results 
  
}

#row number print
rowprint <- function(){
  test <- data.frame(a = numeric(0), b = numeric(0))
  test <- rbind(test, data.frame(a= 1:3, b = 2:4))
  print(test)
}

#corr
corr <- function(directory, threshold = 0){
  corr_result <- numeric(0)
  
  complete_cases <- complete(directory)
  
  complete_cases <- complete_cases[complete_cases$nobs >= threshold, ]
 
  
  if(nrow(complete_cases) >0 ){
    for (i in complete_cases$id ) {
      
      path <- paste(getwd(),"/",directory,"/",sprintf("%03d",i),".csv",sep="")
      
      da <- read.csv(path)
      
      dat <- da[(!is.na(da$sulfate)), ]
     
      dat <- dat[(!is.na(dat$nitrate)), ]
     
      sulfatedata <- dat$sulfate
      
      nitratedata <-dat$nitrate
      
      corr_result <- c(corr_result, cor(sulfatedata, nitratedata))
      
    }
    
    
  }
  corr_result
}

