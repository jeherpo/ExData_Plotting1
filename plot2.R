# Load the name of the directory on the unzipped folder
File<- file("household_power_consumption.txt")

# Load only the data between 01/02/2007 and 02/02/2017 
# and Load the name of the variables and also get rid off the NA values.
Data <- read.table(text = grep("^[1,2]/2/2007", readLines(File), value = TRUE), 
                   col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", 
                                 "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                   sep = ";", header = TRUE, na.strings="?")

Data$Time <- strptime(paste(Data$Date, Data$Time), "%d/%m/%Y %H:%M:%S")
Data$Date <- as.Date(Data$Date, "%d/%m/%Y")

plot(Data$Time, Data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

# Make a copy of the graph in png format and the aspect ratio requested 480 x 480 pixels.
dev.copy(width= 480, height=480, png, file="plot2.png")
dev.off()
