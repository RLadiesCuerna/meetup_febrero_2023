#!/usr/bin/env Rscript --vanilla
# Cargando la biblioteca de graficacion
library(ggplot2)

periodo=2
# Generando la serie t
t=seq(0, periodo*pi, by=0.1)

#Calculando los valores de x, y
X <- 16*sin(t)^3
Y <- 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)

# Colocando los datos en un dataframe
dat=data.frame(x=X,y=Y)

#Graficando
H<-ggplot(dat,aes(x=x,y=y)) +
  geom_point(color="red",size=5) +
  theme_void()

print(H)
