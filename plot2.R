## Plot 2

## open PNG 
png(file = "./ElectricPowerConsumption/plot2.png", width = 480, height = 480)

## the subset data from plot1 will be re-used. 
## plot
with(data, plot(Newtime, as.numeric(as.character(Global_active_power)), type = "l",
                xlab = "", ylab = "Global Active Power (kilowatts)"))

## close PNG
dev.off()