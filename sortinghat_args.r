#!/usr/bin/env Rscript --vanilla
# Definiendo un vector con todas las casas
args <- commandArgs(trailingOnly = TRUE)
houses <- c("Hufflepuff", "Gryffindor", "Ravenclaw", "Slytherin")
#Seleccionando de manera aletoria un elemento del vector
house <- sample(houses, 1)
#Imprimiendo el resultado
cat(paste0("Hola ", args[1], ", te unirás a ", house, "\n"))

