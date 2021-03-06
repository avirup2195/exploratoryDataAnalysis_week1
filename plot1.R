setwd("C:/Users/Avirup Gupta Roy/Desktop")
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subData$Global_active_power)
png("plot1.png")
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()