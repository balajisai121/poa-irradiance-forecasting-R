library(forecast)
library(readr) 

# Reading data
Data_S3 <- read_csv("Data_S3.csv")
Test_S3 <- read_csv("Test_S3.csv")

# Ensure DATE_TIME is in proper datetime format and POA is numeric
Data_S3$DATE_TIME <- as.POSIXct(Data_S3$DATE_TIME, format = "%Y-%m-%d %H:%M:%S")
Data_S3$POA <- as.numeric(Data_S3$POA)

# Convert to ts object for time series analysis
# Set the frequency to 144 to match the seasonal period of your ARIMA model
poa_ts <- ts(Data_S3$POA, frequency = 144)

# Time series plot
library(ggplot2)
ggplot(Data_S3, aes(x = DATE_TIME, y = POA)) +
  geom_line() +
  labs(title = "Time Series Plot of POA", x = "Timestamp", y = "POA")

# Fit ARIMA model using specific parameters
fit_arima <- Arima(poa_ts, order = c(5, 0, 5), seasonal = list(order = c(2, 2, 2), period = 144))

# Forecast next 71 points
forecast_arima <- forecast(fit_arima, h = 71)

# Print and plot forecast
print(forecast_arima)
plot(forecast_arima)
accuracy(forecast_arima)

# Save forecast values with dates from Test_S3
forecast_values <- data.frame(DATE_TIME = Test_S3$DATE_TIME, Forecast = forecast_arima$mean)
accuracy(forecast_arima)
print(forecast_values)

write_csv(forecast_values, "Collaborator1_Test_S3.csv")
