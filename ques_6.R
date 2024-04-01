NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Baltimore <- subset(NEI, fips == "24510")
Baltimore_cars <- subset(Baltimore, type == "ON-ROAD")
Baltimore_car_emissions <- with(Baltimore_cars, aggregate(Emissions, by = list(year), sum))

LA <- subset(NEI, fips == "06037")
LA_cars <- subset(LA, type == "ON-ROAD")
LA_car_emissions <- with(LA_cars, aggregate(Emissions, by = list(year), sum))

png("Plot6.png",width=500,height=500)

par(mfrow=c(1,2))
with(NEI, {
  plot(Baltimore_car_emissions, main = "Total PM2.5 Emissions across years from Motor vehicles", 
       xlab = "Year", ylab = "PM2.5 Emissions", pch = 18, col = "red", lty = 6)
  plot(LA_car_emissions, main = "Total PM2.5 Emissions across years from Motor vehicles in Baltimore", 
       xlab = "Year", ylab = "PM2.5 Emissions", pch = 18, col = "red", lty = 6)
}
)
dev.off()

