# get Data
setwd("~/.../ExData_Plotting1")
source("Base_Code.R")
Plot1.Data <- PwrData()
attach(Plot1.Data)
#-----------------------------------------------#

# Plot Args
Width     <- 480
Height    <- 480
Units     <- "px"
Margins   <- c(8,8,7,6) #c(Down, Left, Up, Right)
Color     <- "red"
Title     <- "Global Active Power"
X.Axis    <- "Global Active Power(kilowatts)"

#Set up graphical device
png(filename = 'Plot1.png' , width = Width, height = Height, units = Units)
par(mar = Margins)

# Plot
#----------------#
hist(Global_active_power, col = Color, main = Title, xlab = X.Axis)

# Close graphical device
dev.off()
