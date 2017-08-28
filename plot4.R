par(mfrow = c(2,2))

with(Data, {
plot(Data$Time, Data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

plot(Data$Time, Data$Voltage, 
       type="l", 
       col="black", 
       xlab="datetime", 
       ylab="Voltage")

plot(Data$Time, Data$Sub_metering_1, 
       type="l", 
       col="black", 
       xlab="", 
       ylab="Energy sub metering")
lines(Data$Time, Data$Sub_metering_2, col="red")
lines(Data$Time, Data$Sub_metering_3, col="blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd=2, bty = "n", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(Data$Time, Data$Global_reactive_power, 
     type="l", 
     col="black", 
     xlab="datetime", 
     ylab="Global_reactive_power")
})

dev.copy(width= 480, height=480, png, file="plot4.png")
dev.off()