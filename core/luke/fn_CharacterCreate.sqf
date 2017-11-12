/*
	File: fn_CharacterCreate.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

systemChat str PLRP_BankPin;
systemChat str PLRP_CharacterInfo;

[PLRP_CharacterInfo, getPlayerUID player] remoteExec ["LS_fnc_CharacterAdd", call life_fnc_HCC];

PLRP_FirstSpawn = false;
