      "2.1 ESTADÍSTICA DESCRIPTICA CON R"
    "2.1.1 MEDIDAS DE POSICIÓN Y DISPERSIÓN"

"para creaar valores aleatorios normalizados"

x <- rnorm(25)
x

"para calcular la media"

mean(x)

"para calcular la mediana"
median(x)


"para calcular la varianza"
var(x)

"para calcular la desviación estandar o típica"
sd(x)

"Para obtener los cuartiles"
quantile(x)
quantile(x,probs = 0.75)

"Para obtener un resumen de todo lo visto anteriormente = SUMMARY"

summary(x)


    "2.1.1 LA DISTRIBUCIÓN NORMAL"
"Se tiene una distribución normal cuando la mediana es 0 y la desviación típica es 1 y en el
    histograma se crea una forma de campana"

x1 <- seq(-3.291,3.291, length.out=100)
    
x1
length(x1)

plot(x1, dnorm(x1), ylab = "hola", xlab = "adios", main = "Distribución", type = "p", 
     col = "darkblue", family = "Times New Roman")

hist(x1,ylim = range(0,20),xlim = range(-10,10))
hist(x1, xlab = "Tiempo", ylab = "Calificación", col = "#7FFFD4", 
                   border = "#f08080", main = paste("Histograma de x1"),ylim = range(0,20),
                   xlim = range(-10,10))


#Para usar tipografía

library(stringr)
#install.packages("extrafont")
#extrafont::font_import()
library(extrafont)
head(fonts())


loadfonts(device = "win", quiet = TRUE)

hist(x1, xlab = "Tiempo", ylab = "Calificación", col = "#7FFFD4", 
     border = "#f08080", main = paste("Histograma de x1"),ylim = range(0,20),
     xlim = range(-10,10),family = "Times New Roman")


#por ejemplo para calificaciones de 28 estudiantes
x2<- c(5,5.5,8,8.2,6.5,6,6.7,3.5,9.5,4.5,2.6,9.8,4.6,7.5,7.8,3.6,6.3,8.5,9.5,8.5,7,6,6,8,5,5,5.5,5)
length(x2)

hist(x2, col = "#2FFFA4", border = "white", main = "Distribución de calificaciones", 
     family = "Times New Roman",ylim = range(0,7), xlim = range(0,12))

summary(x2)
quantile(x2,probs = 0.91)

sd(x2)

#para ajustar los datos con breaks o saltos entre cada intervalo con 11 intervalos en total

hist(x2, seq(0,10, by = 0.7), col = "#2FFFA4", border = FALSE, 
     main = "Distribución de calificaciones", 
     family = "Times New Roman", xlim = range(0,12), 
     ylab = "Frecuencia", xlab = "Rango de Calificaciones")


#PLOT=FALSE para que no se genere la gráfica
hist1<-hist(x2, seq(0,10, by = 0.7),plot = F)
hist1
length(hist1$counts)


    "2.1.1 FUNCIONES ÚTILES EN UNA INVESTIGACIÓN"


x1.1 <- c(1,2,3,4,4,5,5,2,1,2,3,4,4,5,5)


#Para ordenar los vectores de mayor a menor

sort(x1.1)

#para sumar los valores del vector

sum(x1.1)

#para la suma acumulada de los valores no ordenados

cumsum(x1.1)

#para calcular el número de observaciones
length(x1.1)

#el error estandar es la desviación estándar entre la raíz del numero de observaciones

errorestandar <- sd(x1.1/sqrt(length(x1.1)))
errorestandar

#Para calcular el coeficiente de variación

CV <- sd(x1.1)/mean(x1.1)
CV

#Para calcular la amplitud de un vector (diferencia entre el valor máximo y mínimo)

range(x1.1)
amplitud <- diff(range(x1.1))
amplitud




#install.packages("fBasics")
library(fBasics)


#para el coeficiente de asimetría  (SKEWNESS)
  
  #Indica el grado de simetría. 
#   Sí =0 es simétrico 
#   si >0 es asimétrica a la derecha 
#   y si <0 es asimétrica a la izquierda

skewness(x1.1)


#Para el coeficiente de Curtosis (KURTOSIS)
#Mide el apuntalamiento de los valores, es decir, mide los datos acumulados en las colas o extremos

#   si =0  es normal
#   Sí >0 es más apuntalada que lo normal
#   Sí <0 es menos apuntalada que lo normal

kurtosis(x1.1)


#Medidas de concentración
#Represental al menor o al mayor grado de igualdad entre el reparto de los valores en una muestra
#Concentración máxima <- todo en manos de un individio y concentración mínima que todo está repartido

#Índice de Gini
#0 está distribuido de forma más homogénea
#1 está distribuida de forma muy concentrada (todo en manos de un individuo)


x<-c(1,2,3,4,4,5,5,2,1,2,3,4,4,5,5)
y<-c(2,3,1,3,5,5,4,2,1,1,3,5,3,2,2)

#install.packages("ineq")
library(ineq)

ineq(x, parameter = NULL, type = c("Gini"))


ineq(y, parameter = NULL, type = c("Gini"))


#los datos en x están repartidos de formas mas homogenea al igual que los de y


# y... 8Sí y & x representan salarios podemos decir que la concentración de salarios en la empresa x 
#       se parecen en gran medida a los salarios en la empresa y


#   Curva  de lorenz
#mientras más alejada esté la curva de la línea de 45 grados un individuo concentrará mayor distribución
#es decir, más estará en las manos de un individuo

plot(Lc(x), col = "#2FFFA4", main = "Empresa X", family = "Times New Roman")

plot(Lc(y), col = "#f08080", main = "Empresa Y", family = "Times New Roman")


#Valores perdidos test

is.na(y)
yNA<-c(2,3,1,NA,5,5,4,2,1,NA,3,5,3,2,2)
is.na(yNA)


#Hay dos valores perdidos (TRUE) que se pueden excluir con na.rm=TRUE

mean(yNA)

mean(yNA, na.rm = TRUE)


#para convertir a 0 los datos perdidos
hazcero <- ifelse(is.na(yNA),0,yNA)
yNA
hazcero



      "2.4 DESCRIPTIVA GRÁFICA"
  "Gráfico de BARRAS"

# Número de lectores por revidta

nl<- c(500,1500,400,1750,200)
rev <- c("ACD","RMN","CMD","Motor","Otros")
ylim<-summary(nl)



library(extrafont)

barplot(nl, names=rev,col = "#2FFFA4", border = FALSE, main = "Lectores por revista", 
        family = "Times New Roman")

#Para asignar diferentes colores a cada barra

col1<- c("#2FFFA4","#5F9EA0","#CD3278", "#FF6A6A","#4876FF")

barplot(nl, names=rev,col = col1, border = FALSE, main = "Lectores por revista", 
        family = "Times New Roman")


  "Gráfico de SECTORES O DE DONA"


pie(nl)
pie(nl,labels = rev,col = col1, main = "Revistas", border = FALSE, 
    family = "Times New Roman", radius = 1, clockwise = FALSE, lty = NULL)

help("pie")help("pie")NULL

#install.packages("plotrix")
library(plotrix)
pie3D(nl,labels = rev,col = col1, main = "Revistas",
      family = "Times New Roman", explode=0.1, radius = 0.95, border = FALSE )



  "Gráfico de NUBE DE PUNTOS"

cest<-c(2,5,6,5,4,3,2,2,2,3,3,4,5,6,5,5,4,3,4,2)
sest<-c(3,2,3,4,4,4,5,5,4,6,6,3,3,2,5,5,6,6,6,5)
plot(cest,sest,pch=16, col="#5F9EA0", ylab = "Sin  Estudios", xlab = "Con  Estudios", 
     family = "Times New Roman")


  "Gráfico de CAJAS"
x<- rnorm(200)
y<- rnorm(200)

boxplot(x,y,family = "Times New Roman")



pob <- matrix(c(25,18,40,60),ncol=2, dimnames=list(c("Masculino","Femenino"),
                                                   c("Sin hijos","Con hijos")))

col2 <- c("#5F9EA0","#2FFFA4")
             
barplot(pob,col = col2, border = FALSE,family = "Times New Roman", main = "Hijos por género")

# argumento beside = TRUE

barplot(pob, beside = TRUE,
        col = col2, border = FALSE,family = "Times New Roman", main = "Hijos por género")


# Para que la pantalla de gráficos se divida en dos    par(mfrow=c(1,2))

par(mfrow=c(1,2))

barplot(pob,col = col2, border = FALSE,family = "Times New Roman", main = "Hijos por género")


barplot(pob, beside = TRUE,
        col = col2, border = FALSE,family = "Times New Roman", main = "Hijos por género")

# Para tres gráficos 

par(mfrow=c(1,3))

col3<- c("#4876FF", "#CD3278")
dotchart(pob, col = col3, border = FALSE,family = "Times New Roman", main = "Hijos por género",
         pch=typepch, pt.cex = 1.5)

typepch<- c(pch=16,pch=17)

#Para regresar a un solo gráfico
par(mfrow=c(1,1))



library(extrafont)
