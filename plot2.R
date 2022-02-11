#Reading txt file
data <- read.csv2('~/ExData_Plotting1/household_power_consumption.txt')

data1 <- data[which(data$Date == '1/2/2007' | data$Date == '2/2/2007'), ]

datetime <- strptime(paste(data1$Date, data1$Time, sep = ' '), '%d/%m/%Y %H:%M:%S')
plot(datetime, data1$Global_active_power, type = 'l', xlab ='',
     ylab = 'Global Active Power (kilowatts)')

      


