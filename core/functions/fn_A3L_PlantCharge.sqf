if ((player distance prisondoor) < 10) then {

	private ["_copamount"];
	if ((side player) == west) exitwith {prisondoor animate ['maindoor1', 0]; prisondoor animate ['maindoor2', 0]; ["Prison enterence closed.",30,"red"] spawn domsg; };
	_copamount = 0; 
	{if (side _x == west) then {_copamount = _copamount + 1};} foreach playableUnits;
	if (_copamount < 5) exitwith {["There needs to be a minimum of 5 cops online!",30,"red"] spawn domsg;};

	if (prisondoor getVariable ["robbed", false]) exitwith {["A jailbreak took place already within the last 30 minutes.",30,"red"] spawn domsg;};
	if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {["You don't have a satchel charge.",30,"red"] spawn domsg;};
	["dbe", false] remoteExec ["fnc_dispatch",west];
	[] call fnc_placec4;

};