#!bin/bash

FLIGHT_SIM_LOCATION=/opt/flightsim/flightsim-linux-amd64

if [ -z "$INTERVAL" ]
then
	INTERVAL=300
fi


if [ -z "$SINGLERUN" ]
then
	while true
	do
		$FLIGHT_SIM_LOCATION run
		echo "-----------------------------------------------------"
		echo "Pausing for $INTERVAL seconds"
		echo "-----------------------------------------------------"
		sleep $INTERVAL
	done
else
	echo "----------- Single Run ----------------"
	$FLIGHT_SIM_LOCATION run
fi
