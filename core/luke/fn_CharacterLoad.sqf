/*
	File: fn_CharacterLoad.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

PLRP_CharacterInfo = [_this select 2, _this select 3, _this select 4, _this select 5, _this select 6, _this select 7, _this select 8];

if ((PLRP_CharacterInfo select 6) == 1) then {
  ["A Senior Administrator has requested you to reset your password.", false] spawn domsg;
  if (!createDialog "UI_CreateLogin") exitWith { hint "Dialog Error!" };
  PLRP_CharacterInfo resize 4;
  waitUntil {isNull (findDisplay 420)};
  [PLRP_CharacterInfo, getPlayerUID player] remoteExec ["LS_fnc_CharacterAdd", call life_fnc_HCC];
};

PLRP_FirstSpawn = false;
