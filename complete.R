
complete <- function(directory , id = 1:332){
  
  results <- data.frame(id = numeric(0), nobs = numeric(0))
  
  for (i in id) {
    path <- paste(getwd(), "/",directory,"/",sprintf("%03d",i),".csv",sep = "")
    da <- read.csv(path)
  #  print(da)
        dat <- da[(!is.na(da$sulfate)), ]
   # print(dat)
   # nob <- nrow(dat)
  #  print(nob)
  #  print("new ")
        dat <- dat[(!is.na(dat$nitrate)), ]
   # print(dat)
        nobs <- nrow(dat)
    #print(nob)
   # print("new ")
  #  print(da["sulfate"])
        results <-rbind(results, data.frame(id=i, nobs=nobs))
    
  }
  results 
  
}

rowprint <- function(){
  test <- data.frame(a = numeric(0), b = numeric(0))
   test <- rbind(test, data.frame(a= 1:3, b = 2:4))
   print(test)
}
