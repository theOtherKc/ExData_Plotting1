if(!file.exists("exdata-data-household_power_consumption.zip")) {
        temp <- tempfile()
        download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
        file <- unzip(temp)
        unlink(temp)
}
powerdata <- read.table(file, header=T, sep=";")
powerdata$Date <- as.Date(powerdata$Date, format="%d/%m/%Y")
dif <- powerdata[(powerdata$Date=="2007-02-01") | (powerdata$Date=="2007-02-02"),]
dif$Global_active_power <- as.numeric(as.character(dif$Global_active_power))
dif$Global_reactive_power <- as.numeric(as.character(dif$Global_reactive_power))
dif$Voltage <- as.numeric(as.character(dif$Voltage))
dif <- transform(dif, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
dif$Sub_metering_1 <- as.numeric(as.character(dif$Sub_metering_1))
dif$Sub_metering_2 <- as.numeric(as.character(dif$Sub_metering_2))
dif$Sub_metering_3 <- as.numeric(as.character(dif$Sub_metering_3))