#Task-2 Taller de R

#Nombres: Joaquin Correa, Ricardo Rodriguez & Andres Molano - 201814276
#Elaborado: 18 de abril de 2021

#Taller A

#Eliminar objetos antiguos
rm(list=ls())

#Cargar y/o instalar paquetes
pacman::p_load(tidyverse,reshape2,readxl,data.table)

#1. Loops (40% nota)

list.files(path = "data/input/lista.rds")
df = list.files(path = "data/input/lista.rds")

lista_df = list()
lista_df

conteo = 1
for (i in df){
  lista_df[[conteo]] = readRDS(path = i)
  conteo = conteo + 1
}

cultivos = subset(cultivos, is.na(MUNICIPIO) == F)

#1.0 
lista_df <- readRDS("~/2021-1/Taller de R/task-2/data/input/lista.rds")