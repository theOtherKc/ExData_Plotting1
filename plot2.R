plot2 <- function() {
 	plot(dif$timestamp,dif$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
 	dev.copy(png, file="plot2.png", width=480, height=480)
 	dev.off()
 	cat("plot2.png saved in", getwd())
 }
plot2()
