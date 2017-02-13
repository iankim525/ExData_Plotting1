## Plot 4

## open PNG 
png(file = "./Electric Power Consumption/plot4.png")

## set up a 2x2 frame for the plots
par(mfrow = c(2,2), mar = c(4,4,2,2))

## the subset data from plot1 will be re-used. 
## top left plot
with(data, plot(Newtime, as.numeric(as.character(Global_active_power)), type = "l",
                xlab = "", ylab = "Global Active Power"))

## top right plot
with(data, plot(Newtime, as.numeric(as.character(Voltage)), type = "l",
                xlab = "datetime", ylab = "Voltage"))

## bottom left plot
with(data, plot(Newtime, as.numeric(as.character(Sub_metering_1)), type = "n",
                xlab = "", ylab = "Energy sub metering"))
points(data$Newtime, as.numeric(as.character(data$Sub_metering_1)), type = "l")
points(data$Newtime, as.numeric(as.character(data$Sub_metering_2)), type = "l", col = "red")
points(data$Newtime, as.numeric(as.character(data$Sub_metering_3)), type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## bottom right plot
with(data, plot(Newtime, as.numeric(as.character(Global_reactive_power)), type = "l",
                xlab = "datetime", ylab = "Global_reactive_power"))

## close PNG
dev.off()