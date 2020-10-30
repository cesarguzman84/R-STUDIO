file.choose()

datos_estudiantes=read.fwf("E:\\VARIOS\\RSTUDIO\\DATOS\\tema1\\student-fwf.txt", 
                           widths = c(4,15,20,15,4),
                           col.names = c("id", "nombre","email","carrera","año"))