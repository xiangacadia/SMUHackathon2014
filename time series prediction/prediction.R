library(forecast)

data <- read.csv("C:\\Users\\ML3Lab\\Dropbox\\SMU Hackathon 2014\\data\\Average income\\3.[no missing value-yearly]Average income.csv")
startCol <- 3
endCol <- ncol(data)

yearAvaliable <- 2013
to2018 <- 2018 - yearAvaliable
to2014 <- 2014-yearAvaliable

year2018 <- c()
year2014 <- c()

for(rowNum in c(1:nrow(data))){

value <- as.double(data[rowNum,startCol:endCol])
## create time series objects
## frequencty: the number of observations per unit of time
series <- ts(value,frequency=1)

## Fit best ARIMA model to univariate time series
## Returns best ARIMA model according to either AIC, AICc or BIC value. 
## The function conducts a search over possible model within the order constraints provided.
fit <- auto.arima(series)

fcast <- forecast(fit)

fcast$mean[fcast$mean<0] <- 0

year2014 <- append(year2014, fcast$mean[to2014])
year2018 <- append(year2018, fcast$mean[to2018])
}

data <- cbind(data[,c(1,2,ncol(data))], year2014,year2018)

write.csv(data,"C:\\Users\\ML3Lab\\Dropbox\\SMU Hackathon 2014\\predictions\\Average income.csv")
