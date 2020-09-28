# Date and Time 
cdatetime <- function(){
        x <-as.Date("1970-01-01")
        print(x)
        print(unclass(x))
        x<- as.Date("1970-02-02")
        print(x)
        print(unclass(x))
        #posixlt()
        x<- Sys.time()
        print("My pc Time : ")
        print(x)
        print("unclass")
        print(unclass(x))
        p <- as.POSIXlt(x)
        print(p)
        print(unclass(p))
        print(names(unclass(p)))
        print(p$sec)
        #posixct
        x<- Sys.time()
        print(unclass(x))
        
   #     print(x$sec) ##Error 
        
}

# strptime
cstrptime <- function(){
        datastr <- c("January 10,2012 10:40", "December 9,2011 9:10")
        x <- strptime(datastr,"%B%d,%Y %H:%M")
        print(x)
       # class(x)
        print(class(x))
        
}

# operation on Date and Time
opdate <- function(){
      #1
        x <- as.Date("2012-01-01")
        y<- strptime("9 jan 2011 11:34:21", "%d %B %Y %H:%M:%S")
        print(x)
        print(y)
        #print(x-y) ## Error
        
        #2
        x <- as.POSIXlt(x)
        print(x)
        print(x-y)
        #3
        x <-as.Date("2012-03-01")
        y<-as.Date("2012-02-28")
        print(x-y)
        #4
        x <- as.POSIXct("2012-10-25 01:00:00")
        y <- as.POSIXct("2012-10-25 06:00:00", tz="GMT")
        print(y-x)
        print(x-y)
        
        
} 