
## Download files and load the libraries needed to set up
## current Working directory

source("environment.R")
setupwd()

## If powerconsumption data table doesn't exists, load it into enviroment

if (!exists("powerconsumption")) {
    tmppower <- tbl_df(read.csv("household_power_consumption.txt", sep = ";"))
    tmppower$Date <- dmy(tmppower$Date)
    powerconsumption <- filter(tmppower, Date == "2007-02-01" |
                                   Date == "2007-02-02")
    rm("tmppower")
}

powerconsumption$Global_active_power <- as.numeric(as.character(
                                        powerconsumption$Global_active_power))

png("plot1.png")
hist(powerconsumption$Global_active_power, col = "red",
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
