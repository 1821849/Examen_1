# Daniela Victoria Cansino Rosales
# Matrícula: 1821849
# Fecha: 26.02.2020

# Importar datos ----------------------------------------------------------

historico <- read.csv("incendios.csv", header = TRUE)
head(historico)

# ¿Cuál es la media del número de incendios?

mean(historico$Incendios)

# ¿Cuál es la media de la superficie quemada en los años indicados?

mean(historico$Superficie)

# Mediante la aplicación del comando fivenumber ¿Cuál es el valor donde se 
# ubica el tercer cuartil 75% de los datos para la variable número de incendios?

fivenum(historico$Incendios)


# Mediante la aplicación del comando fivenumber ¿Cuál es el valor donde se 
# ubica el primer cuartil 25% de los datos para la variable superficie?

fivenum(historico$Superficie)

# Desviacion estandar para la variable Superficie

sd(historico$Superficie)

# Representación gráfica --------------------------------------------------

# Realiza una gráfica histograma (2,1) con las variables: numero de incendios 
# y superficie en hectáreas quemadas

par(mfrow=c(1,2))
boxplot(historico$Incendios, main = "Histograma de Incendios", ylab = "Numero de incendios", col = "Lightblue")
boxplot(historico$Superficie, main = "Histograma de Superficie", ylab = "Superficie", col = "Coral")
par(mfrow=c(1,1))

#Mediante la función boxplot para numero de incendios revise si existen outlires

boxplot(historico$Incendios, col = "Yellow")


#Mediante la función boxplot para superficie, revise si existen outlires

boxplot(historico$Superficie, col = "Gray" )
