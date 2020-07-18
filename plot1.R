# Sript for plot1

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

data$Date <- as.Date(data$Date, "%d/%m/%Y")

data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

data <- transform(data, datetime=as.POSIXct(paste(Date, Time)))


hist(data$Global_active_power, col="red", main="Global Active Power", xlab = "Global 
Active Power (kilowatts)")
