raw <- read.table("C:/Users/Kristian/SkyDrive/Coursera/Data Science Specialization/Exploratory Data Analysis/Data/household_power_consumption.txt", sep=";", header = TRUE, na.strings ="?")
rsub <- raw[(raw$Date %in% c("1/2/2007","2/2/2007")),]
par(oma=c(0,1,2,0))
hist(as.numeric(as.character(rsub$Global_active_power)),xlim= c(0,6),col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)", xaxt='n')
axis(side=1, at=seq(0,6, 2),labels=TRUE)
mtext("Plot 1",outer=TRUE, adj = 0)
dev.copy(png, file = "plot1.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!
