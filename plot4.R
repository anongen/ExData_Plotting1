all_data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
the_dates <- (all_data$Date=="1/2/2007" | all_data$Date=="2/2/2007")
the_data <- all_data[the_dates,]
# Plot 3

Sys.setlocale("LC_TIME", "English")
date_time <- strptime(paste(as.character(the_data$Date),as.character(the_data$Time)),format="%d/%m/%Y %H:%M:%S")
png(filename="plot4.png",width=480,height=480)
par(mfrow=c(2,2))

plot(date_time,as.numeric(as.character(the_data$Global_active_power)),type="l",xlab="",ylab="Global Active Power")

plot(date_time,as.numeric(as.character(the_data$Voltage)),type="l",xlab="datetime",ylab="Voltage")

plot(date_time,as.numeric(as.character(the_data$Sub_metering_1)),type="l",xlab="",ylab="Energy sub metering")
lines(date_time,as.numeric(as.character(the_data$Sub_metering_2)),type="l",col="red")
lines(date_time,as.numeric(as.character(the_data$Sub_metering_3)),type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")

plot(date_time,as.numeric(as.character(the_data$Global_reactive_power)),yaxp=c(0.0,0.5,5),type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()