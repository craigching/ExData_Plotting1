loadData <- function() {
    
    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    datafile = "household_power_consumption.txt"
    destfile = "household_power_consumption.zip"
    
    if (!file.exists(datafile)) {
        download.file(url, destfile = destfile, method = "curl")
        unzip(destfile)
    }
    
    # We are only reading data for the dates 2/1/2007 and 2/2/2007
    data <- read.table(file = datafile,
                       stringsAsFactors = FALSE,
                       sep = ";",
                       skip = 66637,
                       nrows = 2880)

    # Grab the following columns from the first line of the data file
    # Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_1;Sub_metering_2;Sub_metering_3
    colnames(data) <- strsplit(readLines(datafile, n = 1), ";")[[1]]
    
    # Create a new column named "DateTime" that combines the Date and Time columns
    # into one and converts to a proper date/time format
    data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

    data
}
