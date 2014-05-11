source("./loadData.R")

data <- loadData()

hist(data$Global_active_power,
     main = "Global Active Power",
     col = "red",
     xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()
