/*
	File: fn_initCiv.sqf


	Description:
	Initializes the civilian.
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

private["_spawnPos"];


if(side player == east) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	uiSleep 35;
};


if(life_karma > 999) then {
	karma_level = life_karma / 400;
	karma_level = floor (karma_level);
} else {
	karma_level = 0;
};

if(life_karma < 0) then {
	life_rebelbadguyman = true;
};

if(karma_level > 80) then {
	karma_level = 80;
};

if(life_is_arrested) then
{
	jail_money_init = false;
	[false,false,life_arrestMinutes,life_arrestReason] call life_fnc_jailSetup;
} else {
	jail_money_init = true;


	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};


if (isNil "TFAR_fnc_isTeamSpeakPluginEnabled") exitWith {
	titleText ["Task Force Radio is not running on your computer. Please re-sync and retry","BLACK"];
	player enableSimulation false;
	if (player getVariable "taskfr") then { player setVariable ["taskfr", false, true] };
	uiSleep 15;
	["TFR_NotInstalled", false, true] call BIS_fnc_endMission;
};

titleText ["Found TaskForceRadio!", "BLACK"];

if (!(call TFAR_fnc_isTeamSpeakPluginEnabled) && (call PLRP_Staff_Rank < 4)) then {
	_attempts = 0;
	while {!(call TFAR_fnc_isTeamSpeakPluginEnabled)} do {
		_exit = false;
		if (call TFAR_fnc_isTeamSpeakPluginEnabled) exitWith {};
		if (_attempts >= 5) exitWith {
			["TFR_NotEnabled", false, true] call BIS_fnc_endMission;
		};
		titleText ["Please enable Task Force Radio in your TS3 Plugins! || TS3 -> Tools -> Options -> Addons", "BLACK"];
		for "_i" from 0 to 60 do {
			if (call TFAR_fnc_isTeamSpeakPluginEnabled) exitWith { _exit = true };
			uiSleep 1;
			if (call TFAR_fnc_isTeamSpeakPluginEnabled) exitWith { _exit = true };
		};
		if (_exit) exitWith {};
		_attempts = _attempts + 1;
		if (player getVariable "taskfr") then { player setVariable ["taskfr", false, true] };
	};
};

titleText ["TaskForceRadio Enabled!", "BLACK"];

player setVariable ["taskfr", true, true];
titleText ["", "BLACK IN"];

[] call LS_fnc_Actions;

if(side player == civilian) then {
	[] spawn fnc_resetCallSpawn;
	[] call fnc_checkphone;
};

player setUnitRecoilCoefficient 2.8;
player addRating 9999999;
