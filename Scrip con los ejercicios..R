#1
#Crea una lista que contenga al menos cuatro tipos diferentes de datos 
#(incluyendo al menos un vector, una matriz, y un data frame). 
#Luego, escribe código para acceder a cada uno de estos elementos por su índice.
datos_lista <- list(
  vector = c(1:20),
  matrix = matrix(c(2,4,6,8), nrow=2, ncol=2),
  datos = data.frame(
    secuencia = c("ATCGATCG", "GCTAGCTA", "TTAAGGCT"),
    tamaño = c(8, 8, 8),
    contenido_GC = c(0.5, 0.4, 0.3)
  )     
)  
datos_lista
#para acceder al vector:
datos_lista[[1]]
#para acceder a la matriz:
datos_lista[[2]]
#para acceder a la data frame
datos_lista[[3]]

#####################
#Añade un nuevo elemento a la compleja_lista que sea otra lista conteniendo 
#información relevante a un experimento microbiológico 
#(p.ej., fechas, resultados de crecimiento, tipo de medio de cultivo). 
#Accede a un elemento específico dentro de esta lista anidada.
# Crear lista de muestras de agua
muestras_agua <- list(
  list(ID = "Muestra1", Localizacion = "Río", pH = 7.2, Coliformes = 150),
  list(ID = "Muestra2", Localizacion = "Lago", pH = 6.8, Coliformes = 200),
  list(ID = "Muestra3", Localizacion = "Pozo", pH = 7.5, Coliformes = 50),
  list(ID = "Muestra4", Localizacion = "Mar", pH = 8.1, Coliformes = 80),
  list(fechas = c(01,02,03,04), crecimiento = c("normal", "bajo", "normal", "elevado"), 
       medio_cultivo = c("agar Chromocult", "Medio LB", "Caldo LB", "Medio basico"))
)

datos_nuevo<- list(fechas = c(01,02,03,04), crecimiento = c("normal", "bajo", "normal", "elevado"), 
     medio_cultivo = c("agar Chromocult", "Medio LB", "Caldo LB", "Medio basico"))

muestras_agua <- append(muestras_agua,datos_nuevo)
print(muestras_agua)

muestras_agua <- list(
  list(ID = "Muestra1", Localizacion = "Río", pH = 7.2, Coliformes = 150),
  list(ID = "Muestra2", Localizacion = "Lago", pH = 6.8, Coliformes = 200),
  list(ID = "Muestra3", Localizacion = "Pozo", pH = 7.5, Coliformes = 50),
  list(ID = "Muestra4", Localizacion = "Mar", pH = 8.1, Coliformes = 80)
)

muestras_agua
#para acceder a los medios de cultivo por su indice:
muestras_agua[[5]][3]
#para acceder por su nombre:
#########################################################
#Almacena datos de producción en experimentos de fermentación.
#Crea una lista fermentacion con 4 elementos, 
#cada uno representando un experimento de fermentación.
#Cada elemento debe ser una lista con: Cepa, Condición, ProducciónEtanol.
#Encuentra la condición con la mayor producción de etanol.


fermentacion <- list(
  list(cepa = "Cepa 1", condicion = "anaerobia", etanol_final = 7),
  list(cepa = "Cepa 2", condicion = "aerobia", etanol_final = 1),
  list(cepa = "Cepa 3", condicion = "anaerobia", etanol_final = 5),
  list(cepa = "Cepa 4", condicion = "aerobia", etanol_final = 3)
)
fermentacion
etanol <- as.numeric(c(fermentacion[[1]][3], fermentacion[[2]][3], 
                       fermentacion[[3]][3], fermentacion[[4]][3]))

mayor <- max(etanol)
mayor
