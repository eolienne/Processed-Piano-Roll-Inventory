
if("plyr" %in% rownames(installed.packages()) == FALSE) {install.packages("plyr", dependencies = TRUE)}
library("plyr")

#Set working directory
setwd("C:/Users/Alyssa/Box Sync/Programming Projects/Processed-Piano-Roll-Inventory/Processed-Piano-Roll-Inventory")

#Read in the CSV
file <- read.csv("Cleaned-Processed-Roll-Collections-with-Labels.csv - Cleaned-Processed-Roll-Collections-with-Labels.csv.csv")

#Show the total label counts
count(file,'Label')

#Show the total collection counts
count(file,'Collection')

#How many of each label are in each collection
count(file, c("Collection", "Label"))

#Write CSV of label frequencies in each collection
labelsPerCollection <- count(file, c("Collection", "Label"))
write.csv(labelsPerCollection,file="labelsPerCollection.csv")
