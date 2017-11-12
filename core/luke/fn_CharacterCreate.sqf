/*
	File: fn_CharacterCreate.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

[PLRP_CharacterInfo, getPlayerUID player, false] remoteExec ["LS_fnc_CharacterAdd", call life_fnc_HCC];

PLRP_FirstSpawn = false;
