file.choose()

estudiantes= read.csv("E:\\VARIOS\\RSTUDIO\\DATOS\\tema1\\data-conversion.csv")

punto_de_quiebre = c(-Inf, 10000, 31000, Inf)

nombres=c("Bajos", "Promedios", "Altos")

estudiantes$Income.cat = cut(estudiantes$Income, breaks = punto_de_quiebre, labels = nombres) # Convierte los valores numericos a variables categoricas, en este caso bajo, promedio y alto
estudiantes$Income.cat2 = cut(estudiantes$Income, breaks = punto_de_quiebre, )  # Convierte los valores numericos a variables categoricas, en este caso bajo, promedio y alto pero no le damos nombre a la columna
estudiantes$Income.cat3 = cut(estudiantes$Income, breaks = 4, labels =c("Nivel 1", "Nivel 2", "Nivel 3", "Nivel 4")) # Convierte los valores numericos a variables categoricas, en este caso bajo dejamos que rstudio seleccione el mismo en donde hara los 4 cortes