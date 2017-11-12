#include <macro.h>
/*
	File: fn_wantedMenu.sqf


	Description:
	Opens the Wanted menu and connects to the APD.
*/
private["_display","_list","_name","_crimes","_bounty","_units"];
disableSerialization;

_display = findDisplay 2400;
_list 	 = _display displayCtrl 2401;
_units 	 = [];
lbClear _list;

ctrlSetText [2404, "Establishing connection..."];

if (__GETC__(PLRP_SD_Rank) < 3 && __GETC__(PLRP_Staff_Rank) == 0) then { ctrlShow [2405, false] };

[player] remoteExec ["life_fnc_wantedFetch", 2];
