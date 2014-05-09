year <- c(1:3)
province <- c(1:10)
industryNum <- 19
industry <- c(1:industryNum)
startColumn <- 3


ratio <- yeardata

for(y in year){
    for(p in province){
        sum <- sum(yeardata[industry+industryNum*(p-1), startColumn+y-1])
        ratio[industry+industryNum*(p-1), startColumn+y-1] <- ratio[industry+industryNum*(p-1), startColumn+y-1]/sum
    }
}

sum(ratio[industry, startColumn])

write.csv(ratio, "/Users/xiangjiang/Documents/temp/data/Average_income_ratio.csv", row.names = FALSE)