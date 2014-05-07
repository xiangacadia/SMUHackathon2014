library(forecast)

data <- read.csv("C:\\Users\\ML3Lab\\Dropbox\\SMU Hackathon 2014\\data\\Average income\\7.[time series-window size-5]Average income.csv")
#value <- c(1.2,1.7,1.6, 1.2, 1.6, 1.3, 1.5, 1.9, 5.4, 4.2, 5.5, 6.0, 5.6, 6.2, 6.8, 7.1, 7.1, 5.8, 0.0, 5.2, 4.6, 3.6, 3.0, 3.8, 3.1, 3.4, 2.0, 3.1, 3.2, 1.6, 0.6, 3.3, 4.9, 6.5, 5.3, 3.5, 5.3, 7.2, 7.4, 7.3, 7.2, 4.0, 6.1, 4.3, 4.0, 2.4, 0.4, 2.4, 1.2,1.7,1.6, 1.2, 1.6, 1.3, 1.5, 1.9, 5.4, 4.2, 5.5, 6.0, 5.6, 6.2, 6.8, 7.1, 7.1, 5.8, 0.0, 5.2, 4.6, 3.6, 3.0, 3.8, 3.1, 3.4, 2.0, 3.1, 3.2, 1.6, 0.6, 3.3, 4.9, 6.5, 5.3, 3.5, 5.3, 7.2, 7.4, 7.3, 7.2, 4.0, 6.1, 4.3, 4.0, 2.4, 0.4, 2.4)
startCol <- 3
endCol <- ncol(data)

for(rowNum in c(1:nrow(data))){

value <- as.integer(data[rowNum,startCol:endCol])
## create time series objects
## frequencty: the number of observations per unit of time
series <- ts(value,frequency=1) # consider adding a start so you get nicer labelling on your chart. 

## Fit best ARIMA model to univariate time series
## Returns best ARIMA model according to either AIC, AICc or BIC value. 
## The function conducts a search over possible model within the order constraints provided.
fit <- auto.arima(series)

fcast <- forecast(fit)

}