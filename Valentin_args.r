#!/usr/bin/env Rscript --vanilla
#
# Ejemplo de uso: Rscript Valentin_args.r Leticia ~/Proyectos/RLadies/MiCorazon.png 10
# Cargando la biblioteca de graficacion
library(ggplot2)

args <- commandArgs(trailingOnly = TRUE)
periodo=as.numeric(args[3])

# Generando la secuencia de valores de t
t=seq(0, periodo*pi, by=0.1)

#Calculando los valores de x, y
X <- 16*sin(t)^3
Y <- 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)

# Colocando los datos en un dataframe
dat=data.frame(x=X,y=Y)
letrero=paste("Feliz día de San Valentín",args[1])
nomArchivo=args[2]

#Graficando
H<-ggplot(dat,aes(x=x,y=y)) +
  geom_point(color="red",size=5) +
  theme_void()

H = H + annotate("text", x=0.3, y=0.5, label=letrero,
                 col="blue", size=8)
  
ggsave(nomArchivo,plot = H,device = "png")
