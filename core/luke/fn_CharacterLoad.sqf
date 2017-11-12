/*
	File: fn_CharacterLoad.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

params ["_uid", "_playerid", "_firstname", "_lastname", "_dob", "_bankpin", "_username", "_resetPassword"];

_bankpin = [_bankpin] call LS_fnc_StringToArray;
_bankpin = _bankpin joinString "";
_bankpin = [_bankpin] call LS_fnc_StringToArray;

_dob = [_dob] call LS_fnc_StringToArray;
_dob = _dob joinString "/";

PLRP_CharacterInfo = [_firstname, _lastname, _dob, _bankpin, _username];

if (_resetPassword == 1) then {
  ["A Senior Administrator has requested you to reset your password.", false] spawn domsg;
  if (!createDialog "UI_Login") exitWith { hint "Dialog Error!" };
  PLRP_CharacterInfo resize 4;
  buttonSetAction [1600, "PLRP_CharacterInfo set [count PLRP_CharacterInfo, ctrlText 1400]; closeDialog 0;"];
  waitUntil {isNull (findDisplay 420)};
  [PLRP_CharacterInfo, getPlayerUID player, true] remoteExec ["LS_fnc_CharacterAdd", call life_fnc_HCC];
  [] call LS_fnc_Login;
};

PLRP_FirstSpawn = false;
