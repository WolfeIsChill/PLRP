#include <macro.h>
/*
	File: fn_initCop.sqf

	Description:
	Cop Initialization file.
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

player setVariable ["copLevel", 1, true];
player setVariable ["cop", 1, true]; // temp

private ["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;

if(__GETC__(PLRP_SD_Rank) == 0) then {
	["NotWhitelisted", false, true] call BIS_fnc_endMission;
	uiSleep 35;
};

if (__GETC__(PLRP_SD_Rank) > 4) then { LS_SD_Command = true };

if (life_is_arrested) then {
	jail_money_init = false;
	[false, false, life_arrestMinutes, life_arrestReason] call life_fnc_jailSetup;
} else {
	jail_money_init = true;
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};

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

player setUnitRecoilCoefficient 2.8;
uiSleep 2;
["EMS FREQ: 33.1 / CO FREQ: 33.2 / SO FREQ: 33.3 to 33.9", false] spawn domsg;

player unassignItem "tf_fadak_1";
player removeItem "tf_fadak_1";
player removeitem "tf_rf7800str";
player unassignItem "tf_rf7800str";
player removeitem "tf_anprc152";
player unassignItem "tf_anprc152";
player additem "tf_anprc152";
player assignitem "tf_anprc152";
