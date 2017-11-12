/*
File: taxi payments
*/
if(life_taxi) exitWith {["You are already signed up as a taxi driver.", false] spawn domsg;};

if(has_job) exitwith { ["You already have a job! Press Shift + 4 to quit!", false] spawn domsg;};

has_job = true;

life_taxi = true;
["You get paid for picking up people in your crown vic taxi!.", false] spawn domsg;

_fkit = 45;
_payment = 0;

while{_fkit > 0 && life_taxi} do {
	uisleep 60;
	_fkit = _fkit - 1;

	if(vehicle player != player) then
		{
		if(driver (vehicle player) == player && typeOf (vehicle player) == "CG_Taxi") then {
			["bank","add", 250] call life_fnc_handleCash;
			["You just got paid an extra $250", false] spawn domsg; 
		};	
	};

	if(_fkit == 1) then {
		["Your taxi timer stops in 1 minute.", false] spawn domsg;
	};

};
life_taxi = false;
["Your taxi session has stopped!", false] spawn domsg;
["Go to the taxi stand to sign up again!", false] spawn domsg;
has_job = false;