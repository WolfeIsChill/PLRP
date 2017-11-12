/*
	File: fn_PaintballJoin.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

params ["_team"];

if (player getVariable ["PLRP_PaintballTeam", ""] != "") exitWith { [1, "Error, Could not register user as they are already in a team."] call LS_fnc_PaintballMessage };

[getPlayerUID player, profileName, player, _team] remoteExecCall ["LS_fnc_PaintballRegisterUser", 2];
