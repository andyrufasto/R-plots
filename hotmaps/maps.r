#install.packages("maps")
#install.packages("rworldmap")
library(rworldmap)
library(maps)

ddf = read.table(text="
	country    value
	Argentina  11.9
	Bolivia    6.8
	Brazil     16.7
	Chile      61.9
	Colombia   20.5
	Ecuador    11.0
	Uruguay    60.3
	Paraguay   2.0
	Venezuela  3.9
	Peru       12.4
	", header=T)

png("plot.png", 1920, 1080)

spdf <- joinCountryData2Map(ddf, joinCode="NAME", nameJoinColumn="country")
 mapCountryData(spdf, mapRegion = "latin america",
 nameColumnToPlot               = "value",
 catMethod                      = "fixedWidth",
 colourPalette                  = "white2Black",
 mapTitle                       = "Porcentaje de vacunación contra el covid-19")

dev.off()
