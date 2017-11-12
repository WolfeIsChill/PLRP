life_action_gathering = true;
_diff = ["cannabis",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {["Your inventory is full!", false] spawn domsg; life_action_gathering = false;};

_plant = nearestobject [player, "cup_bolsevnik_group"];
deletevehicle _plant;
["You Harvested Marijuana Plants", false] spawn domsg;

[true,"cannabis",5] call life_fnc_handleInv;
[true,"cannabis seed",2] call life_fnc_handleInv;
life_action_gathering = false;
