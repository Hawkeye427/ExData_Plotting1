# get Data
setwd("~/.../ExData_Plotting1") 
source("Base_Code.R")
Plot2.Data <- PwrData()
attach(Plot2.Data)
#-----------------------------------------------#

# Plot Args
Width     <- 480
Height    <- 480
Units     <- "px"
Margins   <- c(8,8,7,6) #c(Down, Left, Up, Right)
X.Axis    <- ""
Y.Axis    <- "Global Active Power(kilowatts)"
#Set up graphical device
png(filename = 'Plot2.png' , width = Width, height = Height, units = Units)
par(mar = Margins)

#Plot
#----------------#
plot(DateTime, Global_active_power, xlab = X.Axis, ylab = Y.Axis, type = "l")

# Close graphical device
dev.off()
