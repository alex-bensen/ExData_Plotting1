#Reading txt file
data <- read.table('~/ExpDataScience-Project1/household_power_consumption.txt')

#Creating a dataframe from the textfile
data1 <- data.frame(matrix(ncol = 9, nrow = 0))
colnames(data1) <- unlist(strsplit(data[1,], split = ';'))

for (i in 2:nrow(data)) {
  new <- unlist(strsplit(data[i,], split = ';'))
  data1[nrow(data1) +1, ] <- new
}

hist(as.numeric(data1$Global_active_power), 
     xlab = 'Global Active Power (kilowatts)',
     main = 'Global Active Power',
     col = 'red')