#Reading txt file
data <- read.csv2('~/ExData_Plotting1/household_power_consumption.txt')

data1 <- data[which(data$Date == '1/2/2007' | data$Date == '2/2/2007'), ]

par(mfrow = c(2.,2))

datetime <- strptime(paste(data1$Date, data1$Time, sep = ' '), '%d/%m/%Y %H:%M:%S')

plot(datetime, data1$Global_active_power, type = 'l', xlab ='',
     ylab = 'Global Active Power')

plot(datetime, data1$Voltage, type = 'l', xlab ='datetime',
     ylab = 'Voltage')

datetime <- strptime(paste(data1$Date, data1$Time, sep = ' '), '%d/%m/%Y %H:%M:%S')
plot(datetime, data1$Sub_metering_1, type = 'l', xlab = '', ylab = 'Energy sub metering')
lines(datetime, data1$Sub_metering_2, type = 'l', col = 'red')
lines(datetime, data1$Sub_metering_3, type = 'l', col = 'blue')

legend('topright', 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       col = c('black', 'red', 'blue'),
       lty = c(1, 1, 1), cex = 0.8)

plot(datetime, data1$Global_reactive_power, type = 'l', xlab ='datetime',
     ylab = 'Global_reactive_power')