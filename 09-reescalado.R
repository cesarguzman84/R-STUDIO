  #se debe cargar el paquete scales
file.choose()

estudiantes = read.csv("E:\\VARIOS\\RSTUDIO\\DATOS\\tema1\\data-conversion.csv")

estudiantes$Income.rescaled=rescale(estudiantes$Income) #reescala por defecto de 0 a 1

rescale(estudiantes$Income, to = c(0,100)) # con este reescalado podemos definir el valor minimo y el maximo

#-------reescalar varias variables a la vez------------------

#Primero creamos una funcion:

reescalar.varias = function(dataframe, cols) {
  names = names(dataframe)
  for(col in cols){
    name=paste(names[col], "rescaled", sep=".")
    dataframe[name] = rescale(dataframe[,col])
  }
  cat (paste("Hemos reescalado", length(cols), "variable(s)"))
  dataframe
}

estudiantes = reescalar.varias(estudiantes, c(1,4))