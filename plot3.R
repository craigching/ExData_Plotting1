source("./loadData.R")

data <- loadData()

plot(data$DateTime,
     data$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = "")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))