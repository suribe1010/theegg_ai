#!/bin/bash

#get the database name
#read -p "Database name: " name

#get the database password with default
#read -p "Password [dbpass]: " pass
#pass=${pass:-dbpass}

#get the database creator with default
#read -p "Database creator [root]: " user
#user=${user:-root}

echo "TAREA DE BÚSQUEDA DE ALUMNO PROGRAMADA"

echo "La tabla completa es: "
sudo mysql -e "use Alumnos;select * from Alumno"


echo "Estamos buscando diariamente si se ha registrado un nuevo alumno con el nombre Sergio "
echo "Busqueda realizada el día: $(date)"
#execute sql commands without the user
sudo mysql -e "use Alumnos;select * from Alumno WHERE nombre='Sergio'"

