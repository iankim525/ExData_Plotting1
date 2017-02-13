## Plot 3

## open PNG 
png(file = "./Electric Power Consumption/plot3.png")

## the subset data from plot1 will be re-used. 
## plot 
with(data, plot(Newtime, as.numeric(as.character(Sub_metering_1)), type = "n",
                xlab = "", ylab = "Energy sub metering"))
points(data$Newtime, as.numeric(as.character(data$Sub_metering_1)), type = "l")
points(data$Newtime, as.numeric(as.character(data$Sub_metering_2)), type = "l", col = "red")
points(data$Newtime, as.numeric(as.character(data$Sub_metering_3)), type = "l", col = "blue")

## adding legend
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## close PNG
dev.off()