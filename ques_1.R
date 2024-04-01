setwd("C:/Users/Hawking's/Desktop/datasciencecoursera/rprog_data_ProgAssignment3-data")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

total_pollution <- with(NEI, aggregate(Emissions, by = list(year), sum))

#Storing the plot in a png format
png("Plot1.png",width=500,height=500)

plot(total_pollution, main = "Total PM2.5 Emissions across years", 
     xlab = "Year", ylab = "PM2.5 Emissions", pch = 15, col = "red", lty = 10)

dev.off()

