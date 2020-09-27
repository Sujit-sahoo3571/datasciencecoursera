#corr
corr <- function(directory, threshold = 0){
  corr_result <- numeric(0)
 
    complete_cases <- complete(directory)
    complete_cases <- complete_cases[complete_cases$nobs >= threshold, ]
    #print(complete_cases$id)
    
    if(nrow(complete_cases) >0 ){
      for (i in complete_cases$id ) {
        path <- paste(getwd(),"/",directory,"/",sprintf("%03d",i),".csv",sep="")
        da <- read.csv(path)
        dat <- da[(!is.na(da$sulfate)), ]
        dat <- dat[(!is.na(dat$nitrate)), ]
        #print(dat)
        sulfatedata <- dat$sulfate
      
        nitratedata <-dat$nitrate
        
      #  rel <- cor(sulfatedata,nitratedata )
       # print(rel[(!is.na(rel))])
      
        corr_result <- c(corr_result, cor(sulfatedata, nitratedata))
      }
      
      
    }
    corr_result
}


#complete
 complete <- function(directory, id= 1:332){
   result <- data.frame(id= numeric(0), nobs = numeric(0))
   
   for (i in id) {
     path <- paste(getwd(), "/",directory,"/",sprintf("%03d",i),".csv", sep = "")
     da <- read.csv(path)
     dat <- da[(!is.na(da$sulfate)), ]
     dat <- dat[(!is.na(dat$nitrate)), ]
    #  print(dat)
      nobs <- nrow(dat)
     # print(val)
      result <- rbind(result, data.frame(id = i, nobs = nobs))
   }
   result
 
 }
 
 