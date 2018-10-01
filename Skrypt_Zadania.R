## ---------- NAZWISKO STUDENTA:  KOWALSKI
## ---------- IMIE STUDENTA:      KRZYSZTOF
## ---------- Grupa æwiczeniowa:  4


## ---------- Zestaw zadañ nr 1  ------------------------------------------------ ##

## ---------- A
# Samodzielnie zainstaluj i aktywuj nastêpuj¹ce pakiety: gdata i openair

install.packages("gdata")
install.packages("PogromcyDanych")

library(gdata)
library(openair)

## ---------- B
# ZnajdŸ informacjê do czego one s³u¿¹, w skrypcie powinny znaleŸæ siê 
# komentarze opisuj¹ce w kilku s³owach poni¿sze pakiety.

?gdata  
?openair

# gdata to: Narzêdzia jêzyka programowania R do manipulacji danymi
# openair to: Narzêdzia analizy danych o zaniewczyszczeniach powietrza 

## ---------- C
# Korzystaj¹c z pomocy znajdŸ i zastosuj funkcjê s³u¿¹c¹ do tworzenia 
# wykresów radarowych lub ró¿y wiatrów, po angielsku wind rose

apropos("wind")
?windRose 

# jest to funkcja pakietu openair

## ----------
## Proszê ustaliæ œcie¿kê do indywidualnego katalogu roboczego. 
## Katalog roboczy nazwaæ nazwiskiem i umieœciæ go w ³atwo dostêpnym miejscu 
## np.: na dysku c w folderze temp, w przypadku pracy na komputerach uczelnianych. 
## Opcjonalnie mo¿e byæ to folder znajduj¹cy siê na pen-drive lub dysku przenoœnym.

getwd()
setwd("C:/temp/Rzeszutek/TI")



## ---------- Zestaw zadañ nr 2  ------------------------------------------------ ##




## ---------- Zestaw zadañ nr 3  ------------------------------------------------ ##


## ---------- Zestaw zadañ nr 4  ------------------------------------------------ ##
