install.packages("plyr")
library("plyr")

#Set working directory
setwd("C:/Users/Alyssa/Box Sync/Programming Projects/Processed-Piano-Roll-Inventory/Processed-Piano-Roll-Inventory")

#Read in the CSV
file <- read.csv("Cleaned-Processed-Roll-Collections-with-Labels.csv - Cleaned-Processed-Roll-Collections-with-Labels.csv.csv")

#Show the total label counts
count(file,'Label')

#Show the total collection counts
count(file,'Collection')
