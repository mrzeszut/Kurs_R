## "Wprowadzenie do programowania w R"
## "Konfiguracja programu R i programy wspomagające"
## Mateusz Rzeszutek

## Sprwdź gdzie są instalowane pakiety
  
.libPaths()

## 3.1. Przestrzeń robocza
  
getwd()
setwd("wpisz ścieżkę dostępu do katalogu")

## 3.2. Instalowanie pakietów
  
install.packages("gdata")
library(gdata)

data(package = "gdata")
data(MedUnits)
View(MedUnits)

#### Ćwiczenie 1.  
# Proszę zainstalować i wczytać pakiet `tidyverse`. Będziemy z niego korzystać 
# w trakcie rozdziałów dotyczących efektywnej pracy z danymi w R.

##### Rozwiązanie
  
install.packages("tidyverse")
library(tidyverse)

# Instalacja z github

install.packages("devtools")
devtools::install_github("pbiecek/PogromcyDanych")
library(PogromcyDanych)

#### Ćwiczenie 2
# Sprawdźć jakie są dostępne zestawy danych w pakiecie `PogromcyDanych`. 
# Następnie przeglądnij te dane. W ramach tego kursu będziemy często odnosić się 
# do zestawów danych znajdujących się w tym pakiecie.

data(package = "PogromcyDanych")
View(WIG)


# 4. System pomocy
## 4.1 System pomocy programu R
  
help()
help("gdata")
help("write.fwf")
args("write.fwf")
help.search("write")
apropos("Plot")
example("boxplot")


# 5. Krzywa nauki R

library(ggplot2)
a <- data.frame(y = 1:100,x = (1:100)^exp(2))
ggplot(a, aes(x = y, y = x)) + 
  geom_line(col = "red", size = 1) + 
  labs(x = "Czas nauki", 
       y = "Poziom data scieace we krwi", 
       title = "Krzywa uczenia się języka R")
