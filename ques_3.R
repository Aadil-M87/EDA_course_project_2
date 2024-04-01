setwd("C:/Users/Hawking's/Desktop/datasciencecoursera/rprog_data_ProgAssignment3-data")

library(ggplot2)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Baltimore <- subset(NEI, fips == "24510")
# or baltimoreNEI <- NEI[NEI$fips=="24510",]

png("Plot3.png",width=500,height=500)

baltimore_plot <- ggplot(Baltimore,aes(factor(year),Emissions,fill=type)) +
  geom_bar(stat="identity") +
  theme_bw() + guides(fill=FALSE)+
  facet_grid(.~type,scales = "free",space="free") + 
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
  labs(title=expression("PM"[2.5]*" Emissions, Baltimore City 1999-2008 by Source Type"))

print(baltimore_plot)
dev.off()

