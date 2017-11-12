/*
	File: fn_postBail.sqf


	Description:
	Called when the player attempts to post bail.
	Needs to be revised.
*/
private["_unit"];
_unit = _this select 1;
_myposy = getPos _unit;
if(life_bail_paid) exitWith {};
if(isNil {life_bail_amount}) then {life_bail_amount = 1000000;};
if(!isNil "life_canpay_bail") exitWith {hint localize "STR_NOTF_Bail_Post"};
if(cash_in_bank < life_bail_amount) exitWith {[format[localize "STR_NOTF_Bail_NotEnough",life_bail_amount], false] spawn domsg;};

_nearestPlayer = nearestObjects[getPosATL _unit,["man"],6] select 1;

if(isNil "_nearestPlayer") exitwith {["You need a Police Officer standing next to you to pay bail.", false] spawn domsg;};

_timer = 60;
while {_timer > 0} do {
		hintsilent format ["%1 second until you are processed - do NOT move.",_timer];
		uiSleep 1;
		_timer = _timer - 1;
};

if( _unit distance _myposy > 3 ) exitwith {
	["You moved to far away.", false] spawn domsg;
};



if ( side _nearestPlayer == west ) then {
	["bank","take", life_bail_amount] call life_fnc_handleCash;
	player setPos (getMarkerPos "MARKER_JAIL_RELEASE");
	life_bail_paid = true;
	[0,format[localize "STR_NOTF_Bail_Bailed", _unit getVariable ["realname",name _unit]]] remoteExecCall ["life_fnc_broadcast", -2];
};
