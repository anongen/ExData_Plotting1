all_data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
the_dates <- (all_data$Date=="1/2/2007" | all_data$Date=="2/2/2007")
the_data <- all_data[the_dates,]
# Plot 1
png(filename="plot1.png",width=480,height=480)
hist(as.numeric(as.character(the_data$Global_active_power)),ylim=c(0,1200),xlim=c(0,6),xaxp=c(0,6,3),main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()