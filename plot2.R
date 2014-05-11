source("./loadData.R")

data <- loadData()

png("plot2.png")

plot(data$DateTime,
     data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")

#dev.copy(png, file = "plot2.png")
dev.off()
