/*
	File: fn_Login.sqf
  Author: Luke Shaw
  ©2017 Luke Shaw
*/

if (!createDialog "UI_CreateLogin") exitWith { hint "Dialog Error! (UI_CreateLogin)" };

((findDisplay 420) displayCtrl 1100) ctrlSetText "Please Login";
ctrlSetText [1600, "Login"];
buttonSetAction [1600, "[ctrlText 1400, ctrlText 1401] call LS_fnc_LoginCheck;"];
