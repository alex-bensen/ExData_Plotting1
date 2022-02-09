#Reading txt file
data <- read.csv2('~/ExData_Plotting1/household_power_consumption.txt')

data1 <- data[which(data$Date == '1/2/2007' | data$Date == '2/2/2007'), ]
hist(as.numeric(data1$Global_active_power), 
     xlab = 'Global Active Power (kilowatts)',
     main = 'Global Active Power',
     col = 'red')