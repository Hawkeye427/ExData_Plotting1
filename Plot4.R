# get Data
setwd("~/.../ExData_Plotting1")
source("Base_Code.R")
Plot4.Data <- PwrData()
attach(Plot4.Data)
#-----------------------------------------------#

# Plot Args
Width     <- 480
Height    <- 480
Units     <- "px"
Margins   <- c(4,4,4,2) #c(Down, Left, Up, Right)
X.Axis    <- c("", "DateTime")
Y.Axis    <- c("Global Active Power", "Voltage", "Energy Sub Metering", "Global_reactive_power")
LegendLoc <- "topright"
LegendCol <- c("black","red","blue")
Legend    <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

#Set up graphical device
png(filename = 'Plot4.png' , width = Width, height = Height, units = Units)
par(mfrow=c(2,2), mar = Margins)

# Plot
#----------------#
        # 1.
plot(DateTime, Global_active_power, xlab = X.Axis[1], ylab = Y.Axis[1], type = "l")
        # 2.
plot(DateTime, Voltage, xlab = X.Axis[2], ylab = Y.Axis[2], type = "l")
        # 3.
plot (DateTime, Sub_metering_1, col = LegendCol[1], type = "l", xlab = X.Axis[1], ylab = Y.Axis[3])
lines(DateTime, Sub_metering_2, col = LegendCol[2], type = "l")
lines(DateTime, Sub_metering_3, col = LegendCol[3], type = "l")
legend(LegendLoc, legend = legend, col = LegendCol,  lwd = 1,  cex = 0.5, bty = "n")
        # 4.
plot(DateTime, Global_reactive_power, xlab = X.Axis[2], ylab = Y.Axis[4], type = "l")

# Close graphical device
dev.off()
