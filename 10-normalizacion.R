file.choose()
alojamiento = read.csv("E:\\VARIOS\\RSTUDIO\\DATOS\\tema1\\BostonHousing.csv")
alojamiento.escalado=scale(alojamiento) #normal estandar o distribucion normal
alojamiento.ninguno=scale(alojamiento, center = FALSE, scale = FALSE) #escalado sin restar la media, es igual a alojamiento escalado
alojamiento.media = scale(alojamiento, center = TRUE, scale = FALSE)#resta la media pero no divide por la desviacion tipica, solo lo ajusta al promedio, a cada variable le resta el promedio o lo que es lo mismo la desplaza a derecha o izquierda (sd=sqrt(sum(x^2)/(n-1)))

escalar.varias=function(dataframe, cols){ 
    names=names(dataframe)
    for(col in cols){
      name = paste(names[col],"z", sep=".")  
      dataframe[name] =scale(dataframe[, col])
      }
  cat(paste("hemos normalizado", length(cols), "variables(s)"))
  dataframe
  }
  alojamiento=escalar.varias(alojamiento, c(1,3, 5:8)) #Utilizando la funcion escalar.varias que hemos creado arriba permite normalizar las columnas que deseemos, en este caso las columnas 1, 3, y 5 a 8