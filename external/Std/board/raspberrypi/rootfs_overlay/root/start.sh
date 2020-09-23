#!/bin/sh


i=0

while true
do
        mosquitto_pub -h localhost -t capteur -m "$(bme280)"
        sleep 1

        printf "%d: %s\n" $i "$(bme280)"
        i=$(($i + 1 )) 
done

