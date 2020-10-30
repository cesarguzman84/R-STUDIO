salario.familiar = c(40000, 60000, 50000, 80000, 60000, 70000, 60000)
tamano.familia=c(4,3,2,2,3,4,3)
carro.familiar=c("Lujo", "Compacto", "Utilitario", "Lujo", "Compacto","Compacto","Compacto")

familia =data.frame(salario.familiar, tamano.familia, carro.familiar) #Se construyye dataframe

familia.unica =unique(familia) # elimina filas duplicadas

duplicated(familia) #indica cuales filas estan duplicadas

familia[duplicated(familia),] #devuelve solo las filas duplicadas