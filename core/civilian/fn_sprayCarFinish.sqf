/*
Lakeside Spray Car Finish
SprayCarFinish.sqf
*/
_price = 1000;
if(side player != civilian && side player != east) exitwith {["Spray Guy: I don't paint Government Cars!", false] spawn domsg;};
if(vehicle player == player) exitwith { ["Spray Guy: You must be the driver of a vehicle!", false] spawn domsg; };
if(driver (vehicle player) != player) exitwith { ["Spray Guy: You must be the driver of a vehicle!", false] spawn domsg; };
if(cash_in_hand < _price) exitWith { ["Spray Guy: Not enough money, I need $1000!", false] spawn domsg; };	
_vehicle = vehicle player;

["Spray Guy: Okay, keep still while I spray your car!", false] spawn domsg;

_texture = _this select 1;
_startPos = getpos player;
_complete = false;
_remaining = 30;
[player,"spraypaint"] spawn life_fnc_nearestSound;
while{true} do {
	hint parsetext format["<img size='1' image='\OL_Textures\images\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/> Stay Still! Painting: %1 seconds.",_remaining];
	uisleep 1;
	_remaining = _remaining - 1;
	if(_remaining == 0) exitwith { _complete = true; };
	if(getpos player distance _startpos > 5) exitwith {};
	if( _remaining == 7 || _remaining == 18 ) then { [player,"spraypaint"] spawn life_fnc_nearestSound; };
	if(vehicle player == player) exitwith {};
};

hint "";

if(_complete) then {
	["cash","take",_price] call life_fnc_handleCash;
	_vehicle setObjectTextureGlobal [0,_texture];
	_vehicle setObjectTextureGlobal [1,_texture];
	_vehicle setObjectTextureGlobal [2,_texture];
	_vehicle setObjectTextureGlobal [3,_texture];
	_vehicle setObjectTextureGlobal [4,_texture];
	_vehicle setObjectTextureGlobal [5,_texture];
	hint parsetext format["<img size='1' image='\OL_Textures\images\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/>Spray Guy: Completed!",_remaining];
} else {
	hint parsetext format["<img size='1' image='\OL_Textures\images\info.paa'/> <t color='#FFCC00'><t size='0.75'>JOB:</t><br/>Spray Guy: Failed!",_remaining];	
};