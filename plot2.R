source("./loadData.R")

data <- loadData()

plot(data$DateTime,
     data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")
