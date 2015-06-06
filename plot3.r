data <- read.table("household_power_consumption.txt", header = TRUE, stringsAsFactors=FALSE, sep=";")
data.sub <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
dT <- as.POSIXlt(paste(as.Date(data.sub$Date, format="%d/%m/%Y"), data.sub$Time, sep=" "))
plot(dT, data.sub$Sub_metering_1, xlab=" ", ylab="Energy sub metering", lines(dT, data.sub$Sub_metering_1, type="l"))
lines(dT, data.sub$Sub_metering_2, type="l", col="Red")
lines(dT, data.sub$Sub_metering_3, type="l", col="Blue")
xrange <- range(dT) 
yrange <- range(data.sub$Sub_metering_1)
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1), col=c("black","red","blue"))
