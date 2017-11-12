/*
	File: fn_searchAction.sqf
	
	
	Description:
	Starts the searching process.
*/

params [["_unit", objNull, [objNull]]];
if(isNull _unit) exitWith { ["You appear to not be looking at anyone to search..", false] spawn domsg; };

remoteExec ["fnc_searched",_unit];