#!/bin/bash

read -p "Directorio donde buscar: " DIRECTORIO

if ! [ -d "$DIRECTORIO" ]
then
   echo "El directorio ${DIRECTORIO} no existe"
fi

read -p "Directorio a donde mover: " A_DIRECTORIO

if ! [ -d "$A_DIRECTORIO" ]
then
   echo "El directorio ${A_DIRECTORIO} no existe"
fi



#mv ${DIRECTORIO}/prueba.txt ${A_DIRECTORIO}/HolaMundo.txt
find ${DIRECTORIO} -name "[0-9]*.txt" -exec mv -t ${A_DIRECTORIO} {} +
echo "Ficheros movidos a ${A_DIRECTORIO}" 
