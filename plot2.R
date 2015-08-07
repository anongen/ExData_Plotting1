all_data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
the_dates <- (all_data$Date=="1/2/2007" | all_data$Date=="2/2/2007")
the_data <- all_data[the_dates,]
# Plot 2
Sys.setlocale("LC_TIME", "English")
date_time <- strptime(paste(as.character(the_data$Date),as.character(the_data$Time)),format="%d/%m/%Y %H:%M:%S")
png(filename="plot2.png",width=480,height=480)
plot(date_time,as.numeric(as.character(the_data$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()