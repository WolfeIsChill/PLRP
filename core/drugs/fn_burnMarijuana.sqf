_plant = nearestObject [player, "CUP_bolsevnik_group"];
deleteVehicle _plant;
["You burned the Marijuana Plant!", false] spawn domsg;
