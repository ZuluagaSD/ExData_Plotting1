
## Download files and load the libraries needed to set up
## current Working directory

source("environment.R")
setupwd()

powerconsumption <- mutate(powerconsumption,
                           datetime = ymd_hms(paste(powerconsumption$Date
                                                    , powerconsumption$Time)))

png("plot2.png")
with(powerconsumption, plot(datetime, Global_active_power, type = "l"))
dev.off()
