# regexcite

Dette er min første R-pakke, laget mens jeg lærte pakkeutvikling 
etter boken [R Packages (2e)](https://r-pkgs.org/whole-game.html).

## Hva pakken gjør

Pakken inneholder én funksjon: `strsplit1()`.

Den deler en tekststreng opp i en vektor. For eksempel:

```r
strsplit1("alfa,bravo,charlie", split = ",")
#> [1] "alfa"    "bravo"   "charlie"
```

## Hvorfor er dette nyttig?

Base R sin `strsplit()` returnerer en liste, noe som er upraktisk når 
du bare har én streng. `strsplit1()` gir deg vektoren direkte.

## Installasjon

```r
# install.packages("devtools")
devtools::install_github("fttjuki/regexcite")
```

## Hva jeg lærte

- Hvordan lage en R-pakkestruktur med `devtools`
- Hvordan skrive og dokumentere en funksjon med `roxygen2`
- Hvordan skrive enhetstester med `testthat`
- Hvordan bruke Git og publisere til GitHub
