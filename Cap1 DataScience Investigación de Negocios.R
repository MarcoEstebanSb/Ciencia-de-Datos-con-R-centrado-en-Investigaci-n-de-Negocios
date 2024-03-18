                "CIENCIA DE DATOS CON R
                CENTRADO EN INVESTIGACIÓN
                      DE NEGOCIOS"
    
          
            "1.4.1- VECTOR"

x<-c(1,2,3,4)
x
mode(x)
length(x)

y<-c("jirafa", "elefante", "leon", "hipopotamo")
y
mode(y)
length(y)

          "1.4.2- MATRÍZ DE DATOS"

matriz1<- matrix(c(x,y),ncol = 2)
matriz1
View(matriz1)

matriz2 <- matrix(c(45,65,34,54,43,56,34,67,89,65,45,34,65,34,23),ncol=5)
matriz2

pesomedio <- matrix(c(45,65,34,54,43,56,34,67,89,65,45,34,65,34,23),ncol=5,dimnames = list(c("Mario","Luis","Enrique"),c("Enero", "Febrero", "Marzo", "Abril","Mayo")))

View(pesomedio)
pesomedio


          "1.4.3- FACTOR"

areatrabajo <- c("corte", "corte", "diseño", "soldadura", "diseño", "corte", "ensamble", "corte", 
                 "soldadura", "corte","ensamble", "diseño","diseño", "soldadura", "ensamble")

factor_areastrabajo<- factor(areatrabajo)
factor_areastrabajo


          "1.4.4- DATA.FRAME O ESTRUCTURA DE DATOS"

peso <- c(56,67,86)
sexo <- c("M","F","M")
edad <- c(19,24,29)

tabla1 <- data.frame(sexo,edad,peso)
tabla1
View(tabla1)
str(tabla1)


          "1.4.5- LISTA (list)"

list(tabla1,pesomedio,edad,sexo)

"sirve par ver en forma de lista los datos, no los mezcla ni nada interesante"


          "1.4.6- TRABAJO DE BASE DE DATOS"
file.choose()

sexoedad_bd <- read.csv("C:\\Users\\John\\Documents\\ME\\ING IND\\DATA SCIENCE\\CAP1.-R\\sexoedad.csv",
                        sep = ",",stringsAsFactors = TRUE)
attach(sexoedad_bd)
View(sexoedad_bd)

datosmujer <- sexoedad_bd[sexoedad_bd$sexo=='mujer',]
fix(datosmujer)
str(datosmujer)
View(datosmujer)

datosvaron20_30<- sexoedad_bd[sexoedad_bd$sexo=='hombre'& sexoedad_bd$edad>='20'& sexoedad_bd$edad<='30',]
fix(datosvaron20_30)
str(datosvaron20_30)

"para que todo se guarde en una carpeta"
setwd("C:\\Users\\John\\Documents\\ME\\ING IND\\DATA SCIENCE\\CAP1.-R") 

write.csv(datosvaron20_30,'datosvaron20A30Años.csv')





