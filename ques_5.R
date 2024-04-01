setwd("C:/Users/Hawking's/Desktop/datasciencecoursera/rprog_data_ProgAssignment3-data")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Baltimore <- subset(NEI, fips == "24510")
Baltimore_cars <- subset(Baltimore, type == "ON-ROAD")

Baltimore_car_emissions <- with(Baltimore_cars, aggregate(Emissions, by = list(year), sum))

png("Plot5.png",width=500,height=500)

plot(Baltimore_car_emissions, main = "Total PM2.5 Emissions across years from Motor vehicles in Baltimore", 
     xlab = "Year", ylab = "PM2.5 Emissions", pch = 15, col = "red", lty = 10)


dev.off()
