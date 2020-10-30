file.choose()

data = read.csv("E:\\VARIOS\\RSTUDIO\\DATOS\\tema1\\missing-data.csv", na.strings = "")

data$Income.mean = ifelse(is.na(data$Income), mean(datas$Income, na.rm=TRUE),
                          data$Income
                          )

rand.impute =function(x){ #x es un vector de datos que puede contener valores NA
  missing = is.na(x) #missing contiene un vector de valores T/F dependiendo del NA de x
  n.missing = sum(missing) #n.missing contiene cuantos valores son NA dentro de x
  x.obs = x[!missing] # x.obs son los valores que tienen dato diferente de NA en x
  imputed = x # por defecto devolvere lo mismo que jabia entrado porparametro
  imputed [missing] = sample(x.obs, n.missing, replace = TRUE) #en los valores que faltaban los reemplazamos por una muestra de los que si conocemos (MAS, muestra aleatoria simple)
  return(imputed)
  
  
}


random.impute.data.frame =function(dataframe, cols) {
  names=names(dataframe)
  for(col in cols) {
    name = paste(names[col], "imputed", sep=".")
    dataframe[name]=rand.impute(dataframe[,col])
    
  }
  dataframe
}

data = read.csv("E:\\VARIOS\\RSTUDIO\\DATOS\\tema1\\missing-data.csv", na.strings = "")
data$Income[data$Income==0] =NA
data =random.impute.data.frame(data, c(1,2))