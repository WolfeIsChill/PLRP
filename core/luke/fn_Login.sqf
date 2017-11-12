/*
	File: fn_Login.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

if (!createDialog "UI_Login") exitWith { hint "Dialog Error! (UI_Login)" };

((findDisplay 420) displayCtrl 1100) ctrlSetText "Please Login";
ctrlSetText [1600, "Login"];
buttonSetAction [1600, "[ctrlText 1400] call LS_fnc_LoginCheck;"];
