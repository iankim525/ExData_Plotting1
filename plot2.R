## Plot 2

## open PNG 
png(file = "./Electric Power Consumption/plot2.png")

## the subset data from plot1 will be re-used. 
## plot
with(data, plot(Newtime, as.numeric(as.character(Global_active_power)), type = "l",
                xlab = "", ylab = "Global Active Power (kilowatts)"))

## close PNG
dev.off()