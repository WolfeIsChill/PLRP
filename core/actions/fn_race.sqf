//Los Diablos Taxi Service Spawn
private["_skiptotal","_markerstart","_startpos","_vehicle"];

if(life_is_arrested || (player getVariable ["restrained", false]) || (player getVariable ["tied", false])) exitwith {};

if( life_koil_race2 == 1 || life_koil_race == 1 || joinmode == 1 ) exitWith { ["You are already in a queue, please wait.", false] spawn domsg; };

if(cash_in_hand < 50) exitWith {
["You need 50 $ to enter", false] spawn domsg;	
};


if(life_action_inUse) exitWith { };	


if((racemachine getVariable "racefull")) exitWith {
	["This race is full, try the next one!", false] spawn domsg;
};	

if((player getVariable ["tied", false])) exitWith { };		
if((player getVariable ["restrained", false])) exitWith { };


_skiptotal = 0;
if(!(racemachine getVariable "start")) then {
		[1,format["LAKESIDE RACING: A Race will begin in 5 minutes at the lakeside race track.",player]] remoteExecCall ["life_fnc_broadcast", civilian];
	racemachine setVariable["start",true,true];
	racemachine setVariable["total",1,true];
	racemachine setVariable["racefull",false,true];
	_skiptotal = 1;
	[player] remoteExec ["TON_fnc_dorace",2];
};

uiSleep 1;
koildeb = racemachine getvariable "total";
if(koildeb == 8) exitWith {
	["The current race is full, try the next one!", false] spawn domsg;
};

if(_skiptotal == 0) then {
    koildeb = koildeb + 1;
    racemachine setVariable["total",koildeb,true];
};

["cash","take",50] call life_fnc_handleCash;

_startpos = getpos player;
life_koil_race = 1;

_className = "CG_Lamborghini_Aventador_White";

if(koildeb == 1) then {
	_markerstart = "start_race_1";
};
if(koildeb == 2) then {
	_markerstart = "start_race_2";
};
if(koildeb == 3) then {
	_markerstart = "start_race_3";
};
if(koildeb == 4) then {
	_markerstart = "start_race_4";
};
if(koildeb == 5) then {
	_markerstart = "start_race_5";
};
if(koildeb == 6) then {
	_markerstart = "start_race_6";
};
if(koildeb == 7) then {
	_markerstart = "start_race_7";
};
if(koildeb == 8) then {
	_markerstart = "start_race_8";
	racemachine setVariable["racefull",true,true];
};





_vehicle = createVehicle [_className, (getmarkerPos _markerstart), [], 0, "NONE"];
waitUntil {!isNil "_vehicle"};
_vehicle allowDamage false;
_vehicle lock 1;
_vehicle setVectorUp (surfaceNormal (getMarkerPos _markerstart));
_vehicle setDir (markerDir _markerstart);
_vehicle setPos (getmarkerPos _markerstart);
[_vehicle] call life_fnc_clearVehicleAmmo;
_vehicle disableTIEquipment true; 
uiSleep 1;
if(isNull objectParent player && !deadPlayer) then {
	player action ["getInDriver", _vehicle];	
};

if(koildeb == 1) then {
	rvehicle1 = _vehicle;
};
if(koildeb == 2) then {
	rvehicle2 = _vehicle;
};
if(koildeb == 3) then {
	rvehicle3 = _vehicle;
};
if(koildeb == 4) then {
	rvehicle4 = _vehicle;
};
if(koildeb == 5) then {
	rvehicle5 = _vehicle;
};
if(koildeb == 6) then {
	rvehicle6 = _vehicle;
};
if(koildeb == 7) then {
	rvehicle7 = _vehicle;
};
if(koildeb == 8) then {
	rvehicle8 = _vehicle;
};

["You can warm up while the race begins, do not leave the track... you will be teleported back here when its going to begin.", false] spawn domsg;

while{ !(racemachine getVariable "racing") } do {

	if((player distance (getmarkerpos "race_check_6")) > 850) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_1")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_2")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_3")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_4")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_5")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_6")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_7")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};

uiSleep 0.3;
};

if(isNull objectParent player && !deadPlayer) then {
	player action ["getInDriver", _vehicle];	
};
_racecheck = 1;
_laps = 0;
_timer = 1;
_vehicle setVelocity [0, 0, 0];
_vehicle setDir (markerDir _markerstart);
_vehicle setPos (getmarkerPos _markerstart);
[player,"start"] spawn life_fnc_nearestSound;

_vehicle setdamage 0;
_vehicle allowdamage false;


hint "3";
_num = 1;
while{_num > 0} do {
	uiSleep 0.05;
	_vehicle setVelocity [0, 0, 0];
	_vehicle setDir (markerDir _markerstart);
	_vehicle setPos (getmarkerPos _markerstart);
	_num = _num - 0.05;
};
hint "2";
_num = 1;
while{_num > 0} do {
	uiSleep 0.05;
	_vehicle setVelocity [0, 0, 0];
	_vehicle setDir (markerDir _markerstart);
	_vehicle setPos (getmarkerPos _markerstart);
	_num = _num - 0.05;
};
hint "1";
_num = 1;
while{_num > 0} do {
	uiSleep 0.05;
	_vehicle setVelocity [0, 0, 0];
	_vehicle setDir (markerDir _markerstart);
	_vehicle setPos (getmarkerPos _markerstart);
	_num = _num - 0.05;
};
hint "GO!";
_laptimes = 0;
_fastestlap = 9999;
while { (racemachine getVariable "racing") } do {
	uiSleep 0.05;
	_laptimes = _laptimes + 0.05;

	if((player distance (getmarkerpos "race_check_1")) < 15 && _racecheck == 1) then {
		[format["You hit checkpoint %1",_racecheck], false] spawn domsg;
		[player,"endbeep"] spawn life_fnc_nearestSound;
		_racecheck = 2;
	};

	if((player distance (getmarkerpos "race_check_2")) < 15 && _racecheck == 2) then {
		[format["You hit checkpoint %1",_racecheck], false] spawn domsg;
		[player,"endbeep"] spawn life_fnc_nearestSound;
		_racecheck = 3;
	};

	if((player distance (getmarkerpos "race_check_3")) < 15 && _racecheck == 3) then {
		[format["You hit checkpoint %1",_racecheck], false] spawn domsg;
		[player,"endbeep"] spawn life_fnc_nearestSound;
		_racecheck = 4;
	};

	if((player distance (getmarkerpos "race_check_4")) < 15 && _racecheck == 4) then {
		[format["You hit checkpoint %1",_racecheck], false] spawn domsg;
		[player,"endbeep"] spawn life_fnc_nearestSound;
		_racecheck = 5;
	};

	if((player distance (getmarkerpos "race_check_5")) < 15 && _racecheck == 5) then {
		[format["You hit checkpoint %1",_racecheck], false] spawn domsg;
		[player,"endbeep"] spawn life_fnc_nearestSound;
		_racecheck = 6;
	};

	if((player distance (getmarkerpos "race_check_6")) < 15 && _racecheck == 6) then {
		_racecheck = 1;
		["Lap Complete", false] spawn domsg;
		[player,"endbeep"] spawn life_fnc_nearestSound;
		_laps = _laps + 1;
		if(_laptimes < _fastestlap) then {
			_fastestlap = _laptimes;
			[format["New fastest lap set at %1",_fastestlap], false] spawn domsg;
		};
		_laptimes = 0;
	};

	if(_laps == 3) exitWith {
		if((racemachine getVariable "start")) then {
			[player] remoteExec ["TON_fnc_racefinish",2];
			["cash","add",1000] call life_fnc_handleCash;
		};
	};

	if((player distance (getmarkerpos "race_check_6")) > 850) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};

	if((player distance (getmarkerpos "stop_race_1")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_2")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_3")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_4")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_5")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_6")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};
	if((player distance (getmarkerpos "stop_race_7")) < 40) then {
		_vehicle setVelocity [0, 0, 0];
		_vehicle setDir (markerDir _markerstart);
		_vehicle setPos (getmarkerPos _markerstart);
	};

	if(isNull objectParent player && !deadPlayer) then {
		player allowdamage false;
		_vehicle setdamage 0;
		_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, (getPos _vehicle select 2)+0.2];
		uiSleep 3;
		["Your car has been fixed & flipped - you received a 3 second penalty.", false] spawn domsg;
		player action ["getInDriver", _vehicle];
		player allowdamage true;
	};

};
uiSleep 1;

if((player distance (getmarkerpos "race_check_6")) < 850 && !deadPlayer) then {

_vehicle setVelocity [0, 0, 0];
deleteVehicle _vehicle;
player setpos _startpos;
life_koil_race = 0;

uiSleep 1;
[0,format["%1 had a top lap of %2.",name player, _fastestlap]] remoteExecCall ["life_fnc_broadcast", -2];

	if(_laps > 0) then {
		["Your Race is over - you earned $1000.", false] spawn domsg;
		["cash","add",1000] call life_fnc_handleCash;
	} else {
		["You have been disqualified from the race and have won nothing.", false] spawn domsg;
	};
};