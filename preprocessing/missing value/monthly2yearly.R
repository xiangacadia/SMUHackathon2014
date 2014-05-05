yeardata <- c()
for(year in c(1:13)){
    temp <- rep(0, ncol(result))
    for(i in c(1:12)){temp <- temp + result[,i+2+(year-1)*12]}
    yeardata <- cbind(yeardata, temp)
}
yeardata <- cbind(data[,1:startColumn-1], yeardata)
names(yeardata)[startColumn:ncol(yeardata)] <- c("01","02","03","04","05","06","07","08","09","10","11","12","13")
write.csv(yeardata, "/Users/xiangjiang/Documents/temp/Employee number/2.[no missing value-yearly] Employee number.csv", row.names = FALSE)