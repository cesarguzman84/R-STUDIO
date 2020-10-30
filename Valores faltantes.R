file.choose()

datos = read.csv("E:\\VARIOS\\RSTUDIO\\DATOS\\tema1\\missing-data.csv", na.strings = "") #LOS ESPACIOS VACIOS SE TRANSFORMARON EN na

datos.limpios= na.omit(datos) #DESTRUYE LAS FILAS DONDE HALLA na


is.na(datos[4,2])
is.na(datos[4,1])
is.na(datos$Income)

datos$Income[datos$Income==0] = NA #CONVIERTE LOS CEROS EN NA

#MEDIDAS DE CENTRALIZACION Y DISPERSION
mean(datos$Income)  #NO PERMITE SACAR PROMEDIO PORQUE HAY NA
mean(datos$Income, na.rm = TRUE) #IGNORA LOS NA Y SACA EL PROMEDIO