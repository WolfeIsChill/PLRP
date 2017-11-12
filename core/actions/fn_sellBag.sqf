/*
	File: sell bag of cash.
*/

if (typeOf _x == "Land_Sleeping_bag_blue_folded_F") then {
detach _x;
deletevehicle _x;
if (side player == civilian || side player == east) then {
_money = 25000;
[format ["You swapped the stolen cash and received %1",_money],30,"green"] spawn domsg;
["Remove",500] call fnc_karma;
[7] call SOCK_fnc_updatePartial;
["cash","add",_money] call life_fnc_handleCash; 
};
_money = 12500;
if (side player == west) then {
[format ["You recovered a bag of cash and received %1",_money],30,"green"] spawn domsg;
["cash","add",_money] call life_fnc_handleCash; 
};		
};	

if (typeOf _x == "Land_Screwdriver_V1_F") then {
if (side player == west) then {
detach _x;
deletevehicle _x;
_money = 1000;
["cash","add",_money] call life_fnc_handleCash; 
[format ["You swapped the shank and received %1",_money],30,"green"] spawn domsg;
};		
};	


if (typeOf _x == "Land_ExtensionCord_F") then {
if (side player == west) then {
detach _x;
deletevehicle _x;
_money = 1000;
["cash","add",_money] call life_fnc_handleCash; 
[format ["You swapped the tie rope and received %1",_money],30,"green"] spawn domsg;
};		
};	

