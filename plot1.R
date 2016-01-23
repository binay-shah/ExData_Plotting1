setwd("/Users/binay/Downloads/Data scientist toolbox/cleaning data")
library(data.table)
DT<-fread("./data/household_power_consumption.txt", sep=";", stringsAsFactors = FALSE, na.strings = "?", header=TRUE)
DT$Date<-as.Date(DT$Date, format="%d/%m/%Y")
DT_subset<-subset(DT, Date>="2007-02-01" & Date<="2007-02-02")
png(file="plot1.png", width = 480, height = 480)
hist(DT_subset$Global_active_power, col="red", main ="Global Active Power", xlab="Global Active Power(kilowatts)", ylim=c(0,1200), xlim=c(0,6))
dev.off()


