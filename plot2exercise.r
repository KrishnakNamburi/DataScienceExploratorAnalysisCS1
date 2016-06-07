#setup data
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#convert the data
globalActivePower <- as.numeric(subSetData$Global_active_power)
#set the graphics device.
png("plot2.png", width=480, height=480)
#plot the graph
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
#close the graphics devices
dev.off()
