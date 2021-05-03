#Elaborado por: Joaquin Correa (201730895), Andres Molano (201814276), Ricardo Rodriguez(201822271)
#Fecha: 29 de abril de 2021

#Taller A

#Eliminar objetos antiguos
rm(list=ls())

#Cargar y/o instalar paquetes
pacman::p_load(tidyverse,reshape2,readxl,data.table)

#1. Loops (40% nota)
  #1.0 
  lista_df <- readRDS("data/input/lista.rds")
  # Para observar los nombres de los diferentes data frames
  lapply(lista_df, function (x) colnames (x))
  names(lista_df)
         
  #1.1 Eliminar todos los NA y renombrar la primera fila de variables
  for (i in 1:lenght(lista_df)){
       lista_df[[i]] = lista_df[[i]] %>% subset(is.na(...2)==F)
       colnames(lista_df[[i]]) = lista_df[[i]][1,] %>% unlist() %>% as.character() %>% tolower() %>% chartr"áéíóú","aeiou",lista_df[[i]][1,]
       lista_df[[i]] = lista_df[[i]][-1,] %>% data.frame(stringsAsFactors = F)
    }
    
  #1.2 Agregar una variable que indica el tipo de delito
  for (i in 1:lenght(lista_df)){
       lista_df[[i]] = lista_df[[i]] %>% mutate(type_delito = names(lista_df[[i]]))
    }
                                  
  #1.3 Apilar los datos
  df = data.table::rbindlist(l = lista_df. use.names = T, fill = T)
         
 #2. Familia apply (30% nota)
   #2.1 Pintamos sobre la consola una tabla de frecuencia para cada variable
   lapply(df, function(x) table (x) %>% sort(decreasing = T) %>% head(10))
         
 #3. Familia apply (30% nota)
   #3.1 Creamos la funcion y para que todas los elementos de un vector de caracteres queden escritos en minuscula
   y <- function (x){
        if is.character(lista_df[[i]] == T)
        x = x %>% tolower (.) %>% trims 
        
          
   #3.2 Aplicamos esta funcion a df
   lapply(lista_df, function(y))
         
  
  
