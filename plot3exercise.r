
#setup data.
data_File <- "household_power_consumption.txt"
data_table <- read.table(data_File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data_table[data_table$Date %in% c("1/2/2007","2/2/2007") ,]
subMet1 <- as.numeric(subSetData$Sub_metering_1)
subMet2 <- as.numeric(subSetData$Sub_metering_2)
subMet3 <- as.numeric(subSetData$Sub_metering_3)
#draw plot
png("plot3.png", width=480, height=480)
plot(datetime, subMet1, type="l", ylab="Energy subMet", xlab="")
lines(datetime, subMet2, type="l", col="red")
lines(datetime, subMet3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
