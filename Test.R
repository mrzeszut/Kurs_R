# Testy

library(gdata)
data(package = "gdata")
data("MedUnits")
gdata::write.fwf(x = MedUnits, file = "data/Medunits.csv", 
                 rownames = F,
                 sep =";")
