data <- read.table("household_power_consumption.txt", header = TRUE, stringsAsFactors=FALSE, sep=";")
data.sub <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
dT <- as.POSIXlt(paste(as.Date(data.sub$Date, format="%d/%m/%Y"), data.sub$Time, sep=" "))
plot(dT, data.sub$Global_active_power, xlab=" ", ylab="Global Active Power (kilowatts)", lines(dT, data.sub$Global_active_power, type="l"))
png("plot2.png", width=480, height=480)