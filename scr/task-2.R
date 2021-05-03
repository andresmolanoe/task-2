#__________
#Elaborado por: Joaquin Correa (201730895), Andres Molano (201814276), Ricardo Rodriguez(201822271)
#Fecha: 29 de abril de 2021
#--------------------------

#Eliminar objetos antiguos
rm(list=ls())

#Cargar y/o instalar paquetes
pacman::p_load(tidyverse,data.table,skimr)

#1. Loops
#1.0 importar base de datos
lista_df = readRDS("data/input/lista.rds")

names(lista_df)    #ver nombres de los df

#1.1 Eliminar N.A
lapply(lista_df, function(x) is.na(x) %>% table()) #revisar si los df tienen n.a

#eliminar n.a, renombrar columnas, pasar nombres variables a minusculas
for (i in 1:length(lista_df)){
  lista_df[[i]] = lista_df[[i]] %>% subset(is.na(...2)==F) 
  colnames(lista_df[[i]]) = lista_df[[i]][1,] %>% unlist() %>% as.character() %>% tolower() %>% sub("ó","o",.) %>% sub("í","i",.) %>% sub("é","e",.) %>% sub("á","a",.) %>% sub("ú","u",.)
  lista_df[[i]] = lista_df[[i]][-1,] %>% data.frame(stringsAsFactors = F)
}

lapply(lista_df, function(x) is.na(x) %>% table()) #comprobar que se hayan eliminado los n.a

#1.2 Crear variable para el tipo de delito
for (i in 1:length(lista_df)){
  lista_df[[i]] = mutate(lista_df[[i]], tipo_delito = names(lista_df[i]))
}

lapply(lista_df, function(x) colnames(x)) #comprobar la creacion de la variable

#1.3 Crear dataframe con todos los elementos de la lista
df = rbindlist(l = lista_df, use.names = T, fill = T)


#2. Familia apply
#se hace una tabla para las 10 variables mas frecuentes para cada variable del df
lapply(df, function(x) table(x) %>% sort(decreasing = T) %>% head(10)) 

#se usa la funcion skim que muestra las estadisticas principales de las variables
skim(df)
         
 #3. Lapply (20% nota)
   #3.1 Creamos la funcion y para que todas los elementos de un vector de caracteres queden escritos en minuscula
   y <- function (x){
        if is.character(lista_df[[i]] == T)
        x = x %>% tolower (.) %>% trims (.)
     }
        
   #3.2 Aplicamos esta funcion a df
   lapply(df, function(y) table (y))
         
  
  
