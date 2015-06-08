data <- read.table("household_power_consumption.txt", header = TRUE, stringsAsFactors=FALSE, sep=";")
data.sub <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
hplot <- as.numeric(as.vector(data.sub$Global_active_power))
hist(hplot, col="Red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
png("plot1.png", width=480, height=480)
