#include <macro.h>
/*
	File: fn_initMedic.sqf


	Description:
	Initializes the medic..
*/

// Checks
// - Blacklist
[player, playerSide, (call PLRP_Blacklist_Level)] remoteExec ["LS_fnc_BlacklistCheck", 2];
waitUntil {PLRP_BlacklistChecked};
// - Login
[] call LS_fnc_Login;
waitUntil {PLRP_LoggedIn};

// TFR Variables API
tf_no_auto_long_range_radio = true;

TF_terrain_interception_coefficient = 1;
player setVariable ["copLevel",1,true];

private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};



if((__GETC__(EMS_Rank)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	uiSleep 35;
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

if(life_karma > 999) then {
	karma_level = life_karma / 400;
	karma_level = floor (karma_level);
} else {
	karma_level = 0;
};

if(karma_level > 80) then {
	karma_level = 80;
};
[format["Your reputation level is %1",karma_level], false] spawn domsg;

[] call LS_fnc_Actions;

uiSleep 2;
["EMS FREQ: 33.1 / CO FREQ: 33.2 / SO FREQ: 33.3 to 33.9", false] spawn domsg;
