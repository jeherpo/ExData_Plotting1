with(Data, {
plot(Data$Time, Data$Sub_metering_1, 
     type="l", 
     col="black", 
     xlab="", 
     ylab="Energy sub metering")
lines(Data$Time, Data$Sub_metering_2, col="red")
lines(Data$Time, Data$Sub_metering_3, col="blue")

})

legend("topright", col = c("black", "red", "blue"), lty = 1, lwd=2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(width= 480, height=480, png, file="plot3.png")
dev.off()
