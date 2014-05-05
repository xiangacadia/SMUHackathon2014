
yeardata <- c()
yearNum <- 20
years <- c(1:yearNum)
for(year in years){
    temp <- rep(0, nrow(result))
    for(i in c(1:12)){temp <- temp + result[,i+2+(year-1)*12]}
    yeardata <- cbind(yeardata, temp)
}
yeardata <- cbind(result[,1:startColumn-1], yeardata)
names(yeardata)[startColumn:ncol(yeardata)] <- as.character(1993+years)
write.csv(yeardata, "/Users/xiangjiang/Documents/temp/data/Umemployment rate/2.[no missing value-yearly]Unemployment-rate-new.csv", row.names = FALSE)
