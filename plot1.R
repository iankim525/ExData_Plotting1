## Plot 1

## open PNG 
png(file = "./ElectricPowerConsumption/plot1.png", width = 480, height = 480)

## read the original data
original_data <- read.table("./ElectricPowerConsumptionData/household_power_consumption.txt", 
                            sep=";", header = TRUE)
## Using Date and Time columns, create a new column "Newtime" and subset the data
## of 2007-02-01 and 2007-02-02.
datetime <- paste(original_data$Date, original_data$Time)
original_data$Newtime <- strptime(datetime, format = "%d/%m/%Y %H:%M:%S")
data <- subset(original_data, Newtime >= "2007-02-01" & Newtime < "2007-02-03")

## plot
hist(as.numeric(as.character(data$Global_active_power)), col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

## close PNG
dev.off()