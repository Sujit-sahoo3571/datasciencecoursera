# read method of fread vs read.csv()
readmethod <- function(){
  #fread()
  qdata <- fread("mytxt1.csv")
   names(qdata)
  print(qdata[c(1,2)])
  print(qdata[1])
  
  # read.csv()
  qdata <- read.csv("mytxt1.csv")
  names(qdata)
 
 #to print two row 
  qdata[c(1,2), ]
  
        nrow(qdata)
        
        tail(qdata, 2)
        
        qdata[47, ]
        
        qdata[47, "Ozone"]
 }

#count NAs
countNa <- function(){
        
           qdata <- read.csv("mytxt1.csv")
          print(names(qdata))
           sub <- subset(qdata, is.na(Ozone))
           nrow(sub)
  
  
}
#count complete.cases 
ccomp <- function(){
        
        qdata <- read.csv("mytxt1.csv")
       com <-  qdata[complete.cases(qdata$Ozone), ]
       nrow(com)
}
#mean of Ozone
cmean <-function(){
        qdata <- read.csv("mytxt1.csv")
        sub <- subset(qdata, !is.na(Ozone), select = Ozone)
        apply(sub, 2, mean)
}

#mean with some condition with column
# and (&)

cmeanc <- function(){
        qdata <- read.csv("mytxt1.csv")
        print(names(qdata))
        sub <- subset(qdata, Ozone >31 & Temp >90, select = Solar.R) # subset(arr, cond, select)
        apply(sub, 2, mean)
        
}

#find  temp mean with month= 6 

cmeanm <- function(){
        qdata <- read.csv("mytxt1.csv")
        print(names(qdata))
        sub <- subset(qdata, Month == 6 & (!is.na(Temp)) , select = Temp )
        apply(sub, 2, mean)
        
}

# maximum value of Ozone  in a month 

cmeano <- function(){
        
        qdata <- read.csv("mytxt1.csv")
        names(qdata)
        sub <- subset(qdata, Month == 5 & (!is.na(Ozone)), select = Ozone)
        apply(sub, 2, max)
}



