raw <- read.table("C:/Users/Kristian/SkyDrive/Coursera/Data Science Specialization/Exploratory Data Analysis/Data/household_power_consumption.txt", sep=";", header = TRUE, na.strings ="?")
rsub <- raw[(raw$Date %in% c("1/2/2007","2/2/2007")),]
rsub$DateTimeChr <- paste(as.character(rsub$Date),as.character(rsub$Time))
rsub$DateTime <- strptime(rsub$DateTimeChr,"%d/%m/%Y %H:%M:%S")
par(oma=c(0,1,2,0))
plot(rsub$DateTime,rsub$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="n")
lines(rsub$DateTime,rsub$Global_active_power,type="l",ylab="Global Active Power (kilowatts)")
mtext("Plot 2",outer=TRUE, adj = 0)
dev.copy(png, file = "plot2.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!
