####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Selene Mu�oz Ortega (UAEH)


# LABORATORIO - Gr�ficos en R con ggplot2 
# faceting (romper un gr�fica en varias dentro de una cuadr�cula)



#instalando paquete 
install.packages("ggplot2")
install.packages("ggplot2", dependencies = TRUE)


# cargar libreria ggplot2 
library(ggplot2)


#buscar df
file.choose()

# leer base
densidad_verde <- read.csv("C:\\Users\\munoz\\Dropbox\\Selene\\Doctorado\\3er semestre\\Complejidad econ�mica\\Semana 5\\PARA FACETING.csv") 

#ver nombres
names(densidad_verde)

# colocando grafica base
p <- ggplot(data = densidad_verde, 
            mapping = aes(x = DENSITY, 
                          y = PCI.2018, 
                          color=Region)) +
              geom_point()

# crear objeto p
p

# facet_wrap (recomendado con una variable)
p + facet_wrap(~Region)

# manipulando n�mero de filas
p + facet_wrap(~Region, nrow = 3)

# manipulando n�mero de columnas
p + facet_wrap(~Region,ncol = 5)
