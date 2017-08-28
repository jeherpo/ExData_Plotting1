# Load the name of the directory on the unzipped folder
File<- file("household_power_consumption.txt")

# Load only the data between 01/02/2007 and 02/02/2017 
# and Load the name of the variables and also get rid off the NA values.
Data <- read.table(text = grep("^[1,2]/2/2007", readLines(File), value = TRUE), 
        col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", 
        "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
        sep = ";", header = TRUE, na.strings="?")

# Plot a Histogram, making red the bars, with the title "Global Active Power" and the label "Global Active Power (kilowatts)"
hist(Data$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")
# Make a copy of the graph in png format and the aspect ratio requested 480 x 480 pixels.
dev.copy(width= 480, height=480, png, file="plot1.png")
dev.off()



