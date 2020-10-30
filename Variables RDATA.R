clientes= c("Juan Gabriel", "Ricardo", "Pedro")
fechas=as.Date(c("2017-12-27", "2017-11-1","2018-1-1"))
pago=c(315, 195.55, 40.15)
pedidos=data.frame(clientes,fechas,pago) #ASI SE CREA UN DATAFRAME

save(pedidos, file="../pedidos.Rdata")

saveRDS(pedidos, file="../pedidos.rds")

remove(pedidos) #PARA LIMPIAR EL GLOBAL ENVIROMENT



file.choose()

load("C:\\Users\\PC GAMER\\pedidos.Rdata") #PARA CARGAR NUEVAMENTE EL ARCHIVO RDATA, TENER CUIDADO PORQUE CON CADA LOAD SE CARGA UN ARCHIVO Y SE SOBREESCRIBE SIN PREGUNTAR SI DESEAMOS HACERLO

ordenes = readRDS("C:\\Users\\PC GAMER\\pedidos.rds") #PARA CARGAR ARCHIVO RDS, SE DEBE CREAR UNA VARIABLE Y CARGARLA ALLI

data("iris") #DATAFRAME QUE TIENE PRECARGADO RSTUDIO
data("cars") #DATAFRAME QUE TIENE PRECARGADO RSTUDIO

save.image(file = "../todoslosdatos.Rdata") #GUARDA TODOS LOS DATOS DE LA SESION

attach("C:\\Users\\PC GAMER\\pedidos.Rdata") #IGUAL QUE LOAD PERO EN ESTE CASO ADVIERTE QUE YA TENEMOS CARGADO EL ARCHIVO



