/*
	fn_jailSetup.sqf
*/

_minutes = parseNumber life_arrestMinutes;
life_bail_amount = _minutes * 425;

_hours = floor (_minutes/60);
_minutes = _minutes % 60;

player setVariable ["restrained2", nil, true];
player setVariable ["restrained", nil, true];
player setVariable ["Escorting", nil, true];
player setVariable ["transporting", nil, true];

if(jail_money_init && _hours > 1) then {
	_lossMoney = _hours - 1;
	_lossTotal = cash_in_bank;
	_lossTotal = _lossTotal * 0.9;
	["You have been docked 10% of your funds for a 10 year sentence.", false] spawn domsg;
};

life_is_arrested = true;
player setVariable["life_is_arrested", true, true];
life_battery = 0;
removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);

if(life_bail_amount < 25500) then {
	_lowsecjaillocations = [
	[7141.84,3599.29,0.5],
	[7137.98,3600.27,0.5],
	[7145.03,3612.36,0.5],
	[7141.12,3613.32,0.5]
	];
	_randomer = floor random (count _lowsecjaillocations);
	_jailpos = _lowsecjaillocations select _randomer;
	player setPos _jailpos;
	["You have been sent to County Jail.", false] spawn domsg;
} else {
	_jaillocations = [
	[7129.6,3586.5,0.5],
	[7130.29,3589.26,0.5],
	[7130.45,3592.16,0.5],
	[7131.45,3594.93,0.5],
	[7131.87,3597.46,0.5],
	[7132.86,3600.21,0.5],
	[7133.66,3602.75,0.5],
	[7134.4,3605.56,0.5],
	[7135.18,3608.26,0.5],
	[7135.79,3611.05,0.5],
	[7136.5,3613.79,0.5],
	[7137.46,3616.44,0.5]
	];
	_randomer = floor random (count _jaillocations);
	_jailpos = _jaillocations select _randomer;
	player setPos _jailpos;
	[format["Your bail is set at: %1", life_bail_amount], false] spawn domsg;
};

uiSleep 2;
[player,"cellclose"] spawn life_fnc_nearestSound;

if((player distance (getMarkerPos "MARKER_JAIL")) > 40 && life_bail_amount > 12750) then
{
	player setPos (getMarkerPos "MARKER_JAIL");
};

("A3LJAILTIME" call BIS_fnc_rscLayer) cutRsc ["a3l_jail_timer","PLAIN"]; //show

_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#ffffff' align='center' size='0.9'>%1</t>",life_arrestReason];
((uiNamespace getVariable "a3ljailtimer") displayCtrl 1101) ctrlSetStructuredText _sexytext;

[0,_minutes,_hours,0] spawn life_fnc_jailTimer;
cutText ["","BLACK IN"];
if(life_firstSpawn) then {
	life_firstSpawn = false;
	(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
	(findDisplay 46) displayAddEventHandler ["MouseZchanged", "_this spawn life_fnc_enableActions"];
	[] execVM "core\init_survival.sqf";
	[] call life_fnc_hudSetup;
	player setVariable ["loaded", true, true];
};
