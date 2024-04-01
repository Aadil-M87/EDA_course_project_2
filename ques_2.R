setwd("C:/Users/Hawking's/Desktop/datasciencecoursera/rprog_data_ProgAssignment3-data")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Baltimore <- subset(NEI, fips == "24510")
Baltiimore_emissions <- with(Baltimore, aggregate(Emissions, by = list(year), sum))

png("Plot2.png",width=500,height=500)

plot(Baltiimore_emissions, main = "Total PM2.5 Emissions across years in Baltimore", 
     xlab = "Year", ylab = "PM2.5 Emissions", pch = 15, col = "red", lty = 10)


dev.off()


