rm(list = ls())
library(graphics); library(compositions); library(mgcv);library(hydroGOF);library(psych)
setwd("C:/.....")

#plot para los 4 regiones de colombia

#plot Antioquía
file1<-"antioquía.csv"; 
data1<-read.csv(file=file1, header=TRUE, sep = ";", dec = "."); 
pairs.panels(data1[,2:7])

#plot Atlántico
file2<-"atlántico.csv"; 
data2<-read.csv(file=file2, header=TRUE, sep = ";", dec = "."); 
pairs.panels(data2[,2:7])

#GRÁFICA GAM VS VALOR INICIAL 
plot(data2[,11],xlab="#datos",ylab="modelo_vs_valor",pch=1)
points(data2[,2],col="blue",pch=2)
legend("topright",legend=c("GAM","valor"),col=c("black","blue"),pch=c(1,2))

# GRÁFICA OLS VS VALOR INICIAL
plot(data2[,10],xlab="#datos",ylab="modelo_vs_valor",pch=1)
points(data2[,2],col="blue",pch=2)
legend("topright",legend=c("OLS","valor"),col=c("black","blue"),pch=c(1,2))



#plot Boyacá
file3<-"boyacá.csv"; 
data3<-read.csv(file=file3, header=TRUE, sep = ";", dec = "."); 
pairs.panels(data3[,2:7])

#plot Sucre
file4<-"sucre.csv"; 
data4<-read.csv(file=file4, header=TRUE, sep = ";", dec = "."); 
pairs.panels(data4[,2:7])

