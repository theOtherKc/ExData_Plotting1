plot1 <- function() {
        hist(dif$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
        dev.copy(png, file="plot1.png", width=480, height=480)
        dev.off()
        cat("Plot1.png saved in", getwd())
}
plot1()

plot2 <- function() {
 	plot(dif$timestamp,dif$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
 	dev.copy(png, file="plot2.png", width=480, height=480)
 	dev.off()
 	cat("plot2.png saved in", getwd())
 }
plot2()


plot3 <- function() {
        plot(dif$timestamp,dif$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(dif$timestamp,dif$Sub_metering_2,col="red")
        lines(dif$timestamp,dif$Sub_metering_3,col="blue")
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
        dev.copy(png, file="plot3.png", width=480, height=480)
        dev.off()
        cat("plot3.png saved in", getwd())
}
plot3()

plot4 <- function() {
        par(mfrow=c(2,2))
        
        ##plot1()
        plot(dif$timestamp,dif$Global_active_power, type="l", xlab="", ylab="Global Active Power")
        ##plot2()
        plot(dif$timestamp,dif$Voltage, type="l", xlab="datetime", ylab="Voltage")
        
        ##plot3()
        plot(dif$timestamp,dif$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(dif$timestamp,dif$Sub_metering_2,col="red")
        lines(dif$timestamp,dif$Sub_metering_3,col="blue")
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly
        
        #plot4()
        plot(dif$timestamp,dif$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
        
        #OUTPUT
        dev.copy(png, file="plot4.png", width=480, height=480)
        dev.off()
        cat("plot4.png saved in", getwd())
}
plot4()