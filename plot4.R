source("./loadData.R")

data <- loadData()

png("plot4.png")

par(mfrow = c(2, 2))
par(cex = 0.80)

plot(data$DateTime,
     data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")

plot(data$DateTime,
     data$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

plot(data$DateTime,
     data$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = "")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright",
       lty = 1,
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(data$DateTime,
     data$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

#dev.copy(png, file = "plot4.png")
dev.off()
