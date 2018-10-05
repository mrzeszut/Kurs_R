
# 2. R jako kalkulator

## 2.1 Podstawowe operacje arytmetyczne

#  |Operator |opis                        |
#  |:--------|:---------------------------|
#  |-        |Odejmowanie                 |
#  |+        |Dodawanie                   |
#  |*        |Mnożenie (iloczyn)          |
#  |/        |Dzielenie (iloraz)          |
#  |^ lub ** |Potęgowanie                 |
#  |%%       |Reszta z dzielenia          |
#  |%/%      |Część całkowita z dzielenia |

# Przykłądy 

2+2
2^2
4^2
1/10
(3+7)^(4-2)
8/3
8%%3
8%/%3



##### Ćwiczenie 1 operatory arytmetyczne mają pierwszeństwo
# mnożenie, czy dzielenie?
# mnozenie, czy dodowanie?
# potęgowanie, czy dzielenie?
# dzielenie, czy dodwanie?
  
10/5*2  ; (10/5)*2 ; 10/(5*2)
2*2+100 ; 2*(2+100)
4^2/2  ; 4^(2/2)
2/2+2 ; (2+2)/2

## 2.2. Funkcje arytmetyczne 
?.libPaths
?c()
example("c")

c(1,7:9)
c(1:5, 10.5, "next", F, T)

library(help = "base")

#  |Funkcja      |Opis funkcji                                                                                                |
#  |:------------|:-----------------------------------------------------------------------------------------------------------|
#  |round(x)     |Liczba całkowita najbliższa wartości x                                                                      |
#  |signif(x,k)  |Wartość x zaokrąglona do k miejsc znaczących                                                                |
#  |floor(x)     |Podłoga, czyli największa liczba całkowita nie większa od x                                                 |
#  |ceiling(x)   |Sufit, czyli najmniejsza liczba całkowita nie mniejsza od x                                                 |
#  |trunc(x)     |Wartość x po odcięciu części rzeczywistej, dla liczb dodatnich działa jak floor(), dla ujemnych jak ceiling |
#  |abs(x)       |Wartość bezwzględna z x                                                                                     |
#  |log(x)       |Logarytm naturalny z x                                                                                      |
#  |log(x, base) |Logarytm o podstawie base z x                                                                               |
#  |log10(x)     |Logarytm o podstawie 10 z x                                                                                 |
#  |log2(x)      |Logarytm o podstawie 2 z x                                                                                  |
#  |exp(x)       |Funkcja wykładnicza (eksponenta) z x                                                                        |
#  |expm1(x)     |Funkcja równoważna wyrażeniu exp(x)-1, ale wyznaczona z większą dokładnością dla x&#124;«1&#124;            |
#  |log1p(x)     |Funkcja równoważna wyrażeniu log(1+x), ale wyznaczona z większą dokładnością dla x&#124;«1&#124;            |
#  |sqrt(x)      |Pierwiastek kwadratowy z x, równoważne poleceniu x^0.5                                                      |


# W ramach ćwiczenia Wykonaj poniższe operacje.

round(2.5)         ; round(2.51)
signif(1.22562, 4) ; signif(1.22562, 2)
floor(23.45)       ; floor(23.75)     
ceiling(23.45)     ; ceiling(23.57)
trunc(23.25)       ; trunc(23.89)
abs(-54.2) ; abs(54.2)
log(10)    ; log(1)
log(10,10) ; log10(10)         
log(100)   ; exp(5)            
exp(0)     ; exp(1)
sqrt(4)    ; sqrt(36)


# reguła zaokrąglania

round(x = 2.2545)
?round()

round(x = 2.2545, digits = 1) 

round(2.2545, 3) ; round(2.2545, 4)

##### Ćwiczenie 2 Wykonaj następujące polecenia:
  
# Oblicz pierwiastek 4 stopnia z liczby 16.
# Zaokrągl liczbę 1.23446789, do 3 miesjca po przecinku.
# Wyznacz wartość bezwzględną liczby -23.
# Oblicz pierwiastek i logarytm dziesiętny z liczby 100 w jednej linii poleceń.
# Oblicz logarytm dziesiętny z 1000 stosując dwie różne funkcje, w jednej linii poleceń.

16^(1/4)
round(1.23446789, 3) # działa dobrze ? 
abs(-23)
sqrt(100) ; log10(100)
log(1000, 10) ; log10(1000)

## 2.3. Funkcje trygonometryczne 
  
#  |Funkcja         |Opis funkcji                                                                                  |
#  |:---------------|:---------------------------------------------------------------------------------------------|
#  |cos(x)/sin(x)   |Wartość funkcji cosinus/sinus w punkcie x                                                     |
#  |tan(x)          |Wartość funkcji tangens w punkcie x                                                           |
#  |acos(x)/asin(x) |Wartość funkcji arcus cosinus/sinus w punkcie x                                               |
#  |atan(x)         |Wartość funkcji arcus tangens w punkcie x                                                     |
#  |atan2(y, x)     |Funkcja wyznaczająca kąt (w radianach) pomiędzy osią OX a wektorem o początku w punkcie (0,0) |  


# W ramach przypomnienia podstaw matematyki, wykres funkcji: 
# \[y = cos(x)\]
# \[y = sin(x)\]

library(ggplot2)

data.frame(x <- seq(-10,10,0.1),
           y1 = sin(x),
           y2 = cos(x)) -> df

ggplot(data = df) + 
  geom_line(aes(x = x, y = y1, color = "sin(x)")) +
  geom_line(aes(x = x, y = y2, color = "cos(x)")) + 
  labs(x = "oś X", y = "oś Y", color = "Funkcja") +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0) + 
  scale_color_manual(values = c("red", "blue"))
rm(df)

##### Ćwiczenie 3 Wykonaj następujące polecenia:
  
# Oblicz sinus, cosinus, arcus tanges, arcus sinus 
# kątów 0°, 30°, 45°, 90°, 180°, 360°

# Przelicz współrzędne (x,y) (0,1); (1,1); (1,0); (1,-1); 
# (0,-1); (-1,-1); (-1,0); (-1,1) na biegunowe. 
# Wyznacz kąt (alfa) w stopniach oraz odległość (r) względem punktu 0.0. 


rad <- c(0, 30, 45, 90, 180, 360) * (pi/180)

a <-data.frame( 
  rad = round(rad,3),
  sin = round(sin(rad),3),
  cos = round(cos(rad),3),
  atan = round(atan(rad),3),
  asin = round(asin(rad),3))
a[is.na(a)] <- NA 

# Dlaczego funkcja `asin(x)` zwraca wartości `NaN`. 

install.packages("useful")
library(useful)
x <- c(0,1,1,1,0,-1,-1,-1)
y <- c(1,1,0,-1,-1,-1,0,1)
useful::cart2pol(x,y) -> a
a$alpha <- a$theta*(180/pi)
a[,c(3,4,1,5,2)]

# wykres 
a$etykieta <- paste("alfa = ",a$alpha,", ", "r = ", round(a$r,2))

ggplot(a, aes(x, y, label = etykieta)) + 
  geom_rect(xmin = -1, xmax = 1, ymin = -1, ymax = 1, 
            fill = "azure2", size = 1, linetype = 1) +
  geom_label(nudge_x = 0.2, nudge_y = 0.2)  +
  geom_point(size = 3, color = "red", shape = 16) + 
  xlim(-1.3,1.42) + 
  ylim(-1.3, 1.3) +theme_light()

rm(x,y,a) # usuwa obiekty


## 2.4 Operatory logiczne i relacyjne
  
!FALSE # negacja
!TRUE # negacja
FALSE | FALSE # alternatywa
TRUE  | TRUE # alternatywa
TRUE  | FALSE # alternatywa
FALSE & FALSE # koniunkcja
TRUE  & TRUE # koniunkcja
TRUE  & FALSE # koniunkcja

# Wartość logiczna jest róWnież zwracana przez R, gdy stosujemy operatory logiczne.

1 > 3
3 >= 3
5 == 5
5 != 5
5 == 5 & 5 != 5 
5 == 5 | 5 != 5


# 3. Obiekty i typy danych

library(tidyverse)

#  |Funkcja       |Opis funkcji                                |
#  |:-------------|:-------------------------------------------|
#  |class()       |klasa, typ obiektu                          |
#  |typeof()      |typ obiektu                                 |
#  |length()      |długość obiektu                             |
#  |attributes()  |atrybuty obiektu                            |
#  |attr()        |dostęp do atrybutów obiektu                 |
#  |object.size() |wielkość obiektu w bajtach                  |
#  |mode()        |wewnętrzna reprezentacja obiektu            |
#  |str()         |szczegóły wewnętrznej reprezentacji obiektu |

# Postaraj się zapamiętać:** `str(), class(), lenght(), typeof()` - będziemy z nich często korzystać.

class("a") 
class(1L) ; typeof(1L)
class(1)
class(1.1) ; typeof(1.1)
class(FALSE)
class(NA)
-10000000000000^32

## 3.1. Zmienna

a = 2      ## definiujemy zmienną a
b = 3      ## definiujemy zmienną b
a          ## wyświetla wartość zmiennej a
b          ## wyświetla wartość zmiennej b
a+b        ## zwraca wyniki dodawania zmiennych
d <- a+b   ## zapisuje winik pod zmiennej d 
d          ## wyświetla wartość zmiennej d


# Kilka bardziej złożony przykładów:
  
27+abs(-12.4)*(1/2)^exp(2)-100 * sqrt(0.3)
d <- 27+abs(-12.4)*(1/2)^exp(2)-100 * sqrt(0.3)
d 
z <-c/(a*2)+10^b
z

# Teraz, kilka przykładów z trochę innej beczki:
  

nazwa <- "nazwa"
logiczny <- "TRUE"
inny <- "5"
calko1 <- 5
calko2 <- 5L
rzecz <- 3.876
nic <- NA
pusty <- NULL


# Korzystając z funkcji `str()`, `class()`, `lenght()`, `typeof()` sprawdźć własnosćiąsności obiektów: `a`, `b`, `d`, `z`, `nazwa`, `logiczny`, `inny`, `calko1`, `calko2`, `rzecz`, `nic`, `pusty`. Czy twoje przypuszczenia się sprawdziły ?Zgodnie z powyższym przykłądem, wektor składa się z 4 elementów typu `character`, element "a"

# wyświetlanie
(z <- 23)

## 3.2. Wektor
  
a <- c(1,2,3,4)
a

a <- 1:4
a

a <- c(1L, 2L: 3L, 4L) ; a  ; typeof(a)
a1 <- 1:4 ; a1 ; typeof(a1)
a2 <- 1.1:4.1 ; a2 ; typeof(a2)

a <- c(2.5e3, 1.1e2, NaN, Inf, -Inf) ; a ; class(a) ; typeof(a)


# Teraz utworzymy wektory wartości logicznych i znakowych

a  <- c("a","b","b", "c")  ; a  ; typeof(a)
a1 <- c(TRUE, FALSE, T, F) ; a1 ; typeof(a1)


# **UWAGA !!!** Zauważ, że nadpisaliśmy zmienną `a` i `a1`.

# kolejność typu wektora
a1 <- c(F, 1L, 2.2, "cztery") ; typeof(a1)
a2 <- c(F, 1L, 2.2) ; typeof(a2)
a3 <- c(F, 1L) ; typeof(a3)

a <- 1:4 ; a
typeof(a)
typeof(as.double(a)) # funkcja w funkcji

a <- 1.1:4.1 ; a
typeof(a)
typeof(as.integer(a)) # zwraca wynik funkcji zewnętrznej

a <- c(TRUE, FALSE, TRUE) ; a
typeof(a) 
typeof(as.character(a))

a <- c(1,0,1,1,1,0) ; a
typeof(a)
typeof(as.logical(a))

a <- c(1L,0L,1L,1L,1L,0L) # tworzymy wektor typu integer
a             # wyświetlamy obiekt na ekranie konsoli
as.logical(a) # konwersja 0 = FALSE, 1 = TRUE
typeof(a)     # sprawdzamy

# teraz poprawna składnia
a <- c(1L,0L,1L,1L,1L,0L) 
a <- as.logical(a) # konwersja z nadpisaniem 
typeof(a) # sprawdzamy 


### 3.2.1. Funkcje tworzenia wektorów
  
a <- c(10,1:3,10) ; a  
a <- c(4:1, 1:4) ; a
c(a, c(1,4,5), 8:5)
c(a, c(TRUE, FALSE))


# **Funkcja seq()** 

?seq()

example(seq()) ## ładuje do okna konsoli przyklady zastosowania


#Utworzymy teraz sekwencję liczb:
# * od 1 do 10 z krokiem 1, oraz  
# * od 1 do 2 z krokiem 0.1.

seq(from = 1, to = 10, by = 1) # integer
seq(from = 1, to = 2, by = 0.1) # real

seq(1,10,1) # zapis uproszczony, bez nazw argumentów
seq(10) # zapis uproszczony, z argumentami domyślnymi
seq(1,2,0.1)

# ilość elementów
sek1 <- seq(from = 34, to = 128, length.out = 5)
sek1
sek1 <- seq(34, 128, length.out = 4)
sek1

# minus 
sek2 <- seq(100,1,-12)
sek2

a <- 2 ; b <- 20    # tworzymy zmienne a i b
seq(a,b, len = b/a) # wykorzystujemy je do uruchomienia funkcji seq()


# **Funkcja rep()** 

rep(1:4, times = 2) # powielamy 2 razy wektor
rep(1:4,2) # j.w.
rep(seq(4),2) #j.w. z seq()
rep(seq(4), len = 3) # tylko 3 elementy wektora bez powielania
rep(1:4, each = 2) # nie to samo,

rep(1:3, each = 3) # każdy 3 razy
rep(1:3, each = 3, times = 2) # j.w, potem wektor 2 razy
rep(1:3, each = 3, times = 2, len = 9) # j.w. tylko zwraca 9 ostatnich elementów


rep(seq(3), each = 2, len = 4)  # len uciał 2 elementy
rep(seq(3), each = 2, len = 8)  # len dodał 2 elementy


rep(1:3, times = c(1,2,3))
rep(1:3, 1:3) # j.w. prościej
rep(1:3, 3:1) # odwrotnie


### 3.2.2. Wektory domyślne pakietu bas
  
letters # małe litery
LETTERS # duże litery
month.name # nazwy miesięcy
month.abb # skrócone j.w.
pi # 

format(ISOdate(2000, 1:12, 1), "%B")
format(ISOdate(2000, 1:12, 1), "%b")

czas <- ISOdate(year = 2000, month = 1:12, day = 1)  
czas

czas <- format(czas, "%B")  
czas

##### Ćwiczenie 4 Wygeneruj nazwy dni tygodnia, korzystając z pomocy funkcji `strptime()` 
# oraz funkcji `format()` i `ISOdate()`.

###### Odp. 

format(ISOdate(year = 2000, month = 1, day = 3:9), "%A")
format(ISOdate(year = 2000, month = 1, day = 3:9), "%a")  
#####

### 3.2.3. Indeksowanie wektorów
  
wek <-  c("a", "b", "c", "d") # tworzymy wektor
wek # wyświetlamy
str(wek) # wyświetlamy własnosći

length(wek) ; length(letters) ; length(month.name)


# oiperator [...]

LETTERS[1] # pierwszy element wektora
LETTERS[5] # piąty
LETTERS[26] # ostatni element wektora
LETTERS[length(LETTERS)] # j.w. ale za pomocą funkcji length


wek <- c(seq(2,28,2), seq(2,4,length.out = 6))
wek
length(wek) # Sprawdzamy długość wektora
wek[length(wek)] # wybieramy ostatni element wektora
wek[10] # wybieramy 10 element wektora

LETTERS[c(6,12,26)] 
LETTERS[c(6,12,length(LETTERS))]
a <- c(6,12,26)
LETTERS[a]

letters[seq(1,length(letters),2)]


co_drugi <- seq(1,length(letters),2)
letters[co_drugi]

LETTERS[1:10] # dziesięć pierwszych liter
LETTERS[c(1:5,21:26)] # pięć pierwszych i pięć ostatnich

LETTERS[26:1]
letters[seq(26,1,-1)]
seq(26,1,-1) # j.w. tylko z funkcją seq()

# usuwanie
letters[-(1:20)] # 6 ostatnich elementów


# indeksowanie operatorem relacji

wieksze_od_10 <- wek > 10


wieksze_od_10 ; wek # porównujemy wartości, patrz tabela.

knitr::kable(data.frame(wek, wieksze_od_10), caption = "Tabela X. Porównanie wekotorów wek i a")

wek[wieksze_od_10] # indeksowanie

wek[wek > 10]

wek[!wieksze_od_10]

wek2 <- rep(letters[1:5],3)
wek2

wek2[wek2 == "a" | wek2 == "c"] # wybierz a oraz c
wek2[wek2 != "b" | wek2 != "d"] # wybierz a oraz c


wek2[wek2 %in% c("a", "b")] # wybierz a oraz c


wek1 <- c(1:2, rep(NA, 4), seq(6,7,0.5))
wek1
is.na(wek1)


wek1[!is.na(wek1)] # liczby
wek1[is.na(wek1)] # NA

na.omit(wek1) -> bez_NA
str(bez_NA)

### 3.2.4. Operacje wykonywane na wektorach
  
a <- c(1:4) # Tworzymy dwa wektor a
b <- seq(2,8,2) # Tworzymy dwa wektor b

a ; a+2 # wyświelt, wykonaj dodawanie
a ; a-2 
a ; a*2 
a ; a/2
a ; a^2
a ; a%/%2 # cz. całkowita
a ; a%%2 # reszta z dzielenia


# **Operacje na równych wektorach**

a ; b ; a+b
a ; b ; a-b
a ; b ; a*b
a ; b ; a/b
a ; b ; a^b


# **Wektory o róznych długościach**
  
a <- seq(8)
b <- c(2,4)

a; b; b*a
a; b; b-a
a; b; b+a
a; b; b^a

# Analogiczną operację, można wykonać stosując funkcje `rep()` dla wektora b.

{r}
a <- seq(8)
b <- c(2,4)
b <- rep(b,4)

a; b; b*a
a; b; b-a


# **Operacje relacyjne**

x <- c(1,5,7,5) # tworzymy wektory
y <- c(4,2,9,5)

x; y; x > y # czy mniejszy ?
x; y; x < y # czy większy ?
x; y; x <= y # czy nie większy ?
x; y; x >= y # czy nie mniejszy ?
x; y; x == y # czy równy ?
x; y; x != y # czy różny ?


# to nie dla was
relacje <- data.frame(x,y,
                      czy_mniejszy     = (x >  y),
                      czy_wiekszy      = (x <  y),
                      czy_nie_wiekszy  = (x <= y),
                      czy_nie_mniejszy = (x >= y),
                      czy_rowny        = (x == y),
                      czy_rozny        = (x != y))
knitr::kable(relacje)



# **operacje logiczne**
  
a <- c(TRUE, FALSE, NA) # Tworzymy wektory wartości logicznych
b <- c(T, F, NA) # to samo, ale prosty zapis

a ; !a # ! negacja
b ; !b # ! negacja

T  |  b # | alternatywa
F  |  b # | alternatywa
NA |  b # | alternatywa

T  & a # & koniunkcja
F  & a # & koniunkcja
NA & a # & koniunkcja


a <- c(T, T, F, F, NA, NA)
b <- 1:6

a; b; a+b
a; b; a-b
a; b; a*b
a; b; a/b

as.integer(a)


# **Modyfikacje elementów wektora** 
  
# tworzymy wektor
x <- seq(1,5,0.8) 
y <- 1:length(a)  

# Podmieniamy 1-elemenet wektora
x[1] <- 1.2 ; x
# podmieniamy 6 element (ostatni)
x[6] <- 5.1 ; x
# j.w inny sposób
x[length(x)] <- 7 ;x
# podmieniamy 2-elementy, [2:3]
x[2:3] <- c(5,5) ; x
# podmieniamy 3 pierwsze elementy wektora x wekotem y
x[1:3] <- y[1:3]
x;y
x == y
# reguła zawijania, co podmieniamy za co ?
x
x[-(1:4)] <- 100
x

### 3.2.5. Funkcje działajace na elementach wektorach 
  
x <- seq(2,20,4) # tworzymy wektor

x ; sqrt(x)
x ; exp(x)# funkcja wykładnicza każdy element e^x, a e=2.71
x ; log(x, 10)

x ; round(log(x, 10),2)

x <- seq(-100,100,25)
x ; abs(x)

x ; round(log(x[x>0], 10) * (3/2), 2)


a <- sample(x = 1:4,   # wektor x 
            size = 20, # liczność obserwacji wynikowego wektora
            replace = T) # powtarzaj 
a

sort(a) # rosnący
sort(a, decreasing = F) # j.w.
sort(a, decreasing = T) # malejący


### 3.2.6. Funkcje wektorów
  
#* `max()` wartość maksymalna wektora
#* `min()` wartość minimalna wektora
#* `mean()` wartość średnia wektora
#* `median()` Mediana z wektora (wartość środkowa zbioru)
#* `sum()` wartość suma wektora
#* `prod()` iloczyn elementów wektora
#* `sd()` wartość maksymalna wektora
#* `var()` Wariancja

# tworzymy wektor
a <- sample(x = 1:10, size = 100, replace = T) # powtarzaj 
b <- sample(x = c(1:5,NA), size = 100, replace = T) # powtarzaj 


max(a)
max(b)

max(a) 
max(b, na.rm = T) 

max(b[!is.na(b)]) # z indeksowaniem

b[is.na(b)]<- 6 # podmiana NA na 3
max(b) # podmiana


b[b == 6]<- NA # powrót do NA

max(a); min(a); mean(a); median(a); sum(a) 
prod(a) # ilosczyn
sd(a) # odch.stand.
var(a) #wariancja

max(b, na.rm=T); min(b, na.rm=T); mean(b, na.rm=T); median(b, na.rm=T); sum(b, na.rm=T)

prod(b, na.rm=T)
sd(b, na.rm=T)
var(b, na.rm=T)


range(a) ; range(b)

unique(a)
unique(b, na.rm = T)

sort(unique(a))
sort(unique(b, na.rm = T))


a <- sample(seq(1,2,by = 0.1), size = 100, replace = T)
sort(unique(a))
sort(table(a))


max(table(a))

min(table(a))

sum(table(a)) ; length(a) ; sum(table(a)) == length(a)

hist(a, 
     main = "Mój pierwzy histogram",
     xlab = "Wartości wektora a",
     ylab = "częstość występowania wartości")


# * `summary()` - zwraca kwartyle, mediane oraz średnią
# * `quantile()` - zwraca określony kwantyl

summary(a)
summary(b) # działa nawet na brakach danych NA


boxplot(a, horizontal = T, main = "Mój drugi wykres")



quantile(a) # analogia summary - bez średniej
quantile(a, probs = 0.25)
quantile(a, probs = c(0.25, 0.5))
quantile(a, probs = seq(0,1,0.1))

### 3.2.7. Funkcje generowania wartości losowych
  
rk1 <- rnorm(n = 100) # podajemy tylko liczbe elementów wektora n
rk2 <- runif(n = 100, min =2, max = 5) # podajemy n, wartość min i max. 

hist(rk1)
hist(rk2)

## 3.3. Listy

al <- list(imie=c("Jan","Tomasz"), nazwisko="Kowalski", 
           wiek=25, czyWZwiazku=T)
al

#### ćwiczenie 4 Wykonaj listę charakterystyczną dla książki adresowej dostępnej np. 
# smart fonie z którego korzystacie. Ma zawierać dane dla 3 osób:
  
#* Nazwisko i Imię,
#* Adres (dokładny - jakbyście wysyłali list),
#* Numer telefonu prywatnego,
#* Numer telefonu służbowego,
#* Miejsce pracy i nazwa uczelni na której studiuje,
#* Adres mailowy (prywatny i służbowy) 

# Listę umieść w zmiennej o nazwie: kontak


# Następnie wykonaj kilka poniższych poleceń oraz wyjaśnij co zwraca każde polecenie (wyjaśnienia umieść w skrypcie w postaci komentarzy)

#* `length(kontak)`
#* `is.vector(kontakt)`
#* `is.atomic(kontakt)`
#* `typeof(kontakt)`
#* `class(kontakt)`
#* `str(kontakt)`

##### odp.

kontakt <- list(nazwisko = c("Borsuk", "Koliber", "Tygrys"),
                imie = c("Karol", "Eliza", "Anastazia"),
                kod_pocztowy = c("33-178", "30-877","30-854"),
                nr_budynku = c(5, 6, 2),
                nr_lokalu = c(85, 32, NA),
                woj = c("Opolskie", "Ślaskie", "Mazowieckie"),
                tel_pr = c(505359357, 505234234, 676888965),
                tel_sl = c(607000222, 611222333, 666999777) ,
                firma = c("EB", "KHK", "ZKM"),
                uczelnia = c("AGH", "PK", "AGH"),
                email = c("bk@agh.pl", "ke@agh.pl","ta@agh.pl")
)

kontakt

length(kontakt) # lista zawiera 11 atrybutów
is.vector(kontakt) # tak 
is.atomic(kontakt) # nie atomowy
typeof(kontakt) # typ obiektu lista
class(kontakt) # obiekt klasy lista
str(kontakt) # struktura obiekty


### 3.3.1. Indeksowanie listy

al[1] # odwołanie do atrybutu listy
al[3]

al[[3]] * 2
al$wiek * 2

al[[1]][2]

### 3.3.2. Modyfikowanie list

al$wiek <- c(23,35,77,58)
al
al[[2]] <- c("Nowak","Kowalski", "Koper")
al

l1 <- list(nowa = c(1:10))
l2 <- list(koniec = c(20:29))
lista <- c(l1,l2) 
lista


### 3.3.2. Operacja na listach

nowa <- list(waga = sample(50:80, replace = T, size = 5),
             wiek = round(runif(5, 25, 77),0),
             wzrost = sample(150:190, size = 5))


mean(nowa) # nie działa

mean(nowa$waga)
mean(nowa[[2]]) # itd.


lapply(nowa, mean) -> a ; a
sapply(nowa, mean) -> b ; b


# Działą na funkcjach zwracających wektory
lapply(nowa, summary) -> a ; a # lista wektoróW
sapply(nowa, range) -> b ; b # ramka danych

# można odwrócić wartość liczby
lapply(nowa, "-") -> a ; a 

# można przeliczyć każdy element
lapply(nowa, sqrt) -> a ; a 
sapply(nowa, exp) -> b ; b 

# można stosować argumenty funkcji, ale bez nawiasów
sapply(nowa, quantile) -> b ; b 
sapply(nowa, quantile, prob = c(0.5,0.75)) -> b ; b # dodatkowy argument funkcji



nowa <- list(waga = sample(50:80, replace = T, size = 5),
             wiek = round(runif(5, 25, 77),0),
             wzrost = sample(150:190, size = 5),
             tekst = letters[1:5])
  
lapply(nowa, mean) -> b
b
sapply(nowa, mean) -> a
a

## 3.4. Macierze
  
matrix(data = 0, nrow = 2, ncol = 4) 

# lub forma skrócona
matrix(0,2,4)

matrix(1:6, nrow = 2, ncol = 3)

matrix(seq(3,8,1), nrow = 3, ncol = 2)

x <- matrix(c(1,2,3,1:3,3:5), 3, 3)
x
x <- matrix(c(1,2,3,1:3,3:5), nrow = 3, ncol = 3)
x

a <- c("A","B","C","D")
xx <- matrix(a,2,2)

#### ćwiczenie X Utwórz macierz: `matrix(1:6, nrow = 2, ncol = 3) -> xx` 
# Następnie wykonaj następujące polecenia i wyjaśnij w komentarzach co one zwracają. 

matrix(1:6, nrow = 2, ncol = 3) -> xx
length(xx)
is.vector(xx)
is.atomic(xx)
typeof(xx)
class(xx)
nrow(xx)
ncol(xx)

### KONIEC NA DZIŚ, NAstępnie zajecia to: 

## 3.5. Ramki danych


# 4. Wczytywanie danych
# 5. Przetwarzanie tekstu
# 6. Przetwarzanie daty




