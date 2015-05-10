# get Data
setwd("~/.../ExData_Plotting1")
source("Base_Code.R")
Plot3.Data <- PwrData()
attach(Plot3.Data)
#-----------------------------------------------#

# Plot Args
Width     <- 480
Height    <- 480
Units     <- "px"
Margins   <- c(8,8,7,6) #c(Down, Left, Up, Right)
X.Axis    <- ""
Y.Axis    <- "Energy Sub Metering"
LegendLoc <- "topright"
LegendCol <- c("black","red","blue")
legend    <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

#Set up graphical device
png(filename = 'Plot3.png' , width = Width, height = Height, units = Units)
par(mar = Margins)

# Plot
#----------------#
plot (DateTime, Sub_metering_1, col = LegendCol[1], type = "l", xlab = X.Axis, ylab = Y.Axis,)
lines(DateTime, Sub_metering_2, col = LegendCol[2], type = "l")
lines(DateTime, Sub_metering_3, col = LegendCol[3], type = "l")
legend(LegendLoc, legend = legend, col = LegendCol,  lwd = 1,  cex = 0.5)

# Close graphical device
dev.off()
