#!/usr/bin/env Rscript --vanilla
# Definiendo un vector con todas las casas
houses <- c("Hufflepuff", "Gryffindor", "Ravenclaw", "Slytherin")
#Seleccionando de manera aletoria un elemento del vector
house <- sample(houses, 1)
#Imprimiendo el resultado
cat(house, "\n")

