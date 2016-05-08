
setupwd <- function() {
    
    ## Load all the libraries needed
    
    library("dplyr")
    library("lubridate")
    
    ## Download and unzip the Data Set into HARUSDataSet folder
    dataset_url <- paste("https://d396qusza40orc.cloudfront.net/exdata%2F",
                         "data%2Fhousehold_power_consumption.zip",
                         sep = "")
    zipfile <- "exdata-data-household_power_consumption.zip"
    
    ## Download the .zip file unless it already exists
    if (!file.exists("household_power_consumption.txt")) { 
        if (!file.exists(zipfile)) {
            download.file(dataset_url, zipfile)
        }
        
        ## Extract everything into the "UCI HAR Dataset" directory unless the directory
        ## exists
        unzip(zipfile)
    }
}
