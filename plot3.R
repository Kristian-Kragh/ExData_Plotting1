raw <- read.table("C:/Users/Kristian/SkyDrive/Coursera/Data Science Specialization/Exploratory Data Analysis/Data/household_power_consumption.txt", sep=";", header = TRUE, na.strings ="?")
rsub <- raw[(raw$Date %in% c("1/2/2007","2/2/2007")),]
rsub$DateTimeChr <- paste(as.character(rsub$Date),as.character(rsub$Time))
rsub$DateTime <- strptime(rsub$DateTimeChr,"%d/%m/%Y %H:%M:%S")
par(oma=c(0,1,2,0))
plot(rsub$DateTime,rsub$Sub_metering_1,xlab="",ylab="Energy sub metering",type="n")
lines(rsub$DateTime,rsub$Sub_metering_1,type="l",ylab="Global Active Power (kilowatts)")
lines(rsub$DateTime,rsub$Sub_metering_2,type="l",ylab="Global Active Power (kilowatts)",col="red")
lines(rsub$DateTime,rsub$Sub_metering_3,type="l",ylab="Global Active Power (kilowatts)",col="blue")
mtext("Plot 3",outer=TRUE, adj = 0)
legend("topright",  lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot3.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!
