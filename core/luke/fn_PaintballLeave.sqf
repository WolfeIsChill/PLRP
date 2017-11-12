/*
	File: fn_PaintballLeave.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

_playerTeam = player getVariable ["PLRP_PaintballTeam", ""];

if (_playerTeam == "") exitWith { systemChat "[Paintball Error] Could not leave team as player does not have a team." };

[player] remoteExec ["LS_fnc_PaintballRemoveUser", 2];
