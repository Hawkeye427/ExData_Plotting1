# Create function to retrieve data for all four graphs
PwrData <- function() {

        # Dates informations and formats
        StartDate         <- "2007-02-01"
        EndDate           <- "2007-02-02"        
        Date_Format       <- "%d/%m/%Y"
        DateTime_Format   <- "%Y-%m-%d %H:%M:%S"
        
         # loading datatable library
        library(data.table)
        library(dplyr)
        library(lubridate)
        
        #File Args
        file           <- "household_power_consumption.txt"
        variable.class <-c(rep('character',2),rep('numeric',7))
        
        # Read file in a datatable and format dates
        BaseData      <-read.table(file,header=TRUE,sep=';',na.strings='?',colClasses=variable.class)
        BaseData$Date <- as.Date(BaseData$Date, format=Date_Format)
        base.Data     <- tbl_df(BaseData)
        pwr.Data      <- filter(base.Data,Date== StartDate | Date== EndDate)
        pwr.Data$DateTime <- strptime(paste(pwr.Data$Date, pwr.Data$Time), format = DateTime_Format) 
#        View(pwr.Data)
        pwr.Data      <-pwr.Data[,c(10,3:9)]
        return(pwr.Data)
}
