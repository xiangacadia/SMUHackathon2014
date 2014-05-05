## load data
data <- read.csv("/Users/xiangjiang/Dropbox/SMU Hackathon 2014/data/Umemployment rate/2.[no missing value-yearly]Unemployment-rate-new.csv")

## initialization
fixedCols <- c(1,2)
startCol <- 3
endCol <- ncol(data)
windowSizes <- c(2:5)

## vary window size
for(windowSize in windowSizes){
    
    ## get series
    series <- c()
    for(i in c((startCol+windowSize-1):endCol)){
        series <- rbind(series, c((i-windowSize+1):i))
    }
    
    ## convert to series dataset
    result <- c()
    result.names <- append(names(data)[fixedCols],as.character(c(1:windowSize)))
    
    fixed <- data[,fixedCols]
    for(i in c(1:nrow(series))){
        temp <- cbind(fixed, data[series[i,]])
        names(temp) <- append(names(data)[fixedCols],as.integer(c(1:windowSize)))
        result <- rbind(result, temp)
    }
    
    filename <- paste0("/Users/xiangjiang/Dropbox/SMU Hackathon 2014/data/Umemployment rate/",as.character(windowSize),".[time series-window size-",as.character(windowSize+1),"]Unemployment-rate-new.csv")
    
    write.csv(result,filename,row.names=FALSE)
}