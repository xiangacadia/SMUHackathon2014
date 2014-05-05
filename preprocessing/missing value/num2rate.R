year <- c(1:17)
province <- c(1:10)
industryNum <- 13
industry <- c(1:industryNum)


ratio <- yeardata

for(y in year){
    for(p in province){
        sum <- sum(yeardata[industry+industryNum*(p-1), startColumn+y-1])
        ratio[industry+industryNum*(p-1), startColumn+y-1] <- ratio[industry+industryNum*(p-1), startColumn+y-1]/sum
    }
}

sum(ratio[industry, startColumn])

write.csv(ratio, "/Users/xiangjiang/Documents/temp/Graduates/1.[ratio]Graduates-1993-2012.csv", row.names = FALSE)