library(rio)
library(htmltab)
library(stringr)
linkEst="https://github.com/Josue-ChicoRudo/TRABAJO-FINAL/raw/master/reporte%20(1).xlsx"
Elect=import(linkEst)
View(Elect)
names(Elect)
str(Elect)


names(Elect)=gsub(" ", "", names(Elect))
names(Elect)[names(Elect)=="Notienealumbradoelectrico"]="noelect"
Elect$noelect=as.numeric(Elect$noelect) 
str(Elect)
Elect$noelect=round(Elect$noelect,4) #reduciendo decimales
head(Elect)
Elect$Departamento=str_split(Elect$Departamento,
                                pattern = 'Departamento: ',
                                simplify = T)[,2]
Elect$Departamento[7]="Callao"
names(Elect)[names(Elect)=="noelect"]="Porcentaje sin acceso alumbrado"
names(Elect)


