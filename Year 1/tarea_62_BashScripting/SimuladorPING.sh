#!/bin/bash

echo "Introduce la IP a rastrear: "
read IP

for value in {1..4}
do
ping -c8 ${IP} >/dev/null 2>/dev/null

respuesta1=$? #Guardamos estado de stderr

if [ $respuesta1 -eq 1 ];
then
        echo "SERVIDOR CAIDO. HORA: $(date)"
else
        echo "EXISTE COMUNICACIÓN CON IP $IP A LA HORA $(date) "
fi
done
~               
