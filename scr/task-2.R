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
  
  #1.1 
  
  