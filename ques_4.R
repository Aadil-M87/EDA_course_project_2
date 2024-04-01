setwd("C:/Users/Hawking's/Desktop/datasciencecoursera/rprog_data_ProgAssignment3-data")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Coal <- subset(NEI, SCC == "10100101")
# Coal_emissions <- tapply(Coal$Emissions, Coal$year, sum). In the graph this method does not show X axis values as they are

Coal_emissions <- with(Coal, aggregate(Emissions, by = list(year), sum))

png("Plot4.png",width=500,height=500)

plot(Coal_emissions, main = "Total PM2.5 Emissions across years from Coal sources", 
     xlab = "Year", ylab = "PM2.5 Emissions", pch = 15, col = "red", lty = 10)


dev.off()
